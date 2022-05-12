/** @file
@brief Basic Logger Client
@author Amos Buchanan
@version 1.0
@date 2020

An example of how to subscribes to a logger created in @ref ab_logger.h. It also serves as a client that is usable on its own. This may subscribe to multiple loggers at different endpoints. By default it will print the log messages to stderr, but this is configurable. You can also set a filename to write all log messages.

The client runs in a background thread to constantly retrieve and print messages from any logger it is subscribed to.

This is a single-file-library. You may include the file anywhere in your source. Only once in your code, define the following:

~~~c
#define AB_LOGGERCLIENT_SRC
#include "ab_loggerclient.h"
~~~

This will include the source.

example usage:
~~~c
void *OsMemory = mem_AllocateOsMemory(NULL, Kilobytes(5));
memory_arena Memory = mem_InitMemory(OsMemory, Kilobytes(5));

// This starts the client running in the background.
lc_client *Client = lc_Initialize(&Memory);
if(!Client)
{
  printf("Failed to create client.\n");
  return 1;
}

lc_SetFile(Client, "ClientTestLog.log");
// Turn off stderr logging.
lc_SetQuiet(Client, true);

s32 EndpointIndexA = lc_AddEndpoint(Client, "LoggerA", "tcp://127.0.0.1:5555");
s32 EndpointIndexB = lc_AddEndpoint(Client, "LoggerB", "tcp://127.0.0.1:5556");

sleep(10);
// Print log files to stderr.
lc_SetQuiet(Client, false);
sleep(10);

lc_Shutdown(Client);
~~~

# References

- @ref test_loggerclient.cpp
 - @ref ab_logger.h
 - [zmq Messaging](https://zeromq.org/)
 - [czmq C Library for ZMQ messaging](http://czmq.zeromq.org/)

**/

#ifndef AB_LOGGERCLIENT_H
#define AB_LOGGERCLIENT_H

#include "ab_common.h"
#include "ab_memory.h"
#include "czmq.h"

struct lc_client;

struct lc_message
{
    char *LogLevel;
    u64 Timestamp;
    char *File;
    char *Message;
};

typedef void (*log_function)(lc_message *Message, char *EndpointLabel, b8 isPause, b8 isQuiet, FILE *FilePointer);

/** @brief Initialize a new client.

This initializes and starts a client thread. The client recieves messages from all the specified end-points and prints them. The client starts immediately, even if there are no endpoints. 

The client can remove and add endpoints through its running. However, there can only be `MaxEndpoints` number of endpoints running at any given time. 

@param Memory The memory from which the client can allocate.
@param MaxEndpoints The maximum number of endpoints the client will be attached to. There will always be a minimum of one endpoint created.
@return Returns the logger client, or null pointer if there isn't enough memory to create the desired number of endpoints.

**/
lc_client *
lc_Initialize(memory_arena *Memory, u32 MaxEndpoints);

/** @brief Adds a new endpoint to the client.

This will add a new endpoint for the client to watch. Endpoint is a zmq-formated URI, such as "tcp://127.0.0.1:5555". 

@param Client The logger client.
@param Label A label that can be used to differentiate this endpoint from other endpoints.
@param Endpoint zmq URI endpoint to watch.
@return The endpoint index, or '-1' if the endpoint couldn't be added.
**/
s32
lc_AddEndpoint(lc_client *Client, char const *Label, char const *Endpoint);

/** @brief Not currently implemented. **/
void
lc_RemoveEndpoint(lc_client *Client, char const *Label);

/** @brief Not currently implemented. **/
void
lc_RemoveEndpoint(lc_client *Client, u32 Index);

/** @brief set output file.

If set, log messages are appended to the given file. Only one file may be written to at a time. If a new file is specified, the old file is closed.

@param Client The logger client.
@param Filename The filename to append to.
**/
void
lc_SetFile(lc_client *Client, char const *Filename);

/** @brief Closes the output file.

If there is an output file, closes it and stops writing out data to it.

@param Client The logger client.
**/
void
lc_ClearFile(lc_client *Client);

