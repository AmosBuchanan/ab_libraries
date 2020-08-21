#if !defined(AB_PREPROCESSOR_H)
/* ========================================================================
   $File: $
   $Date: $
   $Revision: $
   $Creator: Amos Buchanan $
   $Email: amos.buchanan@traxxautomation.com $
   $Notice: (C) Copyright 2015 Traxx Automation. All Rights Reserved. $
   ======================================================================== */

#define AB_PREPROCESSOR_H

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <stdarg.h>

#include "ab_common.h"

#define AB_MEMORY_SRC
#include "ab_memory.h"

#define AB_STRING_SRC
#include "ab_string.h"

#define AB_FILE_SRC
#include "ab_file.h"

#define STB_SPRINTF_IMPLEMENTATION
#include "stb_sprintf.h"

/////////////////////////////
/// Definitions

enum token_type
{
    TOKEN_Unknown,
    
    TOKEN_OpenParen,
    TOKEN_CloseParen,
    TOKEN_Colon,
    TOKEN_Semicolon,
    TOKEN_Comma,
    TOKEN_Asterisk,
    TOKEN_OpenBracket,
    TOKEN_CloseBracket,
    TOKEN_OpenBrace,
    TOKEN_CloseBrace,
    TOKEN_Dollar,
    TOKEN_Backslash,
    TOKEN_Foreslash,
    
    TOKEN_String,
    TOKEN_Identifier,
    TOKEN_Number,
    
    TOKEN_EndOfStream,
    
    TOKEN_Count
};

enum keyword_type
{
    KEYWORD_None,
    KEYWORD_Enum,
    KEYWORD_Struct
};

const char *TokenStrings[TOKEN_Count] =
{
    "Unknown",
    "Open Paren",
    "Close Paren",
    "Colon",
    "Semicolon",
    "Comma",
    "Asterisk",
    "OpenBracket",
    "CloseBracket",
    "OpenBrace",
    "CloseBrace",
    "Dollar",
    "Backslash",
    "Foreslash",
    "String",
    "Identifier",
    "Number",
    "EndOfStream",
};

struct token
{
    token_type Type;
    
    u32 Length;
    char *Text;
};

struct token_tag
{
    token Name;
    token Option;
    
    token_tag *Next;
};

struct token_variable
{
    token Type;
    token Name;
    b8 isArray;
    b8 isPtr;
    b8 isConst;
    u32 ArrayCount;
    token ArrayCountToken;
    
    token_tag *TagList;
    
    token_variable *Next;
    token_variable *Prev;
};

struct token_label
{
    token Name;
    
    token_tag *TagList;
    
    token_label *Next;
    token_label *Prev;
};

struct token_struct
{
    keyword_type Type;
    token Name;
    token Start;
    token End;
    
    u32 ItemCount;
    token_tag *TagList;
    
    union
    {
        token_variable *VariableList;
        token_label *LabelList;
    };
    
    token_struct *Next;
};

struct tokenizer
{
    char *At;
    s32 NumCurrentlyOpenBraces;
    s32 LineNumber;
    
    token_tag *LastTagList;
    
    token_struct *StructList;
    token_struct *EnumClassList;
};

struct output_data
{
    char OutputString[Kilobytes(200)];
    size_t Used;
    
    output_data *Next;
};

struct string_params
{
    token ParentToken;
    token Desc;
    token Strings;
    token Count;
    b8 isError;
};

struct params
{
    token Identifier;
    token Value;
    params *Next;
};

struct token_list_item
{
    token Token;
    token_list_item *Next;
    token_list_item *Prev;
};

//////////////////////////////////////////////////////
/// Misc Functions

inline void
InitializeList(token_list_item *List)
{
    List->Next = List;
    List->Prev = List;
}

token_list_item *
AddToEndOfTokenList(memory_arena *Memory, token_list_item *HeadItem, token Token)
{
    token_list_item *NewItem =  PushStruct(Memory, token_list_item);
    NewItem->Token = Token;
    if(!HeadItem)
    {
        HeadItem = NewItem;
        HeadItem->Next = HeadItem;
        HeadItem->Prev = HeadItem;
    }
    else
    {
        NewItem->Prev = HeadItem->Prev;
        NewItem->Next = HeadItem;
        NewItem->Prev->Next = NewItem;
        HeadItem->Prev = NewItem;
    }
    
    return HeadItem;
} // AddToEndOfTokenList


///////////////////////////////////////////////////////
/// File Operations


