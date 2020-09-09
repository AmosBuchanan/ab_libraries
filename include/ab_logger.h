/**
Logger.
Version: 1.0
**/

#ifndef AB_LOGGER_H
#define AB_LOGGER_H

#include "czmq.h"

#include "ab_common.h"

/**
Network logger using czmq. Will log to STDERR, a file and/or to a czmq network, depending on setup. 
STDERR logging not garunteed to be threadsafe, don't do it. 
Logging multiple threads to the same file not garunteed to be threadsafe. 
CZMQ logging is threadsafe subject to the restrictions of CZMQ. 

Basically, use a different ab_log for each thread and you should be ok. 

This is a single-file-library. You may include the file anywhere in your source. Only once in your code, define the following:

~~~c
#define AB_LOGGER_SRC
#include "ab_logger.h"
~~~

This will include the source.

There's a single-thread use that uses a global logger. Define the following:
~~~c
#define AB_LOGGER_SINGLETHREAD
~~~

To use color on STDERR:
~~~c
#define AB_LOGGER_USE_COLOR
~~~
Available levels:
ABL_TRACE, 
    ABL_DEBUG, 
    ABL_INFO, 
    ABL_WARN, 
    ABL_ERROR, 
    ABL_FATAL 

 example usage:
abl_log Logger = {};
abl_set_level(&Logger, ABL_INFO);
abl_start_server(&Logger, 555);
abl_info(&Logger, "Some log");
abl_info(&Logger, "More Info, %d", errno);
abl_stop_server(&Logger);

**/

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

void abl_start_server(ab_log *Logger, s32 Port);
/* 
        Start a CZMQ server to send logs to. Must shutdown server when done, see below.

Logger: The logger struct.
Port: TCP port for the ROUTER to bind to.

Format of zmq message:
Frame 1: String, Level. Example: "INFO"
Frame 2: time_t Data, Epoch Time. Example '1598311207'
Frame 3: String, 'File:Line'. Example "main.cpp:123"
Frame 4: String, Log Message, Example "Some Message."
*/

void abl_set_fp(ab_log *Logger, FILE *fp);
/**
**/
void abl_set_level(ab_log *Logger, abl_log_level Level);

// 
void abl_set_quiet(ab_log *Logger, b8 isQuiet);
/**
set isQuiet = true -> true to disable logging to STDERR.
**/

void abl_stop_server(ab_log *Logger);
/**
**/

#ifdef AB_LOG_SINGLETHREAD
/**
#define AB_LOG_SINGLETHREAD to use a global logger.
**/

#define abl_trace(Fmt, ...) abl_log(&Logger, LOG_TRACE, __FILE__, __LINE__, Fmt, __VA_ARGS__)
#define abl_debug(Fmt, ...) abl_log(&Logger, LOG_DEBUG, __FILE__, __LINE__, Fmt, __VA_ARGS__)
#define abl_info(Fmt, ...)  abl_log(&Logger, LOG_INFO,  __FILE__, __LINE__, Fmt, __VA_ARGS__)
#define abl_warn(Fmt, ...)  abl_log(&Logger, LOG_WARN,  __FILE__, __LINE__, Fmt, __VA_ARGS__)
#define abl_error(Fmt, ...) abl_log(&Logger, LOG_ERROR, __FILE__, __LINE__, Fmt, __VA_ARGS__)
#define abl_fatal(Fmt, ...) abl_log(&Logger, LOG_FATAL, __FILE__, __LINE__, Fmt, __VA_ARGS__)

#else 
/**
If multi-threaded, must declare a logger for use.
**/
#define abl_trace(Logger, Fmt, ...) abl_log(Logger, LOG_TRACE, __FILE__, __LINE__, Fmt, __VA_ARGS__)
#define abl_debug(Logger, Fmt, ...) abl_log(Logger, LOG_DEBUG, __FILE__, __LINE__, Fmt, __VA_ARGS__)
#define abl_info(Logger, Fmt, ...)  abl_log(Logger, LOG_INFO,  __FILE__, __LINE__, Fmt, __VA_ARGS__)
#define abl_warn(Logger, Fmt, ...)  abl_log(Logger, LOG_WARN,  __FILE__, __LINE__, Fmt, __VA_ARGS__)
#define abl_error(Logger, Fmt, ...) abl_log(Logger, LOG_ERROR, __FILE__, __LINE__, Fmt, __VA_ARGS__)
#define abl_fatal(Logger, Fmt, ...) abl_log(Logger, LOG_FATAL, __FILE__, __LINE__, Fmt, __VA_ARGS__)

