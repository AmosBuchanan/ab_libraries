/** @file
@brief Functions for time and timing.
@author Amos Buchanan
@version 1.0
@date 2020
@copyright [MIT Public License](https://opensource.org/licenses/MIT)

These are functions used for timing and time comparisons. Handles both wall clock time and monotonic time. Can be used in both Windows and Linux.

Example Usage:
~~~c
abt_time StartTime = abt_GetMonotonic();

while(isRunning)
{
    abt_time Now = abt_GetMonotonic();
    r32 TimeElapsed = abt_GetElapsedMsR32(StartTime, Now);
    if(TimeElapsed > 1000)
    {
        printf("One Second Elapsed\n");
    }
}
~~~

# MIT License

 [MIT Public License](https://opensource.org/licenses/MIT)

Copyright 2020 Amos Buchanan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
**/

#ifndef _AB_TIME_H
#define _AB_TIME_H

#include <time.h>

#include "ab_common.h"

/** @brief Internal representation of time. **/
typedef timespec abt_time;

///@{
/** @brief Get current UTC wall clock time, as reported by OS. **/
void abt_GetCurrent(abt_time *Now);
abt_time abt_GetCurrent();
///@}

/** @brief Get current monotonic time, based on timer that is independent of wall clock. **/
abt_time abt_GetMonotonic();
///@{
/** @brief Calculate the time in milliseconds between two times. 

@param StartTime The time at the start of the period to measure.
@param Now The time at the end of the period to measure.
@return Milliseconds between the two times.
**/
u32 abt_GetElapsedMsU32(abt_time StartTime, abt_time Now);
r32 abt_GetElapsedMsR32(abt_time StartTime, abt_time Now);
///@}

/** @brief Get a new time based on a start time and the number of milliseconds passed. 

@param StartTime The start time.
@param TimestampMs The number of milliseconds passed since the start time.
**/
abt_time abt_GetTimeFromElapsed(abt_time StartTime, r32 TimestampMs);

///@{
/** @brief Given a time, return the milliseconds it corresponds to. 

For wall clock time, this is time since epoch. For monotonic time, this is time since the arbitrary starting value. 

@param Time The time to convert.
@return Milliseconds since starting time.
**/
inline u32 abt_GetMsFromTimeU32(abt_time Time);
inline u32 abt_GetMsFromTime32(abt_time Time);
///@}

#endif //_AB_TIME_H

#if defined(AB_TIME_SRC)
void
abt_GetCurrent(abt_time *Now)
{
    timespec_get(Now, TIME_UTC);
}

abt_time
abt_GetCurrent()
{
    timespec Result = {};
    timespec_get(&Result, TIME_UTC);
    
    return (abt_time)Result;
}

abt_time
abt_GetMonotonic()
{
    abt_time Result = {};
    
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
abt_GetElapsedMsR32(abt_time StartTime, abt_time Now)
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
abt_GetElapsedMsU32(abt_time StartTime, abt_time Now)
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

abt_time
abt_GetWallClockFromElapsed(abt_time StartTime, r32 TimestampMs)
{
    // NOTE(amos): There are some rounding errors in this method; is there a better way?
    r32 SecondsR32 = MS_TO_S(TimestampMs);
    u32 Seconds = (u32)SecondsR32;
    r32 NanosecondsR32 = MS_TO_NS(TimestampMs) - ((r32)S_TO_NS(Seconds));
    long Nanoseconds = (long)NanosecondsR32;
    
    abt_time Result = StartTime;
    
    Result.tv_sec += (time_t)Seconds;
    Result.tv_nsec += Nanoseconds;
    
    return Result;
}

inline u32
abt_GetMsFromTimeU32(abt_time Time)
{
    u32 Ms = (u32)S_TO_MS(Time.tv_sec);
    Ms += (u32)NS_TO_MS(Time.tv_nsec);
    return Ms;
}

inline r32
abt_GetMsFromTimeR32(abt_time Time)
{
    r32 Ms = S_TO_MS((r32)Time.tv_sec);
    Ms += NS_TO_MS(((r32)Time.tv_nsec));
    return Ms;
}

#undef AB_TIME_SRC
#endif