/* date = May 21st 2020 7:32 am */

#ifndef AB_LEXER_H
#define AB_LEXER_H

#include <stdlib.h> 

#include "ab_string.h"
#include "ab_file.h"

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
    TOKEN_Ampersand,
    TOKEN_Pound,
    
    TOKEN_String,
    TOKEN_Identifier,
    TOKEN_Number,
    
    TOKEN_EndOfStream,
    
    TOKEN_Count
};

struct token
{
    token_type Type;
    st_ptr Text;
};

struct lexer
{
    char *At;
    s32 NumCurrentlyOpenBraces;
    s32 LineNumber;
};

void
abl_InitLexer(lexer *Lexer, file_data *File);

token
abl_GetToken(lexer *Lexer);

token 
abl_PeekToken(lexer *Lexer);

s32
abl_TokenToS32(token Token);

b8
abl_TokenEquals(token Token, st_ptr Match);

b8
abl_TokensEquals(token A, token B);

#endif //AB_LEXER_H

#if defined(AB_LEXER_SRC)

void
abl_InitLexer(lexer *Lexer, file_data *File)
{
    Lexer->At = File->FileData;
    Lexer->NumCurrentlyOpenBraces = 0;
    Lexer->LineNumber = 0;
}

s32
abl_TokenToS32(token Token)
{
    s32 Value = 0;
    if(Token.Type == TOKEN_Number)
    {
        Value = atoi(Token.Text.String);
#if 0
        char NumberString[20] = {};
        if((Token.Text.Length+1) < ArrayCount(NumberString))
        {
            strncpy(NumberString, Token.Text, Token.Length);
            Value = atoi(NumberString);
        }
#endif
    }
    
    return Value;
}

b8
abl_TokenEquals(token Token, st_ptr Match)
{
    b8 Result = st_AreStringsEqual(Token.Text, Match);
    
    return Result;
} // TokenEquals

b8
abl_TokensEquals(token A, token B)
{
    b8 isMatch = st_AreStringsEqual(A.Text, B.Text);
    
    return isMatch;
}

inline b8
abl_IsEndOfLine(char C)
{
    b8 Result = ((C == '\n') || (C == '\r'));
    
    return Result;
}

inline b8
abl_IsWhitespace(char C)
{
    b8 Result = ((C == ' ') ||
                 (C == '\f') ||
                 (C == '\t') ||
                 (C == '\v')
                 );
    
    return Result;
}

inline b8
abl_IsAlpha(char C)
{
    b8 Result = ((C >= 'a' && C <= 'z') ||
                 (C >= 'A' && C <= 'Z') ||
                 (C == '_'));
    
    return Result;
}

inline b8
abl_IsNumeric(char C)
{
    b8 Result = ((C >= '0') && (C <= '9'));
    
    return Result;
}

void
abl_RemoveIgnorables(lexer *Tokenizer)
{
    for(;;)
    {
        if(abl_IsWhitespace(Tokenizer->At[0]))
        {
            ++Tokenizer->At;
        }
        else if (abl_IsEndOfLine(Tokenizer->At[0]))
        {
            ++Tokenizer->At;
            ++Tokenizer->LineNumber;
        }
        else if ((Tokenizer->At[0] == '/') &&
                 (Tokenizer->At[1] == '/'))
        {
            Tokenizer->At += 2;
            while(Tokenizer->At[0] &&
                  !abl_IsEndOfLine(Tokenizer->At[0]))
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
                if (abl_IsEndOfLine(Tokenizer->At[0]))
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
abl_GetToken(lexer *Tokenizer)
{
    abl_RemoveIgnorables(Tokenizer);
    
    token Token = {};
    Token.Text = Tokenizer->At;
    Token.Text.Length = 1;
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
        
        case '&':
        {Token.Type = TOKEN_Ampersand;} break;
        
        case '#':
        {Token.Type = TOKEN_Pound;} break;
        
        case '"':
        {
            Token.Type = TOKEN_String;
            Token.Text.String = Tokenizer->At;
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
            
            Token.Text.Length = (u32)(Tokenizer->At - Token.Text);
            if(Tokenizer->At[0] == '"')
            {
                ++Tokenizer->At;
            }
        } break;
        
        default:
        {
            if(abl_IsAlpha(C))
            {
                Token.Type = TOKEN_Identifier;
                while(abl_IsAlpha(Tokenizer->At[0]) ||
                      abl_IsNumeric(Tokenizer->At[0]))
                {
                    ++Tokenizer->At;
                }
                
                Token.Text.Length = (u32)(Tokenizer->At - Token.Text);
            }
            else if(abl_IsNumeric(C))
            {
                // NOTE(amos): Ideally, some sort of text to digit analizer here, but there
                // are a lot of corner cases and I'm not going to worry about it unless necessary.
                
                Token.Type = TOKEN_Number;
                while(abl_IsAlpha(Tokenizer->At[0]) ||
                      abl_IsNumeric(Tokenizer->At[0]) ||
                      (Tokenizer->At[0] == '.'))
                {
                    ++Tokenizer->At;
                }
                
                Token.Text.Length = (u32)(Tokenizer->At - Token.Text);
            }
            else
            {
                Token.Type = TOKEN_Unknown;
            }
        } break;
    }
    
    return Token;
} // GetToken


token
abl_PeekToken(lexer *Lexer)
{
    char *Start = Lexer->At;
    token Token = abl_GetToken(Lexer);
    Lexer->At = Start;
    
    return Token;
}

#undef AB_LEXER_SRC
#endif
