#ifndef AB_JSON_H
#define AB_JSON_H

#include "ab_common.h"
#include "ab_memory.h"
#include "ab_string.h"
#include "jsmn.h"

enum json_flags
{
    JSON_Null = 0,
    JSON_IsLastInList = 1 << 0,
    JSON_DontUseTag = 1 << 1,
    JSON_BaseObject = 1 << 2,
};


s32 ParseJson(memory_arena *VolatileMemory, char const *Json,  size_t JsonLength, jsmntok_t **TokenArray);
u32 StartGroup(char *, u32 MaxLength);
u32 EndGroup(char *, u32 MaxLength, b8 isLast);
inline abs_stringptr
TokenToStringPtr(char const *Json, jsmntok_t *Token);
inline b8
TokenEquals(char const* Json, jsmntok_t *Token, char const* Value);

#endif //AB_JSON_H


#ifdef AB_JSON_SRC
inline s32
ParseJson(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t **TokenArray)
{
    s32 NumTokensProcessed = 0;
    if(!(*TokenArray))
    {
        jsmn_parser Parser;
        jsmn_init(&Parser);
        s32 NumTokensExisting = jsmn_parse(&Parser, Json, JsonLength, NULL, 0);
        if(NumTokensExisting > 0)
        {
            // NOTE(amos): The last token will always be an undefined, so we can use it
            //     to find the end of the token array.
            *TokenArray = abm_PushArray(VolatileMemory, (NumTokensExisting+1), jsmntok_t);
            jsmn_init(&Parser);
            NumTokensProcessed = jsmn_parse(&Parser, Json, JsonLength, *TokenArray, NumTokensExisting);
        }
    }
    else
    {
        NumTokensProcessed = (*TokenArray)->size;
    }
    
    return NumTokensProcessed;
}

inline u32
StartGroup(char *Json, u32 MaxLength)
{
    u32 Length = 0;
    if (MaxLength >= 1)
    {
        Json[0] = '{';
        ++Length;
    }
    
    return Length;
}

inline u32
EndGroup(char *Json, u32 MaxLength, b8 isLast = false)
{
    u32 Length = 0;
    if(isLast && MaxLength >= 1)
    {
        Json[0] = '}';
        ++Length;
    }
    else if(!isLast && MaxLength >= 2)
    {
        Json[0] = '}';
        Json[1] = ',';
        Length += 2;
    }
    
    return Length;
}

inline abs_stringptr
TokenToStringPtr(char const *Json, jsmntok_t *Token)
{
    abs_stringptr Result;
    Result.String = &Json[Token->start];
    Result.Length = (Token->end-Token->start);
    
    return Result;
}

inline b8
TokenEquals(char const* Json, jsmntok_t *Token, char const* Value)
{
    u32 TokenLength = Token->end-Token->start;
    b8 Result =
        abs_AreStringsEqual(&Json[Token->start], TokenLength, Value, abs_StringLength(Value, TokenLength), true);
    
    return Result;
}

#undef AB_JSON_SRC
#endif
