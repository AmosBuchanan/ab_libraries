/* date = July 25th 2020 7:41 am */

#ifndef AB_PARSER_H
#define AB_PARSER_H

#include "ab_lexer.h"

#define InitList(Sentinal) \
{ \
Sentinal.Next = &Sentinal; \
Sentinal.Prev = &Sentinal; \
}

#define PushOntoList(Sentinal,NewItem) \
{ \
NewItem->Next = &Sentinal; \
NewItem->Prev = Sentinal.Prev; \
Sentinal.Prev->Next = NewItem; \
Sentinal.Prev = NewItem; \
}

#define PushListOntoList(ToSentinal, FromSentinal) \
{ \
FromSentinal.Prev->Next = &ToSentinal; \
FromSentinal.Next->Prev = ToSentinal.Prev; \
ToSentinal.Prev->Next = FromSentinal.Next; \
ToSentinal.Prev = FromSentinal.Prev; \
}

struct tag
{
    abs_stringptr Name;
    abs_stringptr Option;
    
    tag *Next;
    tag *Prev;
};

enum custom_type
{
    CT_None,
    CT_Struct,
    CT_Union,
    CT_Class,
    CT_Enum,
};

struct term_typeexpr
{
    abs_stringptr Type;
    abs_stringptr Name;
    
    b8 isPtr;
    b8 isReference;
    b8 isConst;
    b8 isArray;
    s32 ArrayLength;
    custom_type CustomType;
    
    term_typeexpr *Next;
    term_typeexpr *Prev;
};

struct term_definedfunction
{
    abs_stringptr Define;
    abs_stringptr Name;
    
    term_definedfunction *Next;
    term_definedfunction *Prev;
};

struct term_statemachine
{
    abs_stringptr Function;
    abs_stringptr Type;
    abs_stringptr Cmd;
    
    term_typeexpr TypeListSentinal;
    
    term_statemachine *Next;
    term_statemachine *Prev;
};

struct term_structitem
{
    term_typeexpr *Type;
    tag TagListSentinal;
    
    term_structitem *Next;
    term_structitem *Prev;
};

struct term_struct
{
    abs_stringptr Name;
    tag TagListSentinal;
    term_structitem ItemListSentinal;
    u32 ItemCount;
    
    term_struct *Next;
    term_struct *Prev;
};

struct term_enumitem
{
    abs_stringptr Name;
    tag TagListSentinal;
    
    term_enumitem *Next;
    term_enumitem *Prev;
};

struct term_enum
{
    abs_stringptr Name;
    tag TagListSentinal;
    term_enumitem ItemListSentinal;
    u32 ItemCount;
    
    term_enum *Next;
    term_enum *Prev;
};

struct term_function
{
    abs_stringptr Name;
    tag TagListSentinal;
    term_typeexpr TypeListSentinal;
    u32 TypeCount;
    
    term_function *Next;
    term_function *Prev;
};

struct term_statefunction
{
    
    term_statefunction *Next;
    term_statefunction *Prev;
};

struct parser
{
    memory_arena *Memory;
    
    term_struct StructListSentinal;
    term_enum EnumListSentinal;
    term_function FunctionListSentinal;
    term_statemachine StateMachineListSentinal;
    term_definedfunction DefinedFunctionListSentinal;
};

struct output_data
{
    char OutputString[Kilobytes(200)];
    size_t Used;
    
    output_data *Next;
};

tag ParseTag(lexer *Lexer, parser *Parser);

#endif //AB_PARSER_H

#if defined(AB_PARSER_SRC)

b8
RequireToken(lexer *Lexer, token_type Type)
{
    token Token = abl_GetToken(Lexer);
    b8 Result = (Token.Type == Type);
    
    return Result;
} // RequireToken

b8
OptionalToken(lexer *Lexer, token_type Type)
{
    token Token = abl_PeekToken(Lexer);
    b8 Result = (Token.Type == Type);
    
    if(Result)
    {
        abl_GetToken(Lexer);
    }
    return Result;
}

b8
NextTokenEquals(lexer *Lexer, abs_stringptr TokenValue)
{
    b8 Result = false;
    
    token Token = abl_PeekToken(Lexer);
    if(abl_TokenEquals(Token, TokenValue))
    {
        abl_GetToken(Lexer);
        Result = true;
    }
    
    return Result;
}

