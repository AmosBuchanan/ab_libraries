/** @file
@brief Basic Logger Client
@author Amos Buchanan
@version 1.0
@date 2020
@copyright [MIT Public License](https://opensource.org/licenses/MIT)

An example of how to subscribes to a logger created in @ref `ab_logger.h`. It also serves as a client that is usable on its own. This may subscribe to multiple loggers at different endpoints. By default it will print the log messages to stderr, but this is configurable. You can also set a filename to write all log messages.

The client runs in a background thread to constantly retrieve and print messages from any logger it is subscribed to.

This is a single-file-library. You may include the file anywhere in your source. Only once in your code, define the following:

~~~c
#define AB_LOGGERCLIENT_SRC
#include "ab_loggerclient.h"
~~~

This will include the source.

example usage:
~~~c
void *OsMemory = abm_AllocateOsMemory(NULL, Kilobytes(5));
memory_arena Memory = abm_InitMemory(OsMemory, Kilobytes(5));

// This starts the client running in the background.
ablc_client *Client = ablc_Initialize(&Memory);
if(!Client)
{
  printf("Failed to create client.\n");
  return 1;
}

ablc_SetFile(Client, "ClientTestLog.log");
// Turn off stderr logging.
ablc_SetQuiet(Client, true);

s32 EndpointIndexA = ablc_AddEndpoint(Client, "LoggerA", "tcp://127.0.0.1:5555");
s32 EndpointIndexB = ablc_AddEndpoint(Client, "LoggerB", "tcp://127.0.0.1:5556");

sleep(10);
// Print log files to stderr.
ablc_SetQuiet(Client, false);
sleep(10);

ablc_Shutdown(Client);
~~~

# References

 - @ref ab_logger.h
 - [zmq Messaging](https://zeromq.org/)
 - [czmq C Library for ZMQ messaging](http://czmq.zeromq.org/)

# MIT License

[MIT Public License](https://opensource.org/licenses/MIT)

Copyright 2020 Amos Buchanan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
**/

#ifndef AB_LOGGERCLIENT_H
#define AB_LOGGERCLIENT_H

#include "ab_common.h"
#include "ab_memory.h"
#include "czmq.h"

struct ablc_client;

struct ablc_message
{
    char *LogLevel;
    u64 Timestamp;
    char *File;
    char *Message;
};

typedef void (*log_function)(ablc_message);

/** @brief Initialize a new client.

This initializes and starts a client thread. The client recieves messages from all the specified end-points and prints them. The client starts immediately, even if there are no endpoints. 

The client can remove and add endpoints through its running. However, there can only be `MaxEndpoints` number of endpoints running at any given time. 

@param Memory The memory from which the client can allocate.
@param MaxEndpoints The maximum number of endpoints the client will be attached to. There will always be a minimum of one endpoint created.

**/
ablc_client *
ablc_Initialize(memory_arena *Memory, u32 MaxEndpoints);

s32
ablc_AddEndpoint(ablc_client *Client, char const *Label, char const *Endpoint);

void
ablc_RemoveEndpoint(ablc_client *Client, char const *Label);

void
ablc_RemoveEndpoint(ablc_client *Client, u32 Index);

void
ablc_SetFile(ablc_client *Client, char const *Filename);

void
ablc_ClearFile(ablc_client *Client);

void
ablc_SetQuiet(ablc_client *Client, b8 doQuiet);

void
ablc_SetPause(ablc_client *Client, b8 doPause);

void
ablc_Shutdown(ablc_client *Client);

void
ablc_BasicLogger(ablc_message);

#endif //AB_LOGGERCLIENT_H

#ifdef AB_LOGGERCLIENT_SRC
struct ablc_endpoint
{
    zsock_t *Socket;
    u32 Index;
    char *Name;
    
    ablc_endpoint *Next;
};

struct ablc_client
{
    zactor_t *Actor;
};

struct ablc_thread
{
    zpoller_t *Poller;
    b8 isQuiet;
    b8 isPause;
    FILE *FilePointer;
    
    memory_arena EndpointMemory;
    ablc_endpoint *EndpointList;
    ablc_endpoint *DeadEndpointList;
    u32 LastIndex;
    u32 NumEndpoints;
    u32 MaxEndpoints;
};

void
ablc_RemoveEndpoint(ablc_thread *Thread, u32 Index)
{
    ablc_endpoint *Previous = 0;
    ablc_endpoint *Current = Thread->EndpointList;
    while(Current)
    {
        if(Current->Index == Index)
        {
            if(Previous)
            {
                Previous->Next = Current->Next;
            }
            else
            {
                Thread->EndpointList = Current->Next;
            }
            printf("Removing Endpoint %s.\n", Current->Name);
            free(Current->Name);
            zsock_destroy(&Current->Socket);
            Current->Socket = 0;
            Current->Next = Thread->DeadEndpointList;
            Thread->DeadEndpointList = Current;
            
            break;
        }
        else
        {
            Previous = Current;
            Current = Current->Next;
        }
    }
} // ablc_RemoveEndpoint

