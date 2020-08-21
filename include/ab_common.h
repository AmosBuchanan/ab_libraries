#if !defined(AMOSCOMMON_H)
/* ========================================================================
   $File: $
   $Date: $
   $Revision: $
   $Creator: Amos Buchanan $
   $Email: amos.buchanan@traxxautomation.com $
   $Notice: (C) Copyright 2015 Traxx Automation. All Rights Reserved. $
   ======================================================================== */

#define AMOSCOMMON_H

#include <stdint.h>
#include <wchar.h>

#define ArrayCount(Array) (sizeof(Array)) / (sizeof(Array[1]))
#define MAX_FILENAME_SIZE 200

#define MINIMUM(Value1, Value2) (((Value1) < (Value2)) ? (Value1) : (Value2))
#define MAXIMUM(Value1, Value2) (((Value1) > (Value2)) ? (Value1) : (Value2))

#define BitReset(Value, Bit) ((Value) &= ~(1 << (Bit)))
#define BitSet(Value, Bit) ((Value) |= (1 << (Bit)))

#define Kilobytes(num) (1024ULL * (num))
#define Megabytes(num) (1024ULL * Kilobytes(num))
#define Gigabytes(num) (1024ULL * Megabytes(num))
#define Terabytes(num) (1024ULL * Gigabytes(num))

#define S_TO_MS(num) ((num) * 1000L)
#define S_TO_NS(num) ((num) * 1e9L)
#define MS_TO_S(num) ((num) * 0.001f)
#define MS_TO_NS(num) ((num) * 1000000.0f)
#define NS_TO_S(num) ((num) * 1e-9f)
#define NS_TO_MS(num) ((num) * 1e-6f)

typedef wchar_t wchar;

typedef int8_t b8;

typedef int8_t s8;
typedef uint8_t u8;

typedef int16_t s16;
typedef uint16_t u16;

typedef int32_t s32;
typedef uint32_t u32;

typedef int64_t s64;
typedef uint64_t u64;

typedef float r32;
typedef double r64;

const r32 TAU = 6.2831853071f;

// NOTE(amos): These will get compiled out of the release.
#if defined(DEBUG)
#define Assert(test) if(!(test)) {*(int*)(0x0) = 0;}

#else
#define Assert(test)
#endif

#endif
