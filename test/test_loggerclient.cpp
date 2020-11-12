/** @file
    @brief Test for the basic loggerclient.
    @author Amos Buchanan
    @version 1.0
    @date September 2020

# Description

This is an example for using a client for the zmq-based logger. You may subscribe to multiple loggers with this client. It will always listen for loggers on localhost.

# Usage

To use the client, run it from the command line. 
~~~
$ ./test_loggerclient [Port1 Port2 Port3 ...]
~~~

With no arguments, it will listen to `localhost:5555`, which is the default port for @ref ab_logger.h. If you add ports, it will adda logger client for each port. All log messages are printed to stdout.
    
@ref ab_logger.h
**/

#include <signal.h>
#include <stdio.h>

#define AB_LOGGERCLIENT_SRC
#define MEMORY_SRC
#include "ab_loggerclient.h"

#define TIME_HELPER_SRC
#include "ab_timehelper.h"

b8 isRunning = true;

void
sigint_handler(int code)
{
    isRunning = false;
    printf("Logger Client Shutdown.\n");
}

int
main(int argc, char *argv[])
{
    signal(SIGINT, sigint_handler);
    zsys_handler_set (NULL);
    
    void *OsMemory = mem_AllocateOsMemory(NULL, Kilobytes(5));
    memory_arena Memory = mem_InitMemory(OsMemory, Kilobytes(5));
    
    // Intentionally create an arena that is too small to test a logger client can't be created.
    memory_arena ConstrainedArena = mem_CreateSubArena(&Memory, 10);
    {
        lc_client *ConstrainedClient = lc_Initialize(&ConstrainedArena, 1);
        if(ConstrainedClient)
        {
            printf("Was able to create a constrained client with 1 endpoint.\n");
            lc_Shutdown(ConstrainedClient);
        }
        
        ConstrainedClient = lc_Initialize(&ConstrainedArena, 20);
        if(ConstrainedClient)
        {
            printf("Was able to create a constrained client with 20 endpoints.\n");
            lc_Shutdown(ConstrainedClient);
        }
    }
    
    lc_client *Client = lc_Initialize(&Memory, 5);
    if(!Client)
    {
        printf("Failed to create client.\n");
        return 1;
    }
    
    lc_SetFile(Client, "ClientTestLog.log");
    
    if(argc > 1)
    {
        for(int i = 1; i < argc; ++i)
        {
            const s32 MinPort = 5000;
            s32 Port = atoi(argv[i]);
            if(Port >= MinPort)
            {
                char Endpoint[100];
                char Name[100];
                snprintf(Endpoint, ArrayCount(Endpoint), "tcp://127.0.0.1:%d", Port);
                snprintf(Name, ArrayCount(Name), "Logger-%d", Port);
                s32 EndpointIndex = lc_AddEndpoint(Client, Name, Endpoint);
            }
            else 
            {
                printf("Unable to add port %d - Ports must be greater than %d.\n", Port, MinPort);
            }
            
        }
    }
    else 
    {
        s32 EndpointIndex = lc_AddEndpoint(Client, "Logger-5555", "tcp://127.0.0.1:5555");
    }
    
    const u32 SwitchTimeMs = 5000;
    th_time StartTime = th_GetMonotonic();
    
    b8 isQuiet = false;
    while(isRunning)
    {
        th_time Now = th_GetMonotonic();
        u32 ElapsedMs = th_GetElapsedMsU32(StartTime, Now);
        if(ElapsedMs > SwitchTimeMs)
        {
            StartTime = Now;
            isQuiet = !isQuiet;
            lc_SetQuiet(Client, isQuiet);
            printf("Setting Quiet to %d\n", isQuiet);
        }
        
        sleep(1);
    }
    
    lc_Shutdown(Client);
    
    return 0;
}