term_enumitem *
ParseEnumitem(lexer *Lexer, parser *Parser)
{
    term_enumitem *EnumName = 0;
    tag TagList = {};
    InitList(TagList);
    token Token = abl_GetToken(Lexer);
    if(abl_TokenEquals(Token, "TAG"))
    {
        TagList = ParseTag(Lexer,Parser);
        Token = abl_GetToken(Lexer);
    }
    
    if(Token.Type == TOKEN_Identifier)
    {
        EnumName = abm_PushStruct(Parser->Memory, term_enumitem);
        InitList(EnumName->TagListSentinal);
        PushListOntoList(EnumName->TagListSentinal, TagList);
        EnumName->Name = Token.Text;
    }
    
    return EnumName;
}

term_typeexpr *
ParseType(lexer *Lexer, parser *Parser)
{
    term_typeexpr *Expr = abm_PushStruct(Parser->Memory, term_typeexpr);
    token Token;
    
    if(NextTokenEquals(Lexer, "const"))
    {
        Expr->isConst = true;
    }
    
    Token = abl_GetToken(Lexer);
    if(Token.Type == TOKEN_Identifier)
    {
        Expr->Type = Token.Text;
    }
    else
    {
        // Code Error
    }
    
    if(NextTokenEquals(Lexer, "const"))
    {
        Expr->isConst = true;
    }
    
    if(OptionalToken(Lexer, TOKEN_Asterisk))
    {
        Expr->isPtr = true;
    }
    else if(OptionalToken(Lexer, TOKEN_Ampersand))
    {
        Expr->isReference = true;
    }
    
    return Expr;
}

term_typeexpr *
ParseTypeExpr(lexer *Lexer, parser *Parser)
{
    term_typeexpr *Expr = ParseType(Lexer, Parser);
    token Token = abl_GetToken(Lexer);
    
    if(Expr)
    {
        if(Token.Type == TOKEN_Identifier)
        {
            Expr->Name = Token.Text;
        }
        else
        {
            // Code Error
        }
        
        if(OptionalToken(Lexer, TOKEN_OpenBracket))
        {
            Token = abl_GetToken(Lexer);
            Expr->isArray = true;
            Expr->ArrayLength = abl_TokenToS32(Token);
            if(!RequireToken(Lexer, TOKEN_CloseBracket))
            {
                // Code Error
            }
        }
    }
    
    return Expr;
}

term_structitem *
ParseStructItem(lexer *Lexer, parser *Parser)
{
    term_structitem *StructItem = 0;
    tag TagList = {};
    InitList(TagList);
    if(NextTokenEquals(Lexer, "TAG"))
    {
        TagList = ParseTag(Lexer, Parser);
    }
    
    term_typeexpr *StructItemType = ParseTypeExpr(Lexer, Parser);
    if(StructItemType)
    {
        StructItem = abm_PushStruct(Parser->Memory, term_structitem);
        InitList(StructItem->TagListSentinal);
        PushListOntoList(StructItem->TagListSentinal,TagList);
        StructItem->Type = StructItemType;
        if(!RequireToken(Lexer, TOKEN_Semicolon))
        {
            // Code Error
        }
    }
    
    return StructItem;
}

term_enum *
ParseEnumClass(lexer *Lexer, parser *Parser)
{
    term_enum *NewEnum = 0;
    token Token = abl_GetToken(Lexer);
    
    if(Token.Type == TOKEN_Identifier)
    {
        NewEnum = abm_PushStruct(Parser->Memory, term_enum);
        InitList(NewEnum->TagListSentinal);
        InitList(NewEnum->ItemListSentinal);
        
        NewEnum->Name = Token.Text;
        
        if(RequireToken(Lexer, TOKEN_OpenBrace))
        {
            while(abl_PeekToken(Lexer).Type != TOKEN_CloseBrace)
            {
                term_enumitem *EnumName = ParseEnumitem(Lexer, Parser);
                if(EnumName)
                {
                    PushOntoList(NewEnum->ItemListSentinal, EnumName);
                    ++NewEnum->ItemCount;
                }
                OptionalToken(Lexer, TOKEN_Comma);
            }
            if(!RequireToken(Lexer, TOKEN_Semicolon))
            {
                // Code Error
            }
        }
    }
    
    return NewEnum;
}

