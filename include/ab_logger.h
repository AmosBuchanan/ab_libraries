/** @file
@brief Network Logger.
@author Amos Buchanan
@version 1.0
@date 2020

# Description 

Network logger using czmq. Use a different logger for each thread and you should be ok. There is a possibility of a multi-thread logger at some point in the future, but not now. It uses a zmq publish socket under the hood, and you can use zmq subscribe to subscribe to the log.

# Dependencies

This library requires:

  - `ab_common.h` (Single file library)
  - `ab_memory.h` (Single file library)
  - czmq - http://czmq.zeromq.org/

# Usage

When subscribing, you can subscribe to any of the levels; each level is a different topic. Or subscribe to all of them using a blank subscription of `""`. Available topics are:
* "TRACE"
* "DEBUG"
* "INFO"
* "WARN"
* "ERROR"
* "FATAL"

You can use printf()-like syntax with the error messages, see example.

For an example of subscribing to the log, see @ref ab_loggerclient.h.

This is a single-file-library. You may include the file anywhere in your source. Only once in your code, define the following:

~~~c
#define AB_LOGGER_SRC
#include "ab_logger.h"
~~~

This will include the source.

Available levels:
* `LOGGER_TRACE`
    * `LOGGER_DEBUG`
    * `LOGGER_INFO`
    * `LOGGER_WARN`
    * `LOGGER_ERROR`
    * `LOGGER_FATAL`

 example usage:
~~~c
// Setup a logger to publish on port 5555.
logger *Logger = log_InitializeLogger(&Memory, 5555, LOGGER_TRACE);
    
log_SetLevel(Logger, LOGGER_TRACE);
        log_trace(Logger, "Trace Log.");
        log_debug(Logger, "Debug Log, with error code: %d.", errno);
        log_info(Logger, "Info Log");

// Logs will not be sent while paused.
log_SetPause(Logger, true); 
        log_warn(Logger, "Warn Log");
        log_error(Logger, "Error Log, serious error. %s", SomeSeriousErrorMessage);

// Start sending logs again.
log_SetPause(Logger, false);

        log_fatal(Logger, "Fatal Log");
        
log_Shutdown(Logger);
~~~

You can see an example of receiving the log messages with @ref ab_loggerclient.h.

# References

- @ref ab_loggerclient.h
- [zmq Messaging](https://zeromq.org/)
- [czmq C Library for ZMQ messaging](http://czmq.zeromq.org/)

**/

#ifndef AB_LOGGER_H
#define AB_LOGGER_H

#include "czmq.h"

#include "ab_common.h"
#include "ab_memory.h"

/* Available log levels. */
enum log_level
{ 
    LOGGER_TRACE, 
    LOGGER_DEBUG, 
    LOGGER_INFO, 
    LOGGER_WARN, 
    LOGGER_ERROR, 
    LOGGER_FATAL 
};

struct logger;

// TODO(amos): Handle incoming commands for external logging, such as enable/disable and etc.

/* 
        Start a CZMQ server to send logs to. Must shutdown server when done, see below.

Logger: The logger struct.
Port: TCP port for the ROUTER to bind to.

Format of zmq message:
Frame 1: String, Level. Example: "INFO"
     Frame 2: u64, Timestamp, based on linux Epoch. 
Frame 3: String, 'File:Line'. Example "main.cpp:123"
Frame 4: String, Log Message, Example "Some Message."
*/
logger *
log_InitializeLogger(memory_arena *Memory, s32 Port);

/** @brief Set log level. 

See @ref log_level for available levels.
**/
void log_SetLevel(logger *Logger, log_level Level);

/** @brief Pause/Unpause the logging output. 

@param Logger The logger to pause.
@param doPause True to pause, false to unpause.
**/
void log_SetPause(logger *Logger, b8 doPause);

/** @brief Shutdown the logger object. **/
void log_Shutdown(logger *Logger);

/** @brief Log for a Trace message. **/
#define log_trace(LOGGER, Fmt, ...) log_LogFunction(LOGGER, LOGGER_TRACE, __FILE__, __LINE__, Fmt, ##__VA_ARGS__)

/** @brief Log for a Debug message. **/
#define log_debug(LOGGER, Fmt, ...) log_LogFunction(LOGGER, LOGGER_DEBUG, __FILE__, __LINE__, Fmt, ##__VA_ARGS__)

/** @brief Log for an Info message. **/
#define log_info(LOGGER, Fmt, ...)  log_LogFunction(LOGGER, LOGGER_INFO,  __FILE__, __LINE__, Fmt, ##__VA_ARGS__)

/** @brief Log for a Warn message. **/
#define log_warn(LOGGER, Fmt, ...)  log_LogFunction(LOGGER, LOGGER_WARN,  __FILE__, __LINE__, Fmt, ##__VA_ARGS__)

/** @brief Log for an Error message. **/
#define log_error(LOGGER, Fmt, ...) log_LogFunction(LOGGER, LOGGER_ERROR, __FILE__, __LINE__, Fmt, ##__VA_ARGS__)