void
ablc_PrintMessage(ablc_thread *Thread, zsock_t *Socket, zmsg_t *LogMsg)
{
    ablc_endpoint *Current = Thread->EndpointList;
    char *Name = 0;
    while(Current)
    {
        if(Socket == Current->Socket)
        {
            Name = Current->Name;
            break;
        }
        Current = Current->Next;
    }
    if(Name)
    {
        char *Level = zmsg_popstr(LogMsg);
        zframe_t *EpochFrame = zmsg_pop(LogMsg);
        u64 Epoch = 0;
        if(zframe_size(EpochFrame) == sizeof(u64))
        {
            Epoch = *((u64*)zframe_data(EpochFrame));
        }
        zframe_destroy(&EpochFrame);
        char *File = zmsg_popstr(LogMsg);
        char *Message = zmsg_popstr(LogMsg);
        if(!Thread->isPause)
        {
            time_t EpochTime = (time_t)Epoch;
            tm *lt = gmtime(&EpochTime);
            char TimeBuffer[50];
            TimeBuffer[strftime(TimeBuffer, sizeof(TimeBuffer), "%Y-%m-%d %H:%M:%S", lt)] = '\0';
            
            if(!Thread->isQuiet)
            {
                fprintf(stderr, "%s %-5s %s:%s - %s\n", TimeBuffer, Level, Name, File, Message);
            }
            
            if(Thread->FilePointer)
            {
                fprintf(Thread->FilePointer, "%s %-5s %s:%s - %s\n", TimeBuffer, Level, Name, File, Message);
            }
        }
    }
    else
    {
        printf("CLIENT ERROR --- Recieved message from unknown socket.");
    }
} // ablc_PrintMessage

void
ablc_ActorThread(zsock_t *Pipe, void *Args)
{
    ablc_thread *Data = (ablc_thread*)Args;
    
    Data->FilePointer = 0;
    
    Data->Poller = zpoller_new(Pipe, NULL);
    zpoller_set_nonstop(Data->Poller, true);
    
    zsock_signal(Pipe,0);
    b8 isRunning = true;
    while(isRunning)
    {
        zsock_t *Socket = (zsock_t*)zpoller_wait(Data->Poller, -1);
        if(Socket && Socket == Pipe)
        {
            zmsg_t *Msg = zmsg_recv(Pipe);
            if(Msg)
            {
                char *Command = zmsg_popstr(Msg);
                if(streq(Command, "$TERM"))
                {
                    printf("Term Shutdown.\n");
                    isRunning = false;
                }
                else if(streq(Command, "Shutdown"))
                {
                    printf("Shutdown\n");
                    isRunning = false;
                }
                else if(streq(Command, "AddEndpoint"))
                {
                    s32 Index = -1;
                    
                    if(Data->NumEndpoints < Data->MaxEndpoints)
                    {
                        char *Name = zmsg_popstr(Msg);
                        char *Endpoint = zmsg_popstr(Msg);
                        
                        printf("Add Endpoint: %s.\n", Endpoint);
                        zsock_t *NewSocket = zsock_new_sub(Endpoint, "");
                        if(NewSocket)
                        {
                            ablc_endpoint *NewEndpoint;
                            if(Data->DeadEndpointList)
                            {
                                NewEndpoint = Data->DeadEndpointList;
                                Data->DeadEndpointList = NewEndpoint->Next;
                            }
                            else
                            {
                                NewEndpoint = abm_PushStruct(&Data->EndpointMemory, ablc_endpoint);
                            }
                            
                            NewEndpoint->Name = Name;
                            NewEndpoint->Index = Data->LastIndex++;
                            NewEndpoint->Socket = NewSocket;
                            
                            if(zpoller_add(Data->Poller, NewSocket) == 0)
                            {
                                printf("Adding Endpoint Successfully.\n");
                                Index = NewEndpoint->Index;
                                NewEndpoint->Next = Data->EndpointList;
                                Data->EndpointList = NewEndpoint;
                                ++Data->NumEndpoints;
                            }
                            else
                            {
                                printf("Failed to add endpoint.\n");
                                NewEndpoint->Next = Data->DeadEndpointList;
                                Data->DeadEndpointList = NewEndpoint;
                                zsock_destroy(&NewSocket);
                                
                                free(Name);
                            }
                            
                        }
                        free(Endpoint);
                    }
                    else 
                    {
                        printf("Too many endpoints created. Currently have %d/%d Endpoints.", Data->NumEndpoints, Data->MaxEndpoints);
                    }
                    zmsg_t *Msg = zmsg_new();
                    zmsg_pushmem(Msg, &Index, sizeof(s32));
                    zmsg_send(&Msg, Pipe);
                    
                    
                }
                else if(streq(Command, "SetPause"))
                {
                    printf("Set Pause\n");
                    zframe_t *Frame = zmsg_pop(Msg);
                    Data->isPause = *((b8*)zframe_data(Frame));
                    zframe_destroy(&Frame);
                }
                else if(streq(Command, "SetFile"))
                {
                    printf("Set File\n");
                    char *Filename = zmsg_popstr(Msg);
                    Data->FilePointer = fopen(Filename, "a");
                    free(Filename);
                }
                else if(streq(Command, "SetQuiet"))
                {
                    printf("Set Quiet\n");
                    zframe_t *Frame = zmsg_pop(Msg);
                    Data->isQuiet = *((b8*)zframe_data(Frame));
                    zframe_destroy(&Frame);
                }
                else
                {
                    printf("Command Not Found: %s\n", Command);
                }
                
                free(Command);
                zmsg_destroy(&Msg);
            }
        }
        else if(Socket) // Any logger.
        {
            zmsg_t *Msg = zmsg_recv(Socket);
            ablc_PrintMessage(Data, Socket, Msg);
            zmsg_destroy(&Msg);
        }
        
    }
    
    while(Data->EndpointList)
    {
        ablc_RemoveEndpoint(Data, Data->EndpointList->Index);
    }
    
    if(Data->FilePointer)
    {
        fflush(Data->FilePointer);
        fclose(Data->FilePointer);
        Data->FilePointer = 0;
    }
    
    // TODO(amos): Disconnect from all loggers
    zpoller_destroy(&Data->Poller);
    zsock_signal(Pipe, 0);
} // ablc_ActorThread

