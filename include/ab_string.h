/** @file
@brief Using string fragments, usually but not exclusively sections of larger strings.
@author Amos Buchanan
@version 1.0
@date 2020

These are functions to handle string fragments. There are also some safe string copy and find functions. `st_ptr` is generally used for a fragment of a larger piece of text.

This is a single-file library. You may include it as a header just as any other. Add the following define to include the source *once* per project:

~~~c
#define AB_STRING_SRC
#include "ab_string.h"
~~~

**/


#ifndef AB_STRING_H
#define AB_STRING_H

#include "ab_common.h"

/** @brief Get the length of a null-terminated string. 

@param x C-style string.
@param MaxLength Maximum length to check.
@return Length of string, or MaxLength if no null termination before then.
**/
u32 st_StringLength(char const *x, u32 MaxLength);

/** @brief Helper to print st_ptr. 

Used for input to *printf() type functions.

Example Usage:
~~~c
st_ptr AString = "SomeString";
printf("String: %.*s", PSTRING(AString));
~~~

@param STR A st_ptr object.
**/
#define PSTRING(STR) STR.Length, STR.String

/** @brief Pointer and length of a character array.

This is often used for string fragments within a larger block of text. It combines the string pointer with the string length. All st_ptr structs are const char* strings. They are not necessarily null terminated.

**/
struct st_ptr
{
    /** @brief Pointer to the string. This is either a constant or a fragment in a larger string. 

Ignores nulls.
**/
    char const* String;
    /** @brief Length of the string. **/
    u32 Length;
    
    /** @brief Default Constructor. **/
    st_ptr(void) = default;
    
    ///@{
    /** @brief Constructor including string and length. **/
    constexpr st_ptr(char const *S, u32 L) : String{S}, Length{L} {}
    constexpr st_ptr(char const *S, s32 L) : String{S}, Length{(u32)L} {}
    ///@} 
    
    ///@{
    /** @brief Convert a null-terminated constant string directly into an st_ptr, up to 1024 characters. **/ 
    st_ptr(char const* x) {this->String = x; this->Length = st_StringLength(x, 1024);}
    st_ptr(char * const x) {this->String = x; this->Length = st_StringLength(x, 1024);}
    ///@}
    
    /** @brief convert a const char directly into an st_ptr. **/
    st_ptr(const char &x) {}
    
