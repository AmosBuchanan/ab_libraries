/** @file
    @brief Test for the basic loggerclient.
    @author Amos Buchanan
    @version 1.0
    @date September 2020
    @copyright MIT Public License.

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
    
    ablc_client *Client = ablc_Initialize(&Memory, 5);
    if(!Client)
    {
        printf("Failed to create client.\n");
        return 1;
    }
    
    ablc_SetFile(Client, "ClientTestLog.log");
    
    if(argc > 1)
    {
        for(int i = 1; i < argc; ++i)
        {
            s32 Port = atoi(argv[i]);
            if(Port > 5000)
            {
                char Endpoint[100];
                char Name[100];
                snprintf(Endpoint, ArrayCount(Endpoint), "tcp://127.0.0.1:%d", Port);
                snprintf(Name, ArrayCount(Name), "Logger-%d", Port);
                s32 EndpointIndex = ablc_AddEndpoint(Client, Name, Endpoint);
            }
            
        }
    }
    else 
    {
        s32 EndpointIndex = ablc_AddEndpoint(Client, "LoggerA", "tcp://127.0.0.1:5555");
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
            ablc_SetQuiet(Client, isQuiet);
            printf("Setting Quiet to %d\n", isQuiet);
        }
        
        sleep(1);
    }
    
    ablc_Shutdown(Client);
    
    return 0;
}

