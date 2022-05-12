/** @file
@brief Functions for time and timing.
@author Amos Buchanan
@version 1.0
@date 2020

These are functions used for timing and time comparisons. Handles both wall clock time and monotonic time. Can be used in both Windows and Linux. Define `_LINUX` or `_WINDOWS` either as a compile option or before calling this to ensure the correct code is pulled in.

This is a single-file library. You may include it as a header just as any other. Add the following define to include the source *once* per project:

~~~c
#define TIME_HELPER_SRC
#include "ab_timehelper.h"
~~~

Example Usage:
~~~c
th_time StartTime = th_GetMonotonic();

while(isRunning)
{
    th_time Now = th_GetMonotonic();
    r32 TimeElapsed = th_GetElapsedMsR32(StartTime, Now);
    if(TimeElapsed > 1000)
    {
        StartTime = Now;
        printf("One Second Elapsed\n");
    }
}
~~~

**/

#ifndef _TIME_HELPER_H
#define _TIME_HELPER_H

#include <time.h>

#include "ab_common.h"

/** @brief Internal representation of time. **/
typedef timespec th_time;

///@{
/** @brief Get current UTC wall clock time, as reported by OS. **/
void th_GetCurrent(th_time *Now);
th_time th_GetCurrent();
///@}

/** @brief Get current monotonic time, based on timer that is independent of wall clock. **/
th_time th_GetMonotonic();
///@{
/** @brief Calculate the time in milliseconds between two times. 

@param StartTime The time at the start of the period to measure.
@param Now The time at the end of the period to measure.
@return Milliseconds between the two times.
**/
u32 th_GetElapsedMsU32(th_time StartTime, th_time Now);
r32 th_GetElapsedMsR32(th_time StartTime, th_time Now);
///@}

/** @brief Get a new time based on a start time and the number of milliseconds passed. 

@param StartTime The start time.
@param TimestampMs The number of milliseconds passed since the start time.
**/
th_time th_GetTimeFromElapsed(th_time StartTime, r32 TimestampMs);

///@{
/** @brief Given a time, return the milliseconds it corresponds to. 

For wall clock time, this is time since epoch. For monotonic time, this is time since the arbitrary starting value. 

@param Time The time to convert.
@return Milliseconds since starting time.
**/
inline u32 th_GetMsFromTimeU32(th_time Time);
inline u32 th_GetMsFromTime32(th_time Time);
///@}

#endif //_TIME_HELPER_H

#if defined(TIME_HELPER_SRC)
void
th_GetCurrent(th_time *Now)
{
    timespec_get(Now, TIME_UTC);
}

th_time
th_GetCurrent()
{
    timespec Result = {};
    timespec_get(&Result, TIME_UTC);
    
    return (th_time)Result;
}

th_time
th_GetMonotonic()
{
    th_time Result = {};
    
#ifdef _WINDOWS
    ULONGLONG Value = GetTickCount64();
    r32 ValueR32 = (r32)Value;
    Result.tv_sec = (time_t)MS_TO_S(ValueR32);
    Result.tv_nsec = (long)MS_TO_NS(Value - S_TO_MS(Result.tv_sec));
    
#elif defined(_LINUX)
    clock_gettime(CLOCK_MONOTONIC, &Result);
#endif
    
    return Result;
}

r32
th_GetElapsedMsR32(th_time StartTime, th_time Now)
{
    r32 ElapsedTimeMs = 0.0f;
    ElapsedTimeMs = (r32)S_TO_MS(Now.tv_sec - StartTime.tv_sec);
    if(Now.tv_nsec > StartTime.tv_nsec)
    {
        ElapsedTimeMs += (r32)NS_TO_MS(Now.tv_nsec - StartTime.tv_nsec);
    }
    else
    {
        ElapsedTimeMs +=(r32) NS_TO_MS((S_TO_NS(1.0f) + Now.tv_nsec) - StartTime.tv_nsec) - S_TO_MS(1.0f);
    }
    
    return ElapsedTimeMs;
}

u32
th_GetElapsedMsU32(th_time StartTime, th_time Now)
{
    u32 ElapsedTimeMs = 0;
    ElapsedTimeMs = (u32)S_TO_MS(Now.tv_sec - StartTime.tv_sec);
    if(Now.tv_nsec > StartTime.tv_nsec)
    {
        ElapsedTimeMs += (u32)NS_TO_MS(Now.tv_nsec - StartTime.tv_nsec);
    }
    else
    {
        ElapsedTimeMs +=(u32) NS_TO_MS((S_TO_NS(1) + Now.tv_nsec) - StartTime.tv_nsec) - S_TO_MS(1);
    }
    
    return ElapsedTimeMs;
}

th_time
th_GetWallClockFromElapsed(th_time StartTime, r32 TimestampMs)
{
    // NOTE(amos): There are some rounding errors in this method; is there a better way?
    r32 SecondsR32 = MS_TO_S(TimestampMs);
    u32 Seconds = (u32)SecondsR32;
    r32 NanosecondsR32 = MS_TO_NS(TimestampMs) - ((r32)S_TO_NS(Seconds));
    long Nanoseconds = (long)NanosecondsR32;
    
    th_time Result = StartTime;
    
    Result.tv_sec += (time_t)Seconds;
    Result.tv_nsec += Nanoseconds;
    
    return Result;
}

inline u32
th_GetMsFromTimeU32(th_time Time)
{
    u32 Ms = (u32)S_TO_MS(Time.tv_sec);
    Ms += (u32)NS_TO_MS(Time.tv_nsec);
    return Ms;
}

inline r32
th_GetMsFromTimeR32(th_time Time)
{
    r32 Ms = S_TO_MS((r32)Time.tv_sec);
    Ms += NS_TO_MS(((r32)Time.tv_nsec));
    return Ms;
}

#undef TIME_HELPER_SRC
#endif