/** @brief Set to discontinue output to stderr.

By default, the logs will print to stderr. Set quiet to true to suppress output to stderr. If there is a log file, messages will still be written out.

@param Client The logger client.
@param doQuiet True to suppress output.
**/
void
lc_SetQuiet(lc_client *Client, b8 doQuiet);

/** @brief Stop all incomming log messages.

Set pause to discontinue recording all incoming messages. This will suppress both stderr and log file output.

@param Client The logger client.
@param doPause True to pause all data from being recorded.
**/
void
lc_SetPause(lc_client *Client, b8 doPause);

/** @brief Shutdown the client.

Shutdown the client, all endpoints, and close background threads. Call this at the end of the program.

@param Client The logger client.
**/
void
lc_Shutdown(lc_client *Client);

/** @private **/
void
lc_BasicLogger(lc_message *Message, char *EndpointLabel, b8 isPause, b8 isQuiet, FILE *FilePointer);

#endif //AB_LOGGERCLIENT_H

#ifdef AB_LOGGERCLIENT_SRC
struct lc_endpoint
{
    zsock_t *Socket;
    u32 Index;
    char *Name;
    
    lc_endpoint *Next;
};

struct lc_client
{
    zactor_t *Actor;
};

struct lc_thread
{
    zpoller_t *Poller;
    b8 isQuiet;
    b8 isPause;
    FILE *FilePointer;
    log_function LogFunction;
    
    memory_arena EndpointMemory;
    lc_endpoint *EndpointList;
    lc_endpoint *DeadEndpointList;
    u32 LastIndex;
    u32 NumEndpoints;
    u32 MaxEndpoints;
};

void
lc_RemoveEndpoint(lc_thread *Thread, u32 Index)
{
    lc_endpoint *Previous = 0;
    lc_endpoint *Current = Thread->EndpointList;
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
} // lc_RemoveEndpoint

void
lc_PrintMessage(lc_thread *Thread, zsock_t *Socket, zmsg_t *LogMsg)
{
    lc_endpoint *Current = Thread->EndpointList;
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
        lc_message Message = {};
        Message.LogLevel = zmsg_popstr(LogMsg);
        zframe_t *EpochFrame = zmsg_pop(LogMsg);
        if(zframe_size(EpochFrame) == sizeof(u64))
        {
            Message.Timestamp = *((u64*)zframe_data(EpochFrame));
        }
        zframe_destroy(&EpochFrame);
        Message.File = zmsg_popstr(LogMsg);
        Message.Message = zmsg_popstr(LogMsg);
        
        Thread->LogFunction(&Message, Name, Thread->isPause, Thread->isQuiet, Thread->FilePointer);
        
        free(Message.LogLevel);
        free(Message.File);
        free(Message.Message);
    }
    else
    {
        printf("CLIENT ERROR --- Recieved message from unknown socket.");
    }
} // lc_PrintMessage

void 
lc_BasicLogger(lc_message *Message, char *EndpointLabel, b8 isPause, b8 isQuiet, FILE *FilePointer)
{
    if(!isPause)
    {
        time_t EpochTime = (time_t)Message->Timestamp;
        tm *lt = gmtime(&EpochTime);
        char TimeBuffer[50];
        TimeBuffer[strftime(TimeBuffer, sizeof(TimeBuffer), "%Y-%m-%d %H:%M:%S", lt)] = '\0';
        
        if(!isQuiet)
        {
            fprintf(stderr, "%s %-5s %s:%s - %s\n", TimeBuffer, Message->LogLevel, EndpointLabel, Message->File, Message->Message);
        }
        
        if(FilePointer)
        {
            fprintf(FilePointer, "%s %-5s %s:%s - %s\n", TimeBuffer, Message->LogLevel, EndpointLabel, Message->File, Message->Message);
        }
    }
}