term_struct *
ParseStruct(lexer *Lexer, parser *Parser)
{
    term_struct *NewStruct = 0;
    token Token = abl_GetToken(Lexer);
    
    if(Token.Type == TOKEN_Identifier)
    {
        NewStruct = abm_PushStruct(Parser->Memory, term_struct);
        InitList(NewStruct->TagListSentinal);
        InitList(NewStruct->ItemListSentinal);
        NewStruct->Name = Token.Text;
        
        if(RequireToken(Lexer, TOKEN_OpenBrace))
        {
            while(abl_PeekToken(Lexer).Type != TOKEN_CloseBrace)
            {
                term_structitem *NewItem = ParseStructItem(Lexer, Parser);
                if(NewItem)
                {
                    PushOntoList(NewStruct->ItemListSentinal, NewItem);
                }
            }
            if(!RequireToken(Lexer, TOKEN_Semicolon))
            {
                // Code Error
            }
        }
    }
    
    return NewStruct;
}

term_function *
ParseFunction(lexer *Lexer, parser *Parser)
{
    return 0;
}

tag
ParseTag(lexer *Lexer, parser *Parser)
{
    tag TagList = {};
    InitList(TagList);
    
    if(RequireToken(Lexer, TOKEN_OpenParen))
    {
        token Token = abl_GetToken(Lexer);
        while(Token.Type != TOKEN_CloseParen)
        {
            if(Token.Type == TOKEN_Identifier)
            {
                tag *NewTag = abm_PushStruct(Parser->Memory, tag);
                NewTag->Name = Token.Text;
                
                if(OptionalToken(Lexer, TOKEN_Colon))
                {
                    token Token = abl_GetToken(Lexer);
                    if(Token.Type == TOKEN_String ||
                       Token.Type == TOKEN_Identifier)
                    {
                        NewTag->Option = Token.Text;
                    }
                }
                
                OptionalToken(Lexer, TOKEN_Comma);
                PushOntoList(TagList, NewTag);
            }
            
            Token = abl_GetToken(Lexer);
        }
        
        OptionalToken(Lexer, TOKEN_Semicolon);
        OptionalToken(Lexer, TOKEN_Comma);
    }
    
    return TagList;
}

void
ParseTaggedExpr(lexer *Lexer, parser *Parser, token Token)
{
    tag TagList = ParseTag(Lexer, Parser);
    
    if(NextTokenEquals(Lexer, "struct") || NextTokenEquals(Lexer, "union"))
    {
        term_struct *NewStruct = ParseStruct(Lexer, Parser);
        if(NewStruct)
        {
            PushListOntoList(NewStruct->TagListSentinal, TagList);
            PushOntoList(Parser->StructListSentinal, NewStruct);
        }
    }
    else if(NextTokenEquals(Lexer, "enum") && NextTokenEquals(Lexer, "class"))
    {
        term_enum *NewEnum = ParseEnumClass(Lexer, Parser);
        if(NewEnum)
        {
            PushListOntoList(NewEnum->TagListSentinal, TagList);
            PushOntoList(Parser->EnumListSentinal, NewEnum);
        }
    }
    else
    {
        // Function
        term_function *NewFunc = ParseFunction(Lexer, Parser);
        if(NewFunc)
        {
            PushListOntoList(NewFunc->TagListSentinal, TagList);
            PushOntoList(Parser->FunctionListSentinal, NewFunc);
        }
    }
    
    
}

