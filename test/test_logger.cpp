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
    
    logger *Logger = log_InitializeLogger(&Memory, Port, LOGGER_TRACE);
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
        
        log_SetLevel(Logger, LOGGER_TRACE);
        log_trace(Logger, "Trace Log.");
        log_debug(Logger, "Debug Log.");
        log_info(Logger, "Info Log");
        log_warn(Logger, "Warn Log");
        log_error(Logger, "Error Log");
        log_fatal(Logger, "Fatal Log");
        
        log_SetPause(Logger, true);
        log_trace(Logger, "Paused Trace Log.");
        log_debug(Logger, "Paused Debug Log.");
        log_info(Logger, "Paused Info Log");
        log_warn(Logger, "Paused Warn Log");
        log_error(Logger, "Paused Error Log");
        log_fatal(Logger, "Paused Fatal Log");
        
        log_SetPause(Logger, false);
        log_trace(Logger, "Unpaused Trace Log.");
        log_debug(Logger, "Unpaused Debug Log.");
        log_info(Logger, "Unpaused Info Log");
        log_warn(Logger, "Unpaused Warn Log");
        log_error(Logger, "Unpaused Error Log");
        log_fatal(Logger, "Unpaused Fatal Log");
        
        log_SetLevel(Logger, LOGGER_WARN);
        log_trace(Logger, "Unsent Trace Log.");
        log_debug(Logger, "Unsent Debug Log.");
        log_info(Logger, "Unsent Info Log");
        log_warn(Logger, "Sent Warn Log");
        log_error(Logger, "Sent Error Log");
        log_fatal(Logger, "Sent Fatal Log");
    }
    
    log_Shutdown(Logger);
    
    return 0;
}
