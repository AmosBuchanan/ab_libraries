/** @file
    @brief DESCRIPTION
    @author Amos Buchanan
    @version 1.0
    @date September 2020
    @copyright MIT Public License.

**/

#include <signal.h>
#include <stdio.h>

#define MEMORY_SRC
#include "ab_memory.h"

#define AB_LOGGER_SRC
#include "ab_logger.h"

b8 isRunning = true;
void
sigint_handler(int code)
{
    isRunning = false;
    printf("Shutting Down Logger Test.\n");
}


int
main(int argc, char *argv[])
{
    signal(SIGINT, sigint_handler);
    zsys_handler_set (NULL);
    
    void *OsMemory = mem_AllocateOsMemory(NULL, Kilobytes(5));
    if(!OsMemory)
    {
        printf("Failed to get memory.");
        return 1;
    }
    
    memory_arena Memory = mem_InitMemory(OsMemory, Kilobytes(5));
    
    s32 Port = 5555;
    if(argc > 1)
    {
        s32 CustomPort = atoi(argv[1]);
        if(CustomPort > 5000)
        {
            Port = CustomPort;
        }
    }
    
    abl_log *Logger = abl_InitializeLogger(&Memory, Port, ABL_TRACE);
    if(!Logger)
    {
        printf("Failed to create logger.\n");
        return 1;
    }
    else
    {
        printf("Created logger on port %d.\n", Port);
    }
    
    while(isRunning)
    {
        sleep(2);
        
        abl_SetLevel(Logger, ABL_TRACE);
        abl_trace(Logger, "Trace Log.");
        abl_debug(Logger, "Debug Log.");
        abl_info(Logger, "Info Log");
        abl_warn(Logger, "Warn Log");
        abl_error(Logger, "Error Log");
        abl_fatal(Logger, "Fatal Log");
        
        abl_SetPause(Logger, true);
        abl_trace(Logger, "Paused Trace Log.");
        abl_debug(Logger, "Paused Debug Log.");
        abl_info(Logger, "Paused Info Log");
        abl_warn(Logger, "Paused Warn Log");
        abl_error(Logger, "Paused Error Log");
        abl_fatal(Logger, "Paused Fatal Log");
        
        abl_SetPause(Logger, false);
        abl_trace(Logger, "Unpaused Trace Log.");
        abl_debug(Logger, "Unpaused Debug Log.");
        abl_info(Logger, "Unpaused Info Log");
        abl_warn(Logger, "Unpaused Warn Log");
        abl_error(Logger, "Unpaused Error Log");
        abl_fatal(Logger, "Unpaused Fatal Log");
        
        abl_SetLevel(Logger, ABL_WARN);
        abl_trace(Logger, "Unsent Trace Log.");
        abl_debug(Logger, "Unsent Debug Log.");
        abl_info(Logger, "Unsent Info Log");
        abl_warn(Logger, "Sent Warn Log");
        abl_error(Logger, "Sent Error Log");
        abl_fatal(Logger, "Sent Fatal Log");
    }
    
    abl_Shutdown(Logger);
    
    return 0;
}