void
ParseStateMachineDef(lexer *Lexer, parser *Parser, token Token)
{
    if(RequireToken(Lexer, TOKEN_OpenParen))
    {
        token Token = abl_GetToken(Lexer);
        if(Token.Type == TOKEN_Identifier)
        {
            term_statemachine *StateMachine = abm_PushStruct(Parser->Memory, term_statemachine);
            InitList(StateMachine->TypeListSentinal);
            StateMachine->Function = Token.Text;
            RequireToken(Lexer, TOKEN_Comma);
            Token = abl_GetToken(Lexer);
            StateMachine->Type = Token.Text;
            
            RequireToken(Lexer,TOKEN_Comma);
            Token = abl_GetToken(Lexer);
            StateMachine->Cmd = Token.Text;
            
            while(OptionalToken(Lexer, TOKEN_Comma))
            {
                if(abl_PeekToken(Lexer).Type == TOKEN_Identifier)
                {
                    custom_type CustomType = CT_None;
                    
                    if(NextTokenEquals(Lexer, "STRUCT"))
                    {
                        CustomType = CT_Struct;
                    }
                    else if(NextTokenEquals(Lexer, "ENUM"))
                    {
                        CustomType = CT_Enum;
                    }
                    else if(NextTokenEquals(Lexer, "UNION"))
                    {
                        CustomType = CT_Union;
                    }
                    else if(NextTokenEquals(Lexer, "CLASS"))
                    {
                        CustomType = CT_Class;
                    }
                    
                    term_typeexpr *Type = ParseTypeExpr(Lexer, Parser);
                    Type->CustomType = CustomType;
                    
                    PushOntoList(StateMachine->TypeListSentinal, Type);
                }
            }
            
            if (!RequireToken(Lexer, TOKEN_CloseParen))
            {
                // TODO(amos): Parse error
            }
            
            OptionalToken(Lexer, TOKEN_Semicolon);
            PushOntoList(Parser->StateMachineListSentinal, StateMachine);
        }
    }
}

void
ParseDefinedFunction(lexer *Lexer, parser *Parser, token Token)
{
    term_definedfunction NewFunction = {};
    b8 isGoodFunction = false;
    
    NewFunction.Define = Token.Text;
    if(RequireToken(Lexer, TOKEN_OpenParen))
    {
        token Token = abl_GetToken(Lexer);
        if(Token.Type == TOKEN_Identifier &&
           RequireToken(Lexer, TOKEN_CloseParen))
        {
            NewFunction.Name = Token.Text;
            isGoodFunction = true;
        }
        else
        {
            // TODO(amos): Parse error.
        }
        
    }
    
    if(isGoodFunction)
    {
        term_definedfunction *Function = abm_PushStruct(Parser->Memory, term_definedfunction);
        *Function = NewFunction;
        PushOntoList(Parser->DefinedFunctionListSentinal, Function);
    }
}

inline b8
isDefineFunction(lexer *Lexer, token ThisToken)
{
    char *Start = Lexer->At;
    
    b8 Result =
        ((ThisToken.Type == TOKEN_Identifier) &&
         (abl_GetToken(Lexer).Type == TOKEN_OpenParen) &&
         (abl_GetToken(Lexer).Type == TOKEN_Identifier) &&
         (abl_GetToken(Lexer).Type == TOKEN_CloseParen));
    
    Lexer->At = Start;
    
    return Result;
}

void
ParseExpr(lexer *Lexer, parser *Parser)
{
    b8 isFinished = false;
    while(!isFinished)
    {
        token Token = abl_GetToken(Lexer);
        switch(Token.Type)
        {
            case TOKEN_Identifier:
            {
                if(abl_TokenEquals(Token, "TAG"))
                {
                    ParseTaggedExpr(Lexer, Parser, Token);
                }
                else if(abl_TokenEquals(Token, "STATEMACHINE"))
                {
                    ParseStateMachineDef(Lexer, Parser, Token);
                }
                else if(isDefineFunction(Lexer, Token))
                {
                    ParseDefinedFunction(Lexer, Parser, Token);
                }
                
            }break;
            
            case TOKEN_EndOfStream:
            {
                isFinished = true;
            }break;
            
            case TOKEN_Unknown:
            default:
            {}break;
        }
    }
}

parser *
ParseInit(memory_arena *Memory)
{
    parser *Parser  = abm_PushStruct(Memory, parser);
    Parser->Memory = Memory;
    InitList(Parser->StructListSentinal);
    InitList(Parser->EnumListSentinal);
    InitList(Parser->FunctionListSentinal);
    InitList(Parser->StateMachineListSentinal);
    InitList(Parser->DefinedFunctionListSentinal);
    
    return Parser;
}

#undef AB_PARSER_SRC
#endif