/** @brief Log for a Fatal message. **/
#define log_fatal(LOGGER, Fmt, ...) log_LogFunction(LOGGER, LOGGER_FATAL, __FILE__, __LINE__, Fmt, ##__VA_ARGS__)

/** @private 

Don't use this function directly. Use the defines, above.
**/
void log_LogFunction(logger *Logger, log_level Level, const char *File, s32 Line, const char *Fmt, ...);

#endif //AB_LOGGER_H

/*************************************************/
#ifdef AB_LOGGER_SRC

static const char *LevelNames[] = {
    "TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"
};


struct logger
{
    zsock_t *Socket;
    s32 Port;
    log_level Level;
    b8 isPaused;
};

logger *
log_InitializeLogger(memory_arena *Memory, s32 Port, log_level Level)
{
    const s32 ZcmqTimeoutMs = 10;
    
    logger *Logger = 0;
    
    zsys_handler_set(NULL);
    //zsock_t *Socket = zsock_new_pub("tcp://*:5555");
    zsock_t *Socket = zsock_new(ZMQ_PUB);
    //zsock_set_sndtimeo(Socket, ZcmqTimeoutMs);
    s32 BindPort = zsock_bind(Socket, "tcp://*:%d", Port);
    
    if(BindPort == -1)
    {
        printf("Unable to bind to port.\n");
        //zsock_destroy(&Socket);
        // TODO(amos): No logging available.
    }
    else 
    {
        Logger = mem_PushStruct(Memory, logger);
        Logger->Socket = Socket;
        Logger->Port = Port;
        Logger->Level = Level;
        Logger->isPaused = false;
        
        printf("Binding to port %d at log level %s\n", Port, LevelNames[Level]);
    }
    
    return Logger;
}

void log_SetLevel(logger *Logger, log_level Level)
{
    Logger->Level = Level;
}

void log_SetPause(logger *Logger, b8 doPause)
{
    Logger->isPaused = doPause;
}

void log_Shutdown(logger *Logger)
{
    zsock_destroy(&Logger->Socket);
    Logger->Socket = 0;
    Logger->Port = 0;
}

void log_LogFunction(logger *Logger, log_level Level, const char *File, s32 Line, const char *Fmt, ...)
{
    if(Level < Logger->Level ||
       Logger->isPaused)
    {
        return;
    }
    
    time_t t = time(NULL);
    tm *lt = gmtime(&t);
    
    //char TimeBuffer[50];
    //TimeBuffer[strftime(TimeBuffer, sizeof(TimeBuffer), "%Y-%m-%d %H:%M:%S", lt)] = '\0';
    
    /* Log to Network */
    if(Logger->Socket)
    {
        //printf("New Message: ");
        zmsg_t *Msg = zmsg_new();
        //zmsg_addstr(Msg, "LOGMESSAGE");
        s32 Response = zmsg_addstr(Msg, LevelNames[Level]);
        
        if(Response > -1)
        {
            u64 Epochtime = (u64)t;
            //printf("epoch %lu ", Epochtime);
            Response = zmsg_addmem(Msg, &Epochtime, sizeof(u64));
            //Response = zmsg_addstr(Msg, TimeBuffer);
        }
        
        if(Response > -1)
        {
            //printf("%s:%d ", File, Line);
            Response = zmsg_addstrf(Msg, "%s:%d", File, Line);
        }
        
        if(Response > -1)
        {
            //printf("[Message] ");
            va_list args;
            va_start(args, Fmt);
            Response = zmsg_addstrf(Msg, Fmt, args);
            va_end(args);
        }
        
        if(Response > -1)
        {
            //printf("Sending Message.\n");
            zmsg_send(&Msg, Logger->Socket);
        }
        else 
        {
            printf("Failed to send message.\n");
            zmsg_destroy(&Msg);
        }
    }
}

#undef AB_LOGGER_SRC
#endif // defined(AB_LOGGER_SRC)

#ifdef AB_LOGGER_TEST
#include <signal.h>
#include <stdio.h>

#define AB_MEMORY_SRC
#include "ab_memory.h"

b8 isRunning = true;
void
sigint_handler(int code)
{
    isRunning = false;
    printf("Sigint Shutdown.\n");
}


int
main(int argc, char *argv[])
{
    signal(SIGINT, sigint_handler);
    
    void *OsMemory = mem_AllocateOsMemory(NULL, Kilobytes(5));
    if(!OsMemory)
    {
        printf("Failed to get memory.");
        return 1;
    }
    
    memory_arena Memory = mem_InitMemory(OsMemory, Kilobytes(5));
    
    struct logger *Logger = log_InitializeLogger(&Memory, 5555, LOGGER_TRACE);
    if(!Logger)
    {
        printf("Failed to create logger.\n");
        return 1;
    }
    
    while(isRunning)
    {
        sleep(1);
        
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
        log_SetPause(Logger, true);
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


#endif