/** @file
@brief Using string fragments, usually but not exclusively sections of larger strings.
@author Amos Buchanan
@version 1.0
@date 2020
@copyright [MIT Public License](https://opensource.org/licenses/MIT)

These are functions to handle string fragments. There are also some safe string copy and find functions. `abs_stringptr` is generally used for a fragment of a larger piece of text.

# MIT License

 [MIT Public License](https://opensource.org/licenses/MIT)

Copyright 2020 Amos Buchanan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
**/


#ifndef _AB_STRING_H
#define _AB_STRING_H

#include "ab_memory.h"

/** @brief Get the length of a null-terminated string. 

@param x C-style string.
@param MaxLength Maximum length to check.
@return Length of string, or MaxLength if no null termination before then.
**/
u32 abs_StringLength(char const *x, u32 MaxLength);

/** @brief Helper to print abs_stringptr. 

Used for input to *printf() type functions.

Example Usage:
~~~c
abs_stringptr AString = "SomeString";
printf("String: %.*s", PSTRING(AString));
~~~

@param STR A abs_stringptr object.
**/
#define PSTRING(STR) STR.Length, STR.String

/** @brief Pointer and length of a character array.

This is often used for string fragments within a larger block of text. It combines the string pointer with the string length. All abs_stringptr structs are const char* strings. They are not necessarily null terminated.

**/
struct abs_stringptr
{
    /** @brief Pointer to the string. This is either a constant or a fragment in a larger string. 

Ignores nulls.
**/
    char const* String;
    /** @brief Length of the string. **/
    u32 Length;
    
    /** @brief Default Constructor. **/
    abs_stringptr(void) = default;
    
    ///@{
    /** @brief Constructor including string and length. **/
    constexpr abs_stringptr(char const *S, u32 L) : String{S}, Length{L} {}
    constexpr abs_stringptr(char const *S, s32 L) : String{S}, Length{(u32)L} {}
    ///@} 
    
    ///@{
    /** @brief Convert a null-terminated constant string directly into an abs_stringptr, up to 1024 characters. **/ 
    abs_stringptr(char const* x) {this->String = x; this->Length = abs_StringLength(x, 1024);}
    abs_stringptr(char * const x) {this->String = x; this->Length = abs_StringLength(x, 1024);}
    ///@}
    
    /** @brief convert a const char directly into an abs_stringptr. **/
    abs_stringptr(const char &x) {}
    
    /** @brief Convert from abs_stringptr directly into a char const*. 

Note that this only really works if the string is null-terminated.
**/
    operator char const *() const  { return this->String;}
};

/** @brief Compare two strings.

@param String1 Null terminated c-string.
@param String2 Null terminated c-string.
@param MaxLength Maximum number of characters to check.
@param isCaseInsensitive True for case insensitive search.
@return True if strings are equal, up to MaxLength. False if strings are unequal, or if one is null-terminated before the other.
**/
b8
abs_AreStringFragmentsEqual(char const *String1, char const *String2, u32 MaxLength, b8 isCaseInsensitive);

/** @brief Compare two strings. 

Compares 2 null-terminated strings, up to each length. False if strings are unequal, or one terminates before the other.

@param String1 Null terminated c-string.
@param String1Len Length of string 1.
@param String2 Null terminated c-string.
@param String2Len Length of string 2.
@param isCaseInsensitive True for case insensitive search.
@return True if strings are equal, including lengths. False if strings are unequal, or if one is null-terminated before the other.
**/
b8
abs_AreStringsEqual(const char *String1, u32 String1Len, const char *String2, u32 String2Len, b8 isCaseInsensitive);

/** @brief Compare two strings.

Case sensitive comparison, otherwise same as `abs_AreStringsEqual(const char *String1, u32 String1Len, const char *String2, u32 String2Len, b8 isCaseInsensitive)`.

@param String1 Null terminated c-string.
@param String1Len Length of string 1.
@param String2 Null terminated c-string.
@param String2Len Length of string 2.
@return True if strings are equal, including lengths. False if strings are unequal, or if one is null-terminated before the other.
**/
b8
abs_AreStringsEqual(char const *String1, u32 String1Len, char const *String2, u32 String2Len);