///////////////////////////////////////////////////////
/// Token Processing

s32
TokenToNumber(token Token)
{
    s32 Value = 0;
    if(Token.Type == TOKEN_Number)
    {
        char NumberString[20] = {};
        if((Token.Length+1) < ArrayCount(NumberString))
        {
            strncpy(NumberString, Token.Text, Token.Length);
            Value = atoi(NumberString);
        }
    }
    
    return Value;
}

b8
TokenEquals(token Token, const char* Match)
{
    const char *Ch = Match;
    b8 isMatch = 0;
    for (u32 Index = 0;
         Index < Token.Length;
         ++Index, ++Ch)
    {
        if(Token.Text[Index] == *Ch)
        {
            isMatch = true;
        }
        else
        {
            isMatch = false;
            break;
        }
    }
    
    b8 Result = (isMatch) && (*Ch == 0);
    return Result;
} // TokenEquals

b8
TokensMatch(token A, token B)
{
    b8 isMatch = false;
    
    if(A.Length == B.Length)
    {
        for(u32 Index = 0;
            Index < A.Length;
            ++Index)
        {
            if(A.Text[Index] == B.Text[Index])
            {
                isMatch = true;
            }
            else
            {
                isMatch = false;
                break;
            }
        }
    }
    
    return isMatch;
}

inline b8
IsEndOfLine(char C)
{
    b8 Result = ((C == '\n') || (C == '\r'));
    
    return Result;
}

inline b8
IsWhitespace(char C)
{
    b8 Result = ((C == ' ') ||
                 (C == '\f') ||
                 (C == '\t') ||
                 (C == '\v')
                 );
    
    return Result;
}

inline b8
IsAlpha(char C)
{
    b8 Result = ((C >= 'a' && C <= 'z') ||
                 (C >= 'A' && C <= 'Z') ||
                 (C == '_'));
    
    return Result;
}

inline b8
IsNumeric(char C)
{
    b8 Result = ((C >= '0') && (C <= '9'));
    
    return Result;
}

void
RemoveIgnorables(tokenizer *Tokenizer)
{
    for(;;)
    {
        if(IsWhitespace(Tokenizer->At[0]))
        {
            ++Tokenizer->At;
        }
        else if (IsEndOfLine(Tokenizer->At[0]))
        {
            ++Tokenizer->At;
            ++Tokenizer->LineNumber;
        }
        else if ((Tokenizer->At[0] == '/') &&
                 (Tokenizer->At[1] == '/'))
        {
            Tokenizer->At += 2;
            while(Tokenizer->At[0] &&
                  !IsEndOfLine(Tokenizer->At[0]))
            {
                ++Tokenizer->At;
            }
        }
        else if((Tokenizer->At[0] == '/') &&
                (Tokenizer->At[1] == '*'))
        {
            Tokenizer->At += 2;
            while(Tokenizer->At[0] &&
                  (Tokenizer->At[0] == '*') &&
                  (Tokenizer->At[1] == '/'))
            {
                
                ++Tokenizer->At;
                if (IsEndOfLine(Tokenizer->At[0]))
                {
                    ++Tokenizer->LineNumber;
                }
                
            }
            
            if(Tokenizer->At[0] == '*')
            {
                Tokenizer->At += 2;
            }
        }
        else
        {
            break;
        }
    }
} // RemoveIgnorables

