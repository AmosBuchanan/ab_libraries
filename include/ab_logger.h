/** @file
@brief Network Logger.
@author Amos Buchanan
@version 1.0
@date 2020
@copyright [MIT Public License](https://opensource.org/licenses/MIT)


Network logger using czmq. Use a different abl_log for each thread and you should be ok. There is a possibility of a multi-thread logger at some point in the future, but not now. It uses a zmq publish socket under the hood, and you can use zmq subscribe to subscribe to the log.

When subscribing, you can subscribe to any of the levels; each level is a different topic. Or subscribe to all of them using a blank subscription of `""`. Available topics are:
* "TRACE"
* "DEBUG"
* "INFO"
* "WARN"
* "ERROR"
* "FATAL"

You can use printf()-like syntax with the error messages, see example.

For an example of subscribing to the log, see @ref `ab_loggerclient.h`.

This is a single-file-library. You may include the file anywhere in your source. Only once in your code, define the following:

~~~c
#define AB_LOGGER_SRC
#include "ab_logger.h"
~~~

This will include the source.

Available levels:
* `ABL_TRACE`
    * `ABL_DEBUG`
    * `ABL_INFO`
    * `ABL_WARN`
    * `ABL_ERROR`
    * `ABL_FATAL`

 example usage:
~~~c
// Setup a logger to publish on port 5555.
abl_log *Logger = abl_InitializeLogger(&Memory, 5555, ABL_TRACE);
    
abl_SetLevel(Logger, ABL_TRACE);
        abl_trace(Logger, "Trace Log.");
        abl_debug(Logger, "Debug Log, with error code: %d.", errno);
        abl_info(Logger, "Info Log");

// Logs will not be sent while paused.
abl_SetPause(Logger, true); 
        abl_warn(Logger, "Warn Log");
        abl_error(Logger, "Error Log, serious error. %s", SomeSeriousErrorMessage);

// Start sending logs again.
abl_SetPause(Logger, false);

        abl_fatal(Logger, "Fatal Log");
        
abl_Shutdown(Logger);
~~~
# References

- @ref ab_loggerclient.h
- [zmq Messaging](https://zeromq.org/)
- [czmq C Library for ZMQ messaging](http://czmq.zeromq.org/)

# MIT License

 [MIT Public License](https://opensource.org/licenses/MIT)

Copyright 2020 Amos Buchanan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
**/

#ifndef AB_LOGGER_H
#define AB_LOGGER_H

#include "czmq.h"

#include "ab_common.h"
#include "ab_memory.h"

/* Available log levels. */
enum abl_log_level
{ 
    ABL_TRACE, 
    ABL_DEBUG, 
    ABL_INFO, 
    ABL_WARN, 
    ABL_ERROR, 
    ABL_FATAL 
};

struct abl_log;

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
abl_log *
abl_InitializeLogger(memory_arena *Memory, s32 Port);

/** @brief Set log level. 

See @ref abl_log_level for available levels.
**/
void abl_SetLevel(abl_log *Logger, abl_log_level Level);

/** @brief Pause/Unpause the logging output. 

@param Logger The logger to pause.
@param doPause True to pause, false to unpause.
**/
void abl_SetPause(abl_log *Logger, b8 doPause);

/** @brief Shutdown the logger object. **/
void abl_Shutdown(abl_log *Logger);

/** @brief Log for a Trace message. **/
#define abl_trace(LOGGER, Fmt, ...) abl_LogFunction(LOGGER, ABL_TRACE, __FILE__, __LINE__, Fmt, ##__VA_ARGS__)

/** @brief Log for a Debug message. **/
#define abl_debug(LOGGER, Fmt, ...) abl_LogFunction(LOGGER, ABL_DEBUG, __FILE__, __LINE__, Fmt, ##__VA_ARGS__)

/** @brief Log for an Info message. **/
#define abl_info(LOGGER, Fmt, ...)  abl_LogFunction(LOGGER, ABL_INFO,  __FILE__, __LINE__, Fmt, ##__VA_ARGS__)

/** @brief Log for a Warn message. **/
#define abl_warn(LOGGER, Fmt, ...)  abl_LogFunction(LOGGER, ABL_WARN,  __FILE__, __LINE__, Fmt, ##__VA_ARGS__)

/** @brief Log for an Error message. **/
#define abl_error(LOGGER, Fmt, ...) abl_LogFunction(LOGGER, ABL_ERROR, __FILE__, __LINE__, Fmt, ##__VA_ARGS__)

/** @brief Log for a Fatal message. **/
#define abl_fatal(LOGGER, Fmt, ...) abl_LogFunction(LOGGER, ABL_FATAL, __FILE__, __LINE__, Fmt, ##__VA_ARGS__)

/** @private 

Don't use this function directly. Use the defines, above.
**/
void abl_LogFunction(abl_log *Logger, abl_log_level Level, const char *File, s32 Line, const char *Fmt, ...);

#endif //AB_LOGGER_H

/*************************************************/
#ifdef AB_LOGGER_SRC

static const char *LevelNames[] = {
    "TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"
};


struct abl_log
{
    zsock_t *Socket;
    s32 Port;
    abl_log_level Level;
    b8 isPaused;
};

abl_log *
abl_InitializeLogger(memory_arena *Memory, s32 Port, abl_log_level Level)
{
    const s32 ZcmqTimeoutMs = 10;
    
    abl_log *Logger = 0;
    
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
        Logger = mem_PushStruct(Memory, abl_log);
        Logger->Socket = Socket;
        Logger->Port = Port;
        Logger->Level = Level;
        Logger->isPaused = false;
        
        printf("Binding to port %d at log level %s\n", Port, LevelNames[Level]);
    }
    
    return Logger;
}

void abl_SetLevel(abl_log *Logger, abl_log_level Level)
{
    Logger->Level = Level;
}

void abl_SetPause(abl_log *Logger, b8 doPause)
{
    Logger->isPaused = doPause;
}

void abl_Shutdown(abl_log *Logger)
{
    zsock_destroy(&Logger->Socket);
    Logger->Socket = 0;
    Logger->Port = 0;
}

void abl_LogFunction(abl_log *Logger, abl_log_level Level, const char *File, s32 Line, const char *Fmt, ...)
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
    
    struct abl_log *Logger = abl_InitializeLogger(&Memory, 5555, ABL_TRACE);
    if(!Logger)
    {
        printf("Failed to create logger.\n");
        return 1;
    }
    
    while(isRunning)
    {
        sleep(1);
        
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
        abl_SetPause(Logger, true);
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


#endif