/** @brief Compare two `abs_stringptr`.

Case sensitive comparison of two `abs_stringptr`. 

@param String1 String or string fragment. May not be null-terminated.
@param String2 String or string fragment. May not be null-terminated.
@return True if strings are equal, including lengths. False if strings are unequal.
**/
b8
abs_AreStringsEqual(abs_stringptr String1, abs_stringptr String2);

/** @brief Compare a null-terminated string with a `abs_stringptr`.

Case sensitive comparison of null-terminated string and `abs_stringptr`. 

@param String Null terminated string.
@param StringLen Maximum length of null terminated string to check.
@param StringPtr Second string to check.
@return True if strings are equal, including lengths. False if strings are unequal, or if one is null-terminated before the other.
**/
b8
abs_AreStringsEqual(char const *String, u32 StringLen, abs_stringptr StringPtr);

/** @brief Find a string in a list of strings. 

@param String String to search for.
@param ListCount Number of items in the list.
@param List Pointer to the first item in the list.
@param isCaseInsensitive True if case insensitive, defaults to false.
@return Index of the matching item, or -1 if no match found.
**/
s32
abs_FindInList(abs_stringptr String, u32 ListCount, const abs_stringptr *List, b8 isCaseInsensitive = false);

/** @brief Find a string in a list of strings. 

@param SearchString Null terminated string to search for.
@param ListCount Number of items in the list.
@param List Pointer to the first item in the list.
@param isCaseInsensitive True if case insensitive, defaults to false.
@return Index of the matching item, or -1 if no match found.
**/
s32
abs_FindInList(const char *SearchString, u32 ListCount, const abs_stringptr *List, b8 isCaseInsensitive = false);

/** @brief Safe null-terminated string copy.

@param[out] DestString Destination Buffer.
@param SrcString Source Buffer.
@param Length Maximum length of Destination buffer.
@param AddTerminator True to add a null terminator to the destination string.
@return Number of characters copied.
**/
u32 abs_StringCopy(char *DestString, const char* SrcString, size_t Length, b8 AddTerminator);

/** @brief Create a string pointer out of a string.

@param Memory Memory to use for the string.
@param String Null terminated string to copy.
@return abs_stringptr to a new string.
**/
abs_stringptr
abs_CreateStringPtr(memory_arena *Memory, const char *String);

/** @brief Create a string pointer out of a constant string.

@param String Null terminated const string.
@param Length Length of the string.
@return abs_stringptr to the existing string using length.
**/
abs_stringptr
CreateStringPtr(char const *String, u32 Length);

#endif //_AB_STRING_H

#if defined(AB_STRING_SRC)
#include <string.h>

b8
abs_AreStringFragmentsEqual(char const *String1, char const *String2, u32 MaxLength, b8 isCaseInsensitive)
{
    b8 isMatch = false;
    const char *CompAt = String1;
    const char *SearchAt = String2;
    u32 StringLength = 0;
    
    while(*CompAt && *SearchAt &&
          StringLength < MaxLength)
    {
        char CompAtChar = *CompAt;
        char SearchAtChar = *SearchAt;
        if(isCaseInsensitive)
        {
            if(CompAtChar >= 'a' &&
               CompAtChar <= 'z')
            {
                CompAtChar -= 32;
            }
            if(SearchAtChar >= 'a' &&
               SearchAtChar <= 'z')
            {
                SearchAtChar -= 32;
            }
        }
        if(CompAtChar == SearchAtChar)
        {
            isMatch = true;
            ++CompAt;
            ++SearchAt;
        }
        else
        {
            isMatch = false;
            break;
        }
        
        ++StringLength;
    }
    
    return (isMatch && (StringLength == MaxLength));
    
}

b8
abs_AreStringsEqual(char const *String1, u32 String1Len, char const *String2, u32 String2Len, b8 isCaseInsensitive)
{
    b8 isMatch = false;
    if(String1Len == String2Len)
    {
        isMatch = abs_AreStringFragmentsEqual(String1, String2, String1Len, isCaseInsensitive);
        
    }
    
    return isMatch;
}

b8
abs_AreStringsEqual(char const *String1, u32 String1Len, char const *String2, u32 String2Len)
{
    return abs_AreStringsEqual(String1, String1Len, String2,  String2Len, false);
}

