#ifndef _AB_TIME_H
#define _AB_TIME_H

#include <time.h>

typedef timespec abt_time;

void abt_GetCurrent(abt_time *Now);
abt_time abt_GetCurrent();
abt_time abt_GetMonotonic();
u32 abt_GetElapsedMsU32(abt_time StartTime, abt_time *Now);
r32 abt_GetElapsedMsR32(abt_time StartTime, abt_time *Now);
abt_time abt_GetWallClockFromElapsed(abt_time StartTime, r32 TimestampMs);
inline u32 abt_GetMsFromTimeU32(abt_time Time);
inline u32 abt_GetMsFromTime32(abt_time Time);

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
    clock_gettime(CLOCK_MONOTONIC, &Result);
    
    return Result;
}

r32
abt_GetElapsedMsR32(abt_time StartTime, abt_time *Now)
{
    r32 ElapsedTimeMs = 0.0f;
    if(Now)
    {
        abt_GetCurrent(Now);
        
        ElapsedTimeMs = (r32)S_TO_MS(Now->tv_sec - StartTime.tv_sec);
        if(Now->tv_nsec > StartTime.tv_nsec)
        {
            ElapsedTimeMs += (r32)NS_TO_MS(Now->tv_nsec - StartTime.tv_nsec);
        }
        else
        {
            ElapsedTimeMs +=(r32) NS_TO_MS((S_TO_NS(1.0f) + Now->tv_nsec) - StartTime.tv_nsec) - S_TO_MS(1.0f);
        }
    }
    
    return ElapsedTimeMs;
}

u32
abt_GetElapsedMsU32(abt_time StartTime, abt_time *Now)
{
    u32 ElapsedTimeMs = 0;
    if(Now)
    {
        abt_GetCurrent(Now);
        
        ElapsedTimeMs = (u32)S_TO_MS(Now->tv_sec - StartTime.tv_sec);
        if(Now->tv_nsec > StartTime.tv_nsec)
        {
            ElapsedTimeMs += (u32)NS_TO_MS(Now->tv_nsec - StartTime.tv_nsec);
        }
        else
        {
            ElapsedTimeMs +=(u32) NS_TO_MS((S_TO_NS(1) + Now->tv_nsec) - StartTime.tv_nsec) - S_TO_MS(1);
        }
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
    u32 Ms = S_TO_MS(Time.tv_sec);
    Ms += NS_TO_MS(Time.tv_nsec);
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