void
lc_ActorThread(zsock_t *Pipe, void *Args)
{
    lc_thread *Data = (lc_thread*)Args;
    
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
                            lc_endpoint *NewEndpoint;
                            if(Data->DeadEndpointList)
                            {
                                NewEndpoint = Data->DeadEndpointList;
                                Data->DeadEndpointList = NewEndpoint->Next;
                            }
                            else
                            {
                                NewEndpoint = mem_PushStruct(&Data->EndpointMemory, lc_endpoint);
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
                    if(Data->FilePointer)
                    {
                        fclose(Data->FilePointer);
                        Data->FilePointer = 0;
                    }
                    char *Filename = zmsg_popstr(Msg);
                    Data->FilePointer = fopen(Filename, "a");
                    free(Filename);
                }
                else if(streq(Command, "ClearFile"))
                {
                    printf("ClearFile\n");
                    if(Data->FilePointer)
                    {
                        fclose(Data->FilePointer);
                        Data->FilePointer = 0;
                    }
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
            lc_PrintMessage(Data, Socket, Msg);
            zmsg_destroy(&Msg);
        }
        
    }
    
    while(Data->EndpointList)
    {
        lc_RemoveEndpoint(Data, Data->EndpointList->Index);
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
} // lc_ActorThread

lc_client *
lc_Initialize(memory_arena *Memory, u32 MaxEndpoints)
{
    lc_client *Client = 0;
    if(MaxEndpoints < 1)
    {
        MaxEndpoints = 1;
    }
    
    size_t BufferSize = sizeof(lc_endpoint)*MaxEndpoints;
    size_t TotalSizeNeeded = BufferSize + sizeof(lc_client) + sizeof(lc_thread);
    
    if(mem_GetMemoryLeft(Memory) >= TotalSizeNeeded)
    {
        Client = mem_PushStruct(Memory, lc_client);
        lc_thread *Thread = mem_PushStruct(Memory, lc_thread);
        
        memory_arena EndpointMemory = mem_CreateSubArena(Memory, BufferSize);
        Thread->EndpointMemory = EndpointMemory;
        Thread->MaxEndpoints = MaxEndpoints;
        Thread->LogFunction = lc_BasicLogger;
        
        zactor_t *Actor = zactor_new(lc_ActorThread, Thread);
        if(Actor)
        {
            Client->Actor = Actor;
        }
    }
    
    return Client;
} // lc_Initialize

s32
lc_AddEndpoint(lc_client *Client, char const *Label, char const *Endpoint)
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
} // lc_AddEndpoint

void
lc_RemoveEndpoint(lc_client *Client, char const *Label)
{
    zmsg_t *Msg = zmsg_new();
    zmsg_addstr(Msg, "RemoveEndpointLabel");
    zmsg_addstr(Msg, Label);
    zmsg_send(&Msg, Client->Actor);
}

void
lc_RemoveEndpoint(lc_client *Client, u32 Index)
{
    zmsg_t *Msg = zmsg_new();
    zmsg_addstr(Msg, "RemoveEndpointIndex");
    zmsg_addmem(Msg, &Index, sizeof(u32));
    zmsg_send(&Msg, Client->Actor);
}

void
lc_SetFile(lc_client *Client, char const *Filename)
{
    zmsg_t *Msg = zmsg_new();
    zmsg_addstr(Msg, "SetFile");
    zmsg_addstr(Msg, Filename);
    zmsg_send(&Msg, Client->Actor);
}

void
lc_ClearFile(lc_client *Client)
{
    zmsg_t *Msg = zmsg_new();
    zmsg_addstr(Msg, "ClearFile");
    zmsg_send(&Msg, Client->Actor);
}

void
lc_SetQuiet(lc_client *Client, b8 doQuiet)
{
    zmsg_t *Msg = zmsg_new();
    zmsg_addstr(Msg, "SetQuiet");
    zmsg_addmem(Msg, &doQuiet, sizeof(b8));
    zmsg_send(&Msg, Client->Actor);
}

void
lc_SetPause(lc_client *Client, b8 doPause)
{
    zmsg_t *Msg = zmsg_new();
    zmsg_addstr(Msg, "SetPause");
    zmsg_addmem(Msg, &doPause, sizeof(b8));
    zmsg_send(&Msg, Client->Actor);
}


void
lc_Shutdown(lc_client *Client)
{
    zstr_send(Client->Actor, "Shutdown");
    zsock_wait(Client->Actor);
    
    zactor_destroy(&Client->Actor);
    Client->Actor = 0;
}



#undef AB_LOGGERCLIENT_SRC
#endif
