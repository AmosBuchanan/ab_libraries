/** @file
@brief Common macros and typedefs.
@author Amos Buchanan
@version 1.0
@date 2020

This file has the common macros and typedefs I use everywhere. Every other library is dependent on this one.

**/

#if !defined(AMOSCOMMON_H)

#define AMOSCOMMON_H

#include <stdint.h>
#include <wchar.h>

/// Macro that can be used anywhere with a pre-defined array. 
#define ArrayCount(Array) (sizeof(Array)) / (sizeof(Array[0]))
#define MAX_FILENAME_SIZE 255

/// Return the minimum of a value. 
#define MINIMUM(Value1, Value2) (((Value1) < (Value2)) ? (Value1) : (Value2))
/// Return the maximum of a value. 
#define MAXIMUM(Value1, Value2) (((Value1) > (Value2)) ? (Value1) : (Value2))

/// Reset the bit to zero. 
#define BitReset(Value, Bit) ((Value) &= ~(1 << (Bit)))

/// Set the bit to one. 
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
typedef int32_t b32;

typedef int8_t s8;
typedef uint8_t u8;

typedef int16_t s16;
typedef uint16_t u16;

typedef int32_t s32;
typedef uint32_t u32;
typedef int32_t b32;

typedef int64_t s64;
typedef uint64_t u64;

typedef float r32;
typedef double r64;

const r32 TAU = 6.2831853071f;

#if (defined (_DEBUG) && !defined (DEBUG))
#define DEBUG
#endif

// NOTE(amos): These will get compiled out of the release.
#ifdef _DEBUG

/// Assert causes a hard-fault, useful when debugging. Don't use this is production code.
#define Assert(test) if(!(test)) {__builtin_trap();}

#else

/// Assert causes a hard-fault, useful when debugging. Don't use this is production code.
#define Assert(test)
#endif

#endif
