#define JSMN_HEADER
#include "jsmn.h"
#undef JSMN_HEADER


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
            *TokenArray = PushArray(VolatileMemory, (NumTokensExisting+1), jsmntok_t);
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

inline stringptr
TokenToStringPtr(char const *Json, jsmntok_t *Token)
{
    stringptr Result;
    Result.String = &Json[Token->start];
    Result.Length = (Token->end-Token->start);
    
    return Result;
}

inline b8
TokenEquals(char const* Json, jsmntok_t *Token, char const* Value)
{
    u32 TokenLength = Token->end-Token->start;
    b8 Result =
        areStringsEqual(&Json[Token->start], TokenLength, Value, StringLength(Value, TokenLength), true);
    
    return Result;
}