    /** @brief Convert from st_ptr directly into a char const*. 

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
st_AreStringsEqual(char const *String1, char const *String2, u32 MaxLength, b8 isCaseInsensitive);

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
st_AreStringsEqual(const char *String1, u32 String1Len, const char *String2, u32 String2Len, b8 isCaseInsensitive);

/** @brief Compare two strings.

Case sensitive comparison, otherwise same as `st_AreStringsEqual(const char *String1, u32 String1Len, const char *String2, u32 String2Len, b8 isCaseInsensitive)`.

@param String1 Null terminated c-string.
@param String1Len Length of string 1.
@param String2 Null terminated c-string.
@param String2Len Length of string 2.
@return True if strings are equal, including lengths. False if strings are unequal, or if one is null-terminated before the other.
**/
b8
st_AreStringsEqual(char const *String1, u32 String1Len, char const *String2, u32 String2Len);

/** @brief Compare two `st_ptr`.

Case sensitive comparison of two `st_ptr`. 

@param String1 String or string fragment. May not be null-terminated.
@param String2 String or string fragment. May not be null-terminated.
@return True if strings are equal, including lengths. False if strings are unequal.
**/
b8
st_AreStringsEqual(st_ptr String1, st_ptr String2);

/** @brief Compare two `st_ptr`.

Case sensitive comparison of two `st_ptr`. 

@param String1 String or string fragment. May not be null-terminated.
@param String2 String or string fragment. May not be null-terminated.
@param isCaseInsensitive True if it should be a case-insensitive match.
@return True if strings are equal, including lengths. False if strings are unequal.
**/
b8 st_AreStringsEqual(st_ptr String1, st_ptr String2, b8 isCaseInsensiteive);


/** @brief Compare a null-terminated string with a `st_ptr`.

Case sensitive comparison of null-terminated string and `st_ptr`. 

@param String Null terminated string.
@param StringLen Maximum length of null terminated string to check.
@param StringPtr Second string to check.
@return True if strings are equal, including lengths. False if strings are unequal, or if one is null-terminated before the other.
**/
b8
st_AreStringsEqual(char const *String, u32 StringLen, st_ptr StringPtr);

/** @brief Find a string in a list of strings. 

@param String String to search for.
@param ListCount Number of items in the list.
@param List Pointer to the first item in the list.
@param isCaseInsensitive True if case insensitive, defaults to false.
@return Index of the matching item, or -1 if no match found.
**/
s32
st_FindInList(st_ptr String, u32 ListCount, const st_ptr *List, b8 isCaseInsensitive = false);

/** @brief Find a string in a list of strings. 

@param SearchString Null terminated string to search for.
@param ListCount Number of items in the list.
@param List Pointer to the first item in the list.
@param isCaseInsensitive True if case insensitive, defaults to false.
@return Index of the matching item, or -1 if no match found.
**/
s32
st_FindInList(const char *SearchString, u32 ListCount, const st_ptr *List, b8 isCaseInsensitive = false);

/** @brief Safe null-terminated string copy.

@param[out] DestString Destination Buffer.
@param SrcString Source Buffer.
@param Length Maximum length of Destination buffer.
@param AddTerminator True to add a null terminator to the destination string.
@return Number of characters copied.
**/
u32 st_StringCopy(char *DestString, const char* SrcString, size_t Length, b8 AddTerminator);

/** @brief Create a string pointer out of a string.

This function will copy the string out of the source and into
a location specified by Dest, and return a st_ptr to the copied 
string.

@param Dest Destination location to copy the input string to.
@param DestMaxLength Maximum length of the output string.
@param Src Null terminated string to copy.
@return st_ptr to a new string.
**/
st_ptr
st_CreateStringPtr(char *Dest, size_t DestMaxLength, const char *Src);

/** @brief Create a string pointer out of a constant string.

@param String Null terminated const string.
@param Length Length of the string.
@return st_ptr to the existing string using length.
**/
st_ptr
st_CreateStringPtr(char const *String, u32 Length);

/** @brief Return an all-caps version of the input string.

@param Dest The destination to write the capitalized string to.
@param DestMaxLength The maximum length of the string.
@param Src The string to capitalize.
@return A new st_ptr for the capitalized string.
**/
st_ptr st_Capitalize(char *Dest, size_t DestMaxLength, st_ptr Src);

/** @brief Return an all-lowercase version of the input string.

@param Dest The destination to write the lowercased string to.
@param DestMaxLength The maximum length of the destination string.
@param Src The string to lowercase
@return A new st_ptr for the lowercased string.
**/
st_ptr st_Lowercase(char *Dest, size_t DestMaxLength, st_ptr String);

#endif //AB_STRING_H

#if defined(AB_STRING_SRC)

b8
st_AreStringsEqual(char const *String1, char const *String2, u32 MaxLength, b8 isCaseInsensitive)
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
st_AreStringsEqual(char const *String1, u32 String1Len, char const *String2, u32 String2Len, b8 isCaseInsensitive)
{
    b8 isMatch = false;
    if(String1Len == String2Len)
    {
        isMatch = st_AreStringsEqual(String1, String2, String1Len, isCaseInsensitive);
        
    }
    
    return isMatch;
}

b8
st_AreStringsEqual(char const *String1, u32 String1Len, char const *String2, u32 String2Len)
{
    return st_AreStringsEqual(String1, String1Len, String2,  String2Len, false);
}

b8
st_AreStringsEqual(st_ptr String1, st_ptr String2, b8 isCaseInsensitive)
{
    return st_AreStringsEqual(String1.String, String1.Length, String2.String, String2.Length, isCaseInsensitive);
}

b8
st_AreStringsEqual(st_ptr String1, st_ptr String2)
{
    return st_AreStringsEqual(String1.String, String1.Length, String2.String, String2.Length, false);
}

b8
st_AreStringsEqual(char const *String, u32 StringLen, st_ptr StringPtr)
{
    return st_AreStringsEqual(String, StringLen, StringPtr.String, StringPtr.Length, false);
}

u32
st_StringLength(char const *x, u32 MaxLength)
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
st_FindInList(st_ptr String, u32 ListCount, const st_ptr *List, b8 isCaseInsensitive)
{
    s32 MatchIndex = -1;
    
    for(s32 Index = 0;
        Index < (s32)ListCount;
        ++Index)
    {
        if(st_AreStringsEqual(String.String, String.Length, List[Index].String, List[Index].Length, isCaseInsensitive))
        {
            MatchIndex = Index;
            break;
        }
    }
    
    return MatchIndex;
}

s32
st_FindInList(const char *SearchString, u32 ListCount, const st_ptr *List, b8 isCaseInsensitive)
{
    s32 MatchIndex = -1;
    const u32 MaxStringLength = 1024;
    
    for(s32 Index = 0;
        Index < (s32)ListCount;
        ++Index)
    {
        if(st_AreStringsEqual(SearchString, MaxStringLength, List[Index], isCaseInsensitive))
        {
            MatchIndex = Index;
            break;
        }
    }
    
    return MatchIndex;
}

u32
st_StringCopy(char *DestString, const char* SrcString, size_t Length, b8 AddTerminator)
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

st_ptr
st_CreateStringPtr(char *Dest, size_t DestMaxLength, const char *Src)
{
    u32 Length = st_StringLength(Src, (u32)DestMaxLength);
    char *StringPtr = Dest;
    
    st_StringCopy(StringPtr, Src, Length+1, true);
    st_ptr Result = st_ptr(StringPtr, Length);
    
    return Result;
}

st_ptr
st_CreateStringPtr(char const *String, u32 Length)
{
    st_ptr Result = {String, Length};
    
    return Result;
}


st_ptr
st_Capitalize(char *Dest, size_t DestMaxLength, st_ptr Src)
{
    // NOTE(amos): Refuse to capitalize a string if there isn't enough memory
    //   to create the new string.
    if(DestMaxLength < Src.Length)
    {
        return {};
    }
    char *NewString = Dest;
    for(u32 i = 0; i < Src.Length; ++i)
    {
        if(Src.String[i] >= 'a' && Src.String[i] <= 'z')
        {
            NewString[i] = Src.String[i] - 0x20;
        }
        else
        {
            NewString[i] = Src.String[i];
        }
    }
    st_ptr Result = {NewString, Src.Length};
    
    return Result;
    
}

st_ptr
st_Lowercase(char *Dest, size_t DestMaxLength, st_ptr Src)
{
    // NOTE(amos): Refuse to lowercase a string if there isn't enough memory
    //   to create the new string.
    if(DestMaxLength < Src.Length)
    {
        return {};
    }
    
    char *NewString = Dest;
    for(u32 i = 0; i < Src.Length; ++i)
    {
        if(Src.String[i] >= 'A' && Src.String[i] <= 'Z')
        {
            NewString[i] = Src.String[i] + 0x20;
        }
        else
        {
            NewString[i] = Src.String[i];
        }
    }
    st_ptr Result = {NewString, Src.Length};
    
    return Result;
    
}


#undef AB_STRING_SRC
#endif