#endif

void abl_log(ab_log *Logger, abl_log_level Level, const char *File, s32 Line, const char *Fmt, ...);

#endif //AB_LOGGER_H

/*************************************************/
#if defined(AB_LOGGER_SRC)

struct abl_log
{
    zsock_t *Socket;
    FILE *Fp;
    abl_log_level Level;
    b8 isQuiet;
};

#ifdef AB_LOG_SINGLETHREAD
static ab_log Logger = {};
#endif

static const char *LevelNames[] = {
    "TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"
};

#ifdef AB_LOGGER_USE_COLOR
static const char *LevelColors[] = {
    "\x1b[94m", "\x1b[36m", "\x1b[32m", "\x1b[33m", "\x1b[31m", "\x1b[35m"
};
#endif

void abl_start_server(ab_log *Logger, s32 Port)
{
    Assert(Logger);
    
    if(Logger)
    {
        zsys_handler_set(NULL);
        zsock_t *Socket = zsock_new(ZMQ_ROUTER);
        s32 BindPort = zsock_bind(Socket, "tcp://*:%u", Port);
        if(BindPort == -1)
        {
            zsock_destroy(&Socket);
        }
        else
        {
            Logger->Socket = Socket;
        }
    }
}
void abl_set_fp(ab_log *Logger, FILE *fp)
{
    if(fp > -1)
    {
        Logger->Fp = fp;
    }
    else 
    {
        Logger->Fp = 0;
    }
}

void abl_set_level(ab_log *Logger, abl_log_level Level)
{
    Logger->Level = Level;
}

void abl_set_quiet(ab_log *Logger, b8 isQuiet)
{
    Logger->isQuiet = isQuiet;
}

void abl_stop_server(ab_log *Logger)
{
    zsock_destroy(&Logger->Socket);
    Logger->Socket = 0;
}

void abl_log(ab_log *Logger, abl_log_level Level, const char *File, s32 Line, const char *Fmt, ...)
{
    if(Level < Logger->Level)
    {
        return;
    }
    
    time_t t = time(NULL);
    struct *lt = localtime(&t);
    
    char TimeBuffer[32];
    TimeBuffer[strftime(TimeBuffer, sizeof(TimeBuffer), "%Y-%m-%d %H:%M:%S", lt)] = '\0';
    
    /* Log to stderr */
    if(!Logger->isQuiet)
    {
        va_list args;
        
#ifdef AB_LOGGER_USE_COLOR
        fprintf(stderr, "%s %s%-5s\x1b[0m \x1b[90m%s:%d:\x1b[0m ",
                TimeBuffer, LevelColors[Level], LevelNames[Level], File, Line);
#else
        fprintf(stderr, "%s %-5s %s:%d: ", TimeBuffer, LevelNames[level], File, Line);
#endif
        va_start(args, Fmt);
        vfprintf(stderr, Fmt, args);
        va_end(args);
        fprintf(stderr, "\n");
        fflush(stderr);
    }
    
    /* Log to file */
    if (Logger->Fp)
    {
        va_list args;
        fprintf(Logger->Fp, "%s %-5s %s:%d: ", TimeBuffer, LevelNames[Level], File, Line);
        va_start(args, Fmt);
        vfprintf(Logger->Fp, Fmt, args);
        va_end(args);
        fprintf(Logger->Fp, "\n");
        fflush(Logger->Fp);
    }
    
    /* Log to Network */
    if(Logger->Socket)
    {
        zmsg_t *Msg = zmsg_new();
        s32 Response = zmsg_addstrf(Msg, "%s", LevelNames[Level]);
        
        if(Response > -1)
        {
            Response = zmsg_addmem(Msg, &t, sizeof(t));
        }
        
        if(Response > -1)
        {
            Response = zmsg_addstrf(Msg, "%s:%d ", File, Line);
        }
        
        if(Response > -1)
        {
            va_list args;
            va_start(args, Fmt);
            Response = zmsg_addstrf(Msg, Fmt, args);
            va_end(args);
        }
        
        if(Response > -1)
        {
            zmsg_sendm(&Msg, Logger-Socket);
        }
        else 
        {
            zmsg_destroy(&Msg);
        }
    }
    
}

#undef(AB_LOGGER_SRC)
#endif // defined(AB_LOGGER_SRC)