token
GetToken(tokenizer *Tokenizer)
{
    RemoveIgnorables(Tokenizer);
    
    token Token = {};
    Token.Length = 1;
    Token.Text = Tokenizer->At;
    char C = Tokenizer->At[0];
    ++Tokenizer->At;
    switch(C)
    {
        case '\0':
        {Token.Type = TOKEN_EndOfStream;} break;
        
        case '(':
        {Token.Type = TOKEN_OpenParen;} break;
        
        case ')':
        {Token.Type = TOKEN_CloseParen;} break;
        
        case '[':
        {Token.Type = TOKEN_OpenBracket;} break;
        
        case ']':
        {Token.Type = TOKEN_CloseBracket;} break;
        
        case '{':
        {Token.Type = TOKEN_OpenBrace; ++Tokenizer->NumCurrentlyOpenBraces;} break;
        
        case '}':
        {Token.Type = TOKEN_CloseBrace; --Tokenizer->NumCurrentlyOpenBraces;} break;
        
        case ':':
        {Token.Type = TOKEN_Colon;} break;
        
        case ';':
        {Token.Type = TOKEN_Semicolon;} break;
        
        case ',':
        {Token.Type = TOKEN_Comma;} break;
        
        case '$':
        {Token.Type = TOKEN_Dollar;} break;
        
        case '*':
        {Token.Type = TOKEN_Asterisk;} break;
        
        case '\\':
        {Token.Type = TOKEN_Backslash;} break;
        
        case '/':
        {Token.Type = TOKEN_Foreslash;} break;
        
        case '"':
        {
            Token.Type = TOKEN_String;
            Token.Text = Tokenizer->At;
            while(Tokenizer->At[0] &&
                  (Tokenizer->At[0] != '"'))
            {
                if((Tokenizer->At[0] == '\\') &&
                   (Tokenizer->At[1]))
                {
                    ++Tokenizer->At;
                }
                ++Tokenizer->At;
            }
            
            Token.Length = (u32)(Tokenizer->At - Token.Text);
            if(Tokenizer->At[0] == '"')
            {
                ++Tokenizer->At;
            }
        } break;
        
        default:
        {
            if(IsAlpha(C))
            {
                Token.Type = TOKEN_Identifier;
                while(IsAlpha(Tokenizer->At[0]) ||
                      IsNumeric(Tokenizer->At[0]))
                {
                    ++Tokenizer->At;
                }
                
                Token.Length = (u32)(Tokenizer->At - Token.Text);
            }
            else if(IsNumeric(C))
            {
                // NOTE(amos): Ideally, some sort of text to digit analizer here, but there
                // are a lot of corner cases and I'm not going to worry about it unless necessary.
                
                Token.Type = TOKEN_Number;
                while(IsAlpha(Tokenizer->At[0]) ||
                      IsNumeric(Tokenizer->At[0]) ||
                      (Tokenizer->At[0] == '.'))
                {
                    ++Tokenizer->At;
                }
                
                Token.Length = (u32)(Tokenizer->At - Token.Text);
            }
            else
            {
                Token.Type = TOKEN_Unknown;
            }
        } break;
    }
    
    return Token;
} // GetToken

#define PrintError(Line, String, ...) fprintf(stderr, "%s:%d: error: " String "\n", __FILE__, Line, __VA_ARGS__);


#define RequireToken(Tokenizer, Type) RequireToken_(Tokenizer,Type,__FILE__, Tokenizer->LineNumber)
b8
RequireToken_(tokenizer *Tokenizer, token_type Type, const char* FileName, u32 Line)
{
    token Token = GetToken(Tokenizer);
    b8 Result = (Token.Type == Type);
    
    if(!Result)
    {
        //fprintf(stderr, "%s:%d Error: Expecting token '%s', but recieved token '%.*s'.\n", FileName, Line, TokenStrings[Type], (int)Token.Length, Token.Text);
    }
    return Result;
} // RequireToken_

inline void
WriteStringWithTokenToOutput(output_data *Output, const char* String, token Token)
{
    int Index = (int)Output->Used;
    Output->Used += sprintf(&Output->OutputString[Index], String, (int)Token.Length, Token.Text);
}

inline void
WriteString(output_data *Output, const char *String, ...)
{
    va_list Args;
    va_start (Args, String);
    
    size_t Index = Output->Used;
    int NumChars = vsprintf(&Output->OutputString[Index], String, Args);
    if(NumChars > 0)
    {
        Output->Used += NumChars;
    }
    
    va_end(Args);
} // PrintStringToOutput

inline void
CopyString(output_data *Output, const char *String)
{
    size_t Space = ArrayCount(Output->OutputString) - Output->Used;
    size_t Length = strnlen(String, Space);
    if(Length < Space)
    {
        strncpy(&Output->OutputString[Output->Used], String, Length);
        Output->Used += Length;
    }
}

inline void
WriteOutputToFile(const char* Filename, output_data *Output)
{
    FILE *File = fopen(Filename, "w");
    
    fwrite(&Output->OutputString, Output->Used, 1, File);
    
    fclose(File);
}

inline void
WriteOutputToFile(FILE *File, output_data *Output)
{
    fwrite(&Output->OutputString, Output->Used, 1, File);
}

inline void
WriteWarningToFile(FILE *File)
{
    const char FileWarning[] = "/** This file was autogenerated. Do not edit directly, your changes will get over-written. **/\n\n";
    fwrite(FileWarning, ArrayCount(FileWarning) - 1, 1, File);
    
}


///////////////////////////////////////////////////////////////////////////
/// Handle Tokens

#endif