b8
abs_AreStringsEqual(abs_stringptr String1, abs_stringptr String2, b8 isCaseInsensitive)
{
    return abs_AreStringsEqual(String1.String, String1.Length, String2.String, String2.Length, isCaseInsensitive);
}

b8
abs_AreStringsEqual(abs_stringptr String1, abs_stringptr String2)
{
    return abs_AreStringsEqual(String1.String, String1.Length, String2.String, String2.Length, false);
}

b8
abs_AreStringsEqual(char const *String, u32 StringLen, abs_stringptr StringPtr)
{
    return abs_AreStringsEqual(String, StringLen, StringPtr.String, StringPtr.Length, false);
}

u32
abs_StringLength(char const *x, u32 MaxLength)
{
    char const *At = x;
    u32 Length = 0;
    while(Length < MaxLength)
    {
        if(*At++) {++Length;}
        else {break;}
    }
    
    return Length;
}

s32
abs_FindInList(abs_stringptr String, u32 ListCount, const abs_stringptr *List, b8 isCaseInsensitive)
{
    s32 MatchIndex = -1;
    
    for(s32 Index = 0;
        Index < (s32)ListCount;
        ++Index)
    {
        if(abs_AreStringsEqual(String.String, String.Length, List[Index].String, List[Index].Length, isCaseInsensitive))
        {
            MatchIndex = Index;
            break;
        }
    }
    
    return MatchIndex;
}

s32
abs_FindInList(const char *SearchString, u32 ListCount, const abs_stringptr *List, b8 isCaseInsensitive)
{
    s32 MatchIndex = -1;
    u32 SearchStringLen = (u32)strlen(SearchString);
    
    for(s32 Index = 0;
        Index < (s32)ListCount;
        ++Index)
    {
        if(abs_AreStringsEqual(SearchString, SearchStringLen, List[Index], (u32)strlen(List[Index]), isCaseInsensitive))
        {
            MatchIndex = Index;
            break;
        }
    }
    
    return MatchIndex;
}

u32
abs_StringCopy(char *DestString, const char* SrcString, size_t Length, b8 AddTerminator)
{
    u32 CharsCopied = 0;
    size_t MaxLength = AddTerminator ? Length-1 : Length;
    
    char *Dest = DestString;
    char const *Src = SrcString;
    for(u32 Index = 0; Index < MaxLength; ++Index)
    {
        if(*Src)
        {
            *Dest++ = *Src++;
            ++CharsCopied;
        }
        else
        {
            break;
        }
    }
    
    if(AddTerminator)
    {
        *Dest = 0;
    }
    
    return CharsCopied;
}
//return strncpy(dest, src, count);

abs_stringptr
abs_CreateStringPtr(memory_arena *Memory, const char *String)
{
    u32 Length = abs_StringLength(String, (u32)(abm_GetMemoryLeft(Memory)-1));
    char *StringPtr = abm_PushArray(Memory, Length+1, char);
    
    abs_StringCopy(StringPtr, String, Length+1, true);
    abs_stringptr Result = abs_stringptr(StringPtr, Length);
    
    return Result;
}

abs_stringptr
abs_CreateStringPtr(char const *String, u32 Length)
{
    abs_stringptr Result = {String, Length};
    
    return Result;
}


abs_stringptr
abs_Capitalize(abs_stringptr String, memory_arena *Memory)
{
    char *NewString = abm_PushArray(Memory, String.Length, char);
    for(u32 i = 0; i < String.Length; ++i)
    {
        if(String.String[i] >= 'a' && String.String[i] <= 'z')
        {
            NewString[i] = String.String[i] - 0x20;
        }
        else
        {
            NewString[i] = String.String[i];
        }
    }
    abs_stringptr Result = {NewString, String.Length};
    
    return Result;
    
}

abs_stringptr
abs_Lowercase(abs_stringptr String, memory_arena *Memory)
{
    char *NewString = abm_PushArray(Memory, String.Length, char);
    for(u32 i = 0; i < String.Length; ++i)
    {
        if(String.String[i] >= 'A' && String.String[i] <= 'Z')
        {
            NewString[i] = String.String[i] + 0x20;
        }
        else
        {
            NewString[i] = String.String[i];
        }
    }
    abs_stringptr Result = {NewString, String.Length};
    
    return Result;
    
}


#undef AB_STRING_SRC
#endif

