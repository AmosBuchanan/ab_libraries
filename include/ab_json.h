/** @file
@brief JSON functions, mostly used by pre-generated files.
@author Amos Buchanan
@version 1.0
@date 2020
@copyright [MIT Public License](https://opensource.org/licenses/MIT)

These are helper functions for parsing JSON. This is mostly useful for the auto-generated code by the preprocessor when JSON tags are used. This library depends on the [JSMN JSON parser](https://github.com/zserge/jsmn). There is a slightly modified version of the library included, which fixes an issue with including the header and source code separately. It is otherwise unchanged from the original.

This is a single-file library. You may include it as a header just as any other. Add the following define to include the source *once* per project:

~~~c
#define AB_JSON_SRC
#include "ab_json.h"
~~~

# MIT License

 [MIT Public License](https://opensource.org/licenses/MIT)

Copyright 2020 Amos Buchanan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
**/

#ifndef AB_JSON_H
#define AB_JSON_H

#include "ab_common.h"
#include "ab_memory.h"
#include "ab_string.h"

#define JSMN_HEADER
#include "jsmn.h"
#undef JSMN_HEADER

/** @brief Flags for how to create a JSON string from a struct/enum **/

These flags may be or'd together for input.
**/
enum json_flags
{
    /** @brief No flag. **/
    JSON_Null = 0,
    /** @brief The item is the last in a list; don't put a comma after it. **/
    JSON_IsLastInList = 1 << 0,
    /** @brief Don't use a starting tag to define this. Most often used for arrays. **/
    JSON_DontUseTag = 1 << 1,
    /** @brief This is the root object of the JSON string. **/
    JSON_BaseObject = 1 << 2,
};

/** @brief Parse a JSON string into a jsmntok_t token array. 

@param VolatileMemory Memory used for parsing. Can be used after usage, but expected to be wiped at the beginning of the control loop.
@param Json A string of JSON.
@param JsonLength The length of the JSON string.
@param[out] TokenArray A pointer to an array of Tokens.
@return The number of tokens in the array.
**/
s32 ParseJson(memory_arena *VolatileMemory, char const *Json,  size_t JsonLength, jsmntok_t **TokenArray);

/** @brief Begins a JSON object.

@param Json The JSON string to add the begin group to.
@param MaxLength The maximum length that can be added.
@return Number of characters added.
**/
u32 StartGroup(char *Json, u32 MaxLength);

/** @brief End a JSON object.

@param Json The JSON string to add the begin group to.
@param MaxLength The maximum length that can be added.
@param isLast True if this is the last item in a JSON group. False will add a comma for the next item.
@return Number of characters added.
**/
u32 EndGroup(char *Json, u32 MaxLength, b8 isLast);

/** @brief Creates a abs_stringptr out of a jsmntok_t Token.

@param Json The full JSON string.
@param Token A token from the JSON string.
@return A abs_stringptr from the text of the Token.
**/
abs_stringptr
TokenToStringPtr(char const *Json, jsmntok_t *Token);

/** @brief Checks if the text of the token equals the string.

@param Json The full JSON string.
@param Token The token to check.
@param Value The string to check for equality.
@return True if the token and string are the same.
**/
b8
TokenEquals(char const* Json, jsmntok_t *Token, char const* Value);

#endif //AB_JSON_H


#ifdef AB_JSON_SRC

s32
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

u32
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