ablc_client *
ablc_Initialize(memory_arena *Memory, u32 MaxEndpoints)
{
    if(MaxEndpoints < 1)
    {
        MaxEndpoints = 1;
    }
    ablc_client *Client = abm_PushStruct(Memory, ablc_client);
    ablc_thread *Thread = abm_PushStruct(Memory, ablc_thread);
    
    size_t BufferSize = sizeof(ablc_endpoint)*MaxEndpoints;
    memory_arena EndpointMemory = abm_CreateSubArena(Memory, BufferSize);
    Thread->EndpointMemory = EndpointMemory;
    Thread->MaxEndpoints = MaxEndpoints;
    
    zactor_t *Actor = zactor_new(ablc_ActorThread, Thread);
    if(Actor)
    {
        Client->Actor = Actor;
    }
    
    return Client;
} // ablc_Initialize

s32
ablc_AddEndpoint(ablc_client *Client, char const *Label, char const *Endpoint)
{
    s32 Result = -1;
    zmsg_t *Msg = zmsg_new();
    zmsg_addstr(Msg, "AddEndpoint");
    zmsg_addstr(Msg, Label);
    zmsg_addstr(Msg, Endpoint);
    zmsg_send(&Msg, Client->Actor);
    
    zmsg_t *Response = zmsg_recv(Client->Actor);
    if(Response)
    {
        zframe_t *Frame = zmsg_pop(Response);
        Result = *((s32*)zframe_data(Frame));
    }
    
    return Result;
} // ablc_AddEndpoint

void
ablc_RemoveEndpoint(ablc_client *Client, char const *Label)
{
    zmsg_t *Msg = zmsg_new();
    zmsg_addstr(Msg, "RemoveEndpointLabel");
    zmsg_addstr(Msg, Label);
    zmsg_send(&Msg, Client->Actor);
}

void
ablc_RemoveEndpoint(ablc_client *Client, u32 Index)
{
    zmsg_t *Msg = zmsg_new();
    zmsg_addstr(Msg, "RemoveEndpointIndex");
    zmsg_addmem(Msg, &Index, sizeof(u32));
    zmsg_send(&Msg, Client->Actor);
}

void
ablc_SetFile(ablc_client *Client, char const *Filename)
{
    zmsg_t *Msg = zmsg_new();
    zmsg_addstr(Msg, "SetFile");
    zmsg_addstr(Msg, Filename);
    zmsg_send(&Msg, Client->Actor);
}

void
ablc_ClearFile(ablc_client *Client)
{
    zmsg_t *Msg = zmsg_new();
    zmsg_addstr(Msg, "ClearFile");
    zmsg_send(&Msg, Client->Actor);
}

void
ablc_SetQuiet(ablc_client *Client, b8 doQuiet)
{
    zmsg_t *Msg = zmsg_new();
    zmsg_addstr(Msg, "SetQuiet");
    zmsg_addmem(Msg, &doQuiet, sizeof(b8));
    zmsg_send(&Msg, Client->Actor);
}

void
ablc_SetPause(ablc_client *Client, b8 doPause)
{
    zmsg_t *Msg = zmsg_new();
    zmsg_addstr(Msg, "SetPause");
    zmsg_addmem(Msg, &doPause, sizeof(b8));
    zmsg_send(&Msg, Client->Actor);
}


void
ablc_Shutdown(ablc_client *Client)
{
    zstr_send(Client->Actor, "Shutdown");
    zsock_wait(Client->Actor);
    
    zactor_destroy(&Client->Actor);
    Client->Actor = 0;
}



#undef AB_LOGGERCLIENT_SRC
#endif
