#ifndef _AB_STRING_H
#define _AB_STRING_H

#include "ab_memory.h"

// String Length, not including the final '\0', if there is one.
u32 abs_StringLength(char const *x, u32 MaxLength);
#define PSTRING(STR) STR.Length, STR.String

struct abs_stringptr
{
    char const* String;
    u32 Length;
    
    abs_stringptr(void) = default;
    constexpr abs_stringptr(char const *S, u32 L) : String{S}, Length{L} {}
    constexpr abs_stringptr(char const *S, s32 L) : String{S}, Length{(u32)L} {}
    abs_stringptr(char const* x) {this->String = x; this->Length = abs_StringLength(x, 1024);}
    abs_stringptr(char * const x) {this->String = x; this->Length = abs_StringLength(x, 1024);}
    abs_stringptr(const char &x) {}
    operator char const *() const  { return this->String;}
};


b8
abs_AreStringFragmentsEqual(char const *String1, char const *String2, u32 MaxLength, b8 isCaseInsensitive);

b8
abs_AreStringsEqual(const char *String1, u32 String1Len, const char *String2, u32 String2Len, b8 isCaseInsensitive);

b8
abs_AreStringsEqual(char const *String1, u32 String1Len, char const *String2, u32 String2Len);

b8
abs_AreStringsEqual(abs_stringptr String1, abs_stringptr String2);

b8
abs_AreStringsEqual(char const *String, u32 StringLen, abs_stringptr StringPtr);

u32
abs_FindInList(abs_stringptr String, u32 ListCount, const abs_stringptr *List, b8 isCaseInsensitive = false);

u32
abs_FindInList(const char *SearchString, u32 ListCount, const abs_stringptr *List, b8 isCaseInsensitive = false);

u32 abs_StringCopy( char *, const char *, size_t, b8 AddTerminator = true);

abs_stringptr
abs_CreateStringPtr(memory_arena *Memory, const char *String);

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
    return abs_AreStringsEqual(String1, String1Len, String2,  String2Len, true);
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
    return abs_AreStringsEqual(String, StringLen, StringPtr.String, StringPtr.Length, true);
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

u32
abs_FindInList(abs_stringptr String, u32 ListCount, const abs_stringptr *List, b8 isCaseInsensitive)
{
    u32 MatchIndex = ListCount;
    
    for(u32 Index = 0;
        Index < ListCount;
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

u32
abs_FindInList(const char *SearchString, u32 ListCount, const abs_stringptr *List, b8 isCaseInsensitive)
{
    u32 MatchIndex = ListCount;
    u32 SearchStringLen = (u32)strlen(SearchString);
    
    for(u32 Index = 0;
        Index < ListCount;
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
    
    abs_StringCopy(StringPtr, String, Length+1);
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

