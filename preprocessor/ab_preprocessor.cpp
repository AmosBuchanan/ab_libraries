/**
   NOTE(amos): This program is a pre-processor for the MWP302 code.
   It creates a header and source file needed to build the MWP302
   state machine based on tags in within the code. It is meant to be
   built and run prior to building the rest of the MWP302 code, and is
   not included in the rest of that code

   This file is essentially a basic lexer and parser.
 **/
#include "ab_preprocessor.h"

char const *OutputHeaderFileTemplate = "Generated_";

inline void
CreateFullFilename(char *Output, size_t MaxLength, char const *Path, u32 Number)
{
    stbsp_printf(Output, MaxLength, "%s/%s%03d.h", Path, OutputHeaderFileTemplate, Number);
}

struct data
{
    memory_arena Memory;
    token CurrentlyOpenTokenName;
    
    string_params HeaderStringParams;
    
    token_tag *TagList;
    u32 NumStructs;
    token_struct *StructTokenList;
    
    output_data *EnumDefinitions;
    output_data *EnumFunctions;
    output_data *StructDefinitions;
    output_data *StructFunctions;
    output_data *AmsStateDefinitions;
    output_data *AmsStateFunctions;
};

///////////////////////////////////////////////////
/// Token Processing

file_list*
GetListOfFiles(memory_arena *Memory, const char* Directory, u32 FileIndex)
{
    char OutputHeaderFile[255];
    CreateFullFilename(OutputHeaderFile, ArrayCount(OutputHeaderFile), Directory, FileIndex);
    remove(OutputHeaderFile);
    
    return InitializeFileList(Memory, Directory);
    
} // GetListOfFiles

params *
ParseParams(tokenizer *Tokenizer, data *Data)
{
    b8 Parsing = true;
    params *HeadParameter = 0;
    params *Parameters = HeadParameter;
    while(Parsing)
    {
        token Token = GetToken(Tokenizer);
        switch(Token.Type)
        {
            case (TOKEN_OpenParen):
            case (TOKEN_Comma):
            {
                // NOTE(amos): Keep going.
            } break;
            
            case (TOKEN_Identifier):
            {
                if(!HeadParameter)
                {
                    HeadParameter = PushStruct(&Data->Memory, params);
                    Parameters = HeadParameter;
                }
                else
                {
                    params *NextParameter = PushStruct(&Data->Memory, params);
                    Parameters->Next = NextParameter;
                    Parameters = Parameters->Next;
                }
                
                Parameters->Identifier = Token;
                token NextToken = GetToken(Tokenizer);
                if(NextToken.Type  ==  TOKEN_Colon)
                {
                    Parameters->Value = GetToken(Tokenizer);
                }
                else if(NextToken.Type == TOKEN_CloseParen)
                {
                    Parsing = false;
                }
            } break;
            
            case (TOKEN_String):
            {
                if(!HeadParameter)
                {
                    HeadParameter = PushStruct(&Data->Memory, params);
                    Parameters = HeadParameter;
                }
                else
                {
                    params *NextParameter = PushStruct(&Data->Memory, params);
                    Parameters->Next = NextParameter;
                    Parameters = Parameters->Next;
                }
                
                Parameters->Identifier = Token;
            } break;
            
            case (TOKEN_CloseParen):
            default:
            {
                // On unknown tokens, we're done.
                Parsing = false;
            } break;
        }
    }
    
    return HeadParameter;
} // ParseParams

b8
ParseStateFunctionToken(tokenizer *Tokenizer, data *Data, token PreviousToken)
{
    b8 Result = false;
    token FunctionName = {};
    if(!(TokenEquals(PreviousToken, "typedef") || TokenEquals(PreviousToken, "define")))
    {
        if(RequireToken(Tokenizer, TOKEN_OpenParen))
        {
            token Token = GetToken(Tokenizer);
            if(RequireToken(Tokenizer, TOKEN_CloseParen))
            {
                FunctionName = Token;
                //WriteStringWithTokenToOutput(Data->StateFunctionPointerToStringFunction, "  if(&%.*s == StateFunction) { ", FunctionName);
                //WriteStringWithTokenToOutput(Data->StateFunctionPointerToStringFunction, "return \"%.*s\"; }\n", FunctionName);
                
                //WriteStringWithTokenToOutput(Data->StateFunctionDeclarations, "STATE_FUNCTION(%.*s);\n", FunctionName);
                Result = true;
            }
        }
        
    }
    
    return Result;
} // ParseStateFunctionToken

token_tag *
ParseTagList(tokenizer *Tokenizer, memory_arena *Memory)
{
    token_tag *TagList = 0;
    
    if(RequireToken(Tokenizer, TOKEN_OpenParen))
    {
        token Token = GetToken(Tokenizer);
        while(!(Token.Type == TOKEN_CloseParen ||
                Token.Type == TOKEN_EndOfStream))
        {
            if(Token.Type == TOKEN_Identifier)
            {
                token_tag *Tag = PushStruct(Memory, token_tag);
                *Tag = {};
                Tag->Name = Token;
                Tag->Next = TagList;
                TagList = Tag;
                
                Token = GetToken(Tokenizer);
                if(Token.Type == TOKEN_Colon)
                {
                    Token = GetToken(Tokenizer);
                    if(Token.Type == TOKEN_Identifier ||
                       Token.Type == TOKEN_String)
                    {
                        Tag->Option = Token;
                    }
                }
                else if(Token.Type == TOKEN_CloseParen)
                {
                    break;
                }
                
            }
            Token = GetToken(Tokenizer);
        }
    }
    
    return TagList;
}

token_struct *
DeconstructEnum(tokenizer *Tokenizer, memory_arena *Memory)
{
    token_struct *Enum = 0;
    
    token EnumName = GetToken(Tokenizer);
    if(TokenEquals(EnumName, "class"))
    {
        EnumName = GetToken(Tokenizer);
        
        if(EnumName.Type == TOKEN_Identifier)
        {
            Enum = PushStruct(Memory, token_struct);
            Enum->Name = EnumName;
            Enum->Type = KEYWORD_Enum;
            Enum->ItemCount = 0;
            Enum->TagList = Tokenizer->LastTagList;
            Tokenizer->LastTagList = 0;
            Enum->VariableList = 0;
            Enum->Next = 0;
            Enum->Start.Type = TOKEN_Unknown;
            Enum->End.Type = TOKEN_Unknown;
            
            token NextToken = GetToken(Tokenizer);
            while(!(NextToken.Type == TOKEN_EndOfStream ||
                    NextToken.Type == TOKEN_CloseBrace))
            {
                if(NextToken.Type == TOKEN_OpenBrace)
                {
                    Enum->Start = NextToken;
                    break;
                }
                NextToken = GetToken(Tokenizer);
            }
            
            token_tag *PreviousTagList = 0;
            while(!(NextToken.Type == TOKEN_EndOfStream ||
                    NextToken.Type == TOKEN_CloseBrace))
            {
                NextToken = GetToken(Tokenizer);
                
                if((NextToken.Type == TOKEN_Identifier) &&
                   (TokenEquals(NextToken, "TAG")))
                {
                    PreviousTagList = ParseTagList(Tokenizer, Memory);
                }
                else if(NextToken.Type == TOKEN_Identifier)
                {
                    token_label *NewItem = PushStruct(Memory, token_label);
                    NewItem->Name = NextToken;
                    NewItem->TagList = PreviousTagList;
                    PreviousTagList = 0;
                    
                    if(!Enum->LabelList)
                    {
                        Enum->LabelList = NewItem;
                        NewItem->Next = NewItem->Prev = NewItem;
                    }
                    else
                    {
                        NewItem->Prev = Enum->LabelList->Prev;
                        NewItem->Next = Enum->LabelList;
                        
                        Enum->LabelList->Prev->Next = NewItem;
                        Enum->LabelList->Prev = NewItem;
                    }
                    ++Enum->ItemCount;
                    
                }
            }
            Enum->End = NextToken;
        }
    }
    
    return Enum;
}

void
CreateEnumJson(token_struct *Enum, memory_arena *Memory, output_data *DefinitionsOut, output_data *FunctionsOut)
{
    temporary_memory TempMem = BeginTemporaryMemory(Memory);
    const u32 MaxSectionSize = Kilobytes(5);
    char *HeaderScratch = (char*)PushSize(Memory, MaxSectionSize);
    char *FunctionScratch = (char*)PushSize(Memory, MaxSectionSize);
    HeaderScratch[0] = 0;
    FunctionScratch[0] = 0;
    u32 HeaderCount = 0;
    u32 FunctionCount = 0;
    
    
    if(Enum->VariableList)
    {
        // NOTE(amos): the Unused item is so it matches the signature of the struct JSON.
        HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                    "jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *ObjectOut, u32 Unused);\n",
                                    Enum->Name.Length, Enum->Name.Text);
        HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                    "u32\n"
                                    "PushJson(char *Json, u32 MaxLength, char const *Tag, %.*s Type, u32 JsonFlags);\n",
                                    Enum->Name.Length, Enum->Name.Text);
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "u32\n"
                                      "PushJson(char *Json, u32 MaxLength, char const *Tag, %.*s Type, u32 JsonFlags = 0)\n"
                                      "{\n"
                                      "    u32 Length = 0;\n"
                                      "    b8 isLast = (JsonFlags & JSON_IsLastInList);\n"
                                      "    Length += stbsp_printf(Json, MaxLength, \"\\\"%%s\\\":\\\"%%s\\\"\", Tag, EnumToCString(Type));\n"
                                      
                                      "    if(!isLast) { Json[Length++] = ','; }\n"
                                      "    return Length;\n}\n\n",
                                      Enum->Name.Length, Enum->Name.Text
                                      );
        
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *ObjectOut, u32 Unused)\n",
                                      Enum->Name.Length, Enum->Name.Text);
        
        
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "{\n"
                                      "    %.*s Result = static_cast<%.*s>(0);\n"
                                      "    s32 NumTokensUsed = 0;\n"
                                      "    \n"
                                      "    s32 TotalTokens = ParseJson(VolatileMemory, Json, JsonLength, &TokenArray);\n"
                                      "    if(TokenArray)\n"
                                      "    {\n"
                                      "        s32 Index = 0;\n"
                                      "        if((TokenArray[Index].type == JSMN_OBJECT) &&\n"
                                      "           (TotalTokens > 1))\n"
                                      "        {\n"
                                      "            ++Index;\n"
                                      "        }\n"
                                      "        if(TokenArray[Index].type == JSMN_STRING)\n"
                                      "        {\n"
                                      "            s32 TokenLength = (TokenArray[Index].end - TokenArray[Index].start);\n"
                                      "            stringptr EnumString = {&Json[TokenArray[Index].start], TokenLength};\n"
                                      "            Result = StringToEnum<%.*s>(EnumString);\n"
                                      "            NumTokensUsed = Index;\n"
                                      "        }\n"
                                      "        else \n"
                                      "        {\n"
                                      "            NumTokensUsed = Index;\n"
                                      "        }\n"
                                      "    }\n"
                                      "    *ObjectOut = Result;\n"
                                      "    return TokenArray + NumTokensUsed;\n"
                                      "}\n\n",
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text
                                      );
        
        Assert(FunctionCount < MaxSectionSize);
        FunctionScratch[FunctionCount] = 0;
        
        CopyString(DefinitionsOut, HeaderScratch);
        CopyString(FunctionsOut, FunctionScratch);
        EndTemporaryMemory(TempMem);
    }
}

void
CreateEnumStrings(token_struct *Enum, memory_arena *Memory, output_data *DefinitionsOut, output_data *FunctionsOut)
{
    temporary_memory TempMem = BeginTemporaryMemory(Memory);
    const u32 MaxSectionSize = Kilobytes(10);
    char *HeaderScratch = (char*)PushSize(Memory, MaxSectionSize);
    char *FunctionScratch = (char*)PushSize(Memory, MaxSectionSize);
    HeaderScratch[0] = 0;
    FunctionScratch[0] = 0;
    u32 HeaderCount = 0;
    u32 FunctionCount = 0;
    
    
    if(Enum->VariableList)
    {
        HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                    "template<>\n"
                                    "auto StringToEnum<%.*s>(const char *String) -> %.*s;\n"
                                    "template<>\n"
                                    "auto StringToEnum<%.*s>(stringptr String) -> %.*s;\n"
                                    "constexpr stringptr EnumToString(%.*s EnumToken);\n"
                                    "constexpr char const* EnumToCString(%.*s EnumToken);\n"
                                    "const stringptr %.*s_Strings[%.*s_Count] = \n{\n",
                                    Enum->Name.Length, Enum->Name.Text,
                                    Enum->Name.Length, Enum->Name.Text,
                                    Enum->Name.Length, Enum->Name.Text,
                                    Enum->Name.Length, Enum->Name.Text,
                                    Enum->Name.Length, Enum->Name.Text,
                                    Enum->Name.Length, Enum->Name.Text,
                                    Enum->Name.Length, Enum->Name.Text,
                                    Enum->Name.Length, Enum->Name.Text);
        
#if 0
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "const stringptr %.*s_Strings[%.*s_Count] = \n"
                                      "{\n",
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text);
#endif
        token_label *Variable = Enum->LabelList;
        do
        {
            HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                        "   {\"%.*s\", %u},\n",
                                        Variable->Name.Length, Variable->Name.Text,
                                        Variable->Name.Length);
            
            Variable = Variable->Next;
        }while(Variable != Enum->LabelList);
        
        HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount), "};\n\n");
        
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "template<>\n"
                                      "auto StringToEnum<%.*s>(const char *String) -> %.*s\n",
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text);
        
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "{\n"
                                      "    u32 StringIndex = FindInList(String, %.*s_Count, %.*s_Strings, true);\n",
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text);
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "    %.*s Result = %.*s::%.*s;\n",
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->LabelList->Name.Length, Enum->LabelList->Name.Text);
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "    if(StringIndex < %.*s_Count)\n"
                                      "    {\n"
                                      "        Result = static_cast<%.*s>(StringIndex);\n"
                                      "    }\n"
                                      "    return Result;\n"
                                      "}\n",
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text);
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "template<>\n"
                                      "auto StringToEnum<%.*s>(stringptr String) -> %.*s\n",
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text);
        
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "{\n"
                                      "    u32 StringIndex = FindInList(String, %.*s_Count, %.*s_Strings, true);\n",
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text);
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "    %.*s Result = %.*s::%.*s;\n",
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->LabelList->Name.Length, Enum->LabelList->Name.Text);
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "    if(StringIndex < %.*s_Count)\n"
                                      "    {\n"
                                      "        Result = static_cast<%.*s>(StringIndex);\n"
                                      "    }\n"
                                      "    return Result;\n"
                                      "}\n",
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text);
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "constexpr const char *\n"
                                      "EnumToCString(%.*s EnumToken)\n"
                                      "{\n"
                                      "    return %.*s_Strings[int(EnumToken)].String;\n"
                                      "}\n\n",
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text);
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "constexpr stringptr\n"
                                      "EnumToString(%.*s EnumToken)\n"
                                      "{\n"
                                      "    return %.*s_Strings[int(EnumToken)];\n"
                                      "}\n\n",
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text);
        
        Assert(FunctionCount < MaxSectionSize);
        FunctionScratch[FunctionCount] = 0;
        
        
        CopyString(DefinitionsOut, HeaderScratch);
        CopyString(FunctionsOut, FunctionScratch);
        
    }
    EndTemporaryMemory(TempMem);
}

void
CreateEnumLabels(token_struct *Enum, token_tag *LabelTag, memory_arena *Memory, output_data *DefinitionsOut, output_data *FunctionsOut)
{
    temporary_memory TempMem = BeginTemporaryMemory(Memory);
    const u32 MaxSectionSize = Kilobytes(10);
    char *HeaderScratch = (char*)PushSize(Memory, MaxSectionSize);
    char *FunctionScratch = (char*)PushSize(Memory, MaxSectionSize);
    HeaderScratch[0] = 0;
    FunctionScratch[0] = 0;
    u32 HeaderCount = 0;
    u32 FunctionCount = 0;
    
    
    if(Enum->VariableList)
    {
        /**
const char *<Enum>Label_<Short> = {};
const char *<Enum>ToLabelShort(<Enum>);
**/
        HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                    "constexpr const char *EnumToLabel_%.*s(%.*s EnumToken);\n"
                                    "const char * %.*s_Label%.*s[];\n",
                                    LabelTag->Option.Length, LabelTag->Option.Text,
                                    Enum->Name.Length, Enum->Name.Text,
                                    Enum->Name.Length, Enum->Name.Text,
                                    LabelTag->Option.Length, LabelTag->Option.Text);
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "const char * %.*s_Label%.*s[%.*s_Count] = \n"
                                      "{\n",
                                      Enum->Name.Length, Enum->Name.Text,
                                      LabelTag->Option.Length, LabelTag->Option.Text,
                                      Enum->Name.Length, Enum->Name.Text);
        
        
        token_label *Variable = Enum->LabelList;
        do
        {
            token Label = {};
            if(Variable->TagList)
            {
                token_tag *Tag = Variable->TagList;
                while(Tag)
                {
                    if(TokensMatch(Tag->Name, LabelTag->Option))
                    {
                        Label = Tag->Option;
                        break;
                    }
                    Tag = Tag->Next;
                }
            }
            
            if(Label.Type == TOKEN_Unknown)
            {
                Label = Variable->Name;
            }
            
            FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                          "    \"%.*s\",\n",
                                          Label.Length, Label.Text);
            
            Variable = Variable->Next;
        }while(Variable != Enum->LabelList);
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount), "};\n\n");
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "constexpr const char *\n"
                                      "EnumToLabel_%.*s(%.*s EnumToken)\n"
                                      "{\n"
                                      "    return %.*s_Label%.*s[int(EnumToken)];\n"
                                      "}\n\n",
                                      LabelTag->Option.Length, LabelTag->Option.Text,
                                      Enum->Name.Length, Enum->Name.Text,
                                      Enum->Name.Length, Enum->Name.Text,
                                      LabelTag->Option.Length, LabelTag->Option.Text);
        
        Assert(FunctionCount < MaxSectionSize);
        FunctionScratch[FunctionCount] = 0;
        
        
        CopyString(DefinitionsOut, HeaderScratch);
        CopyString(FunctionsOut, FunctionScratch);
        
    }
    EndTemporaryMemory(TempMem);
}

b8
ParseEnum(tokenizer *Tokenizer, data *Data)
{
    b8 isParsed = false;
    
    // NOTE(amos): We only need to parse enums that have tags.
    if(Tokenizer->LastTagList)
    {
        token_struct *Enum = DeconstructEnum(Tokenizer, &Data->Memory);
        if(Enum)
        {
            Enum->Next = Tokenizer->EnumClassList;
            Tokenizer->EnumClassList = Enum;
            
            isParsed = true;
        }
        
    }
    else
    {
        isParsed = true;
    }
    
    return isParsed;
}

void
BuildEnumFunctions(token_struct *EnumList, memory_arena *Memory, output_data *HeaderOut, output_data *FunctionsOut)
{
    token_struct *Enum = EnumList;
    while(Enum)
    {
        WriteStringWithTokenToOutput(HeaderOut, "/****** Enum %.*s Header *****/\n", Enum->Name);
        WriteStringWithTokenToOutput(HeaderOut, "enum class %.*s;\n", Enum->Name);
        WriteString(HeaderOut, "const u32 %.*s_Count = %d;\n",
                    Enum->Name.Length, Enum->Name.Text,
                    Enum->ItemCount);
        
        WriteStringWithTokenToOutput(FunctionsOut, "/****** Enum %.*s Functions *****/\n", Enum->Name);
        
        token_tag *Tag = Enum->TagList;
        while(Tag)
        {
            if(TokenEquals(Tag->Name, "Strings"))
            {
                CreateEnumStrings(Enum, Memory, HeaderOut, FunctionsOut);
            }
            
            else if(TokenEquals(Tag->Name, "JSON"))
            {
                CreateEnumJson(Enum, Memory, HeaderOut, FunctionsOut);
            }
            
            else if(TokenEquals(Tag->Name, "Label"))
            {
                CreateEnumLabels(Enum, Tag, Memory, HeaderOut, FunctionsOut);
            }
            
            Tag = Tag->Next;
        }
        
        WriteString(HeaderOut, "\n", Enum->Name);
        WriteString(FunctionsOut, "\n", Enum->Name);
        
        Enum = Enum->Next;
    }
}

token_struct*
ParseStruct(tokenizer *Tokenizer, data *Data)
{
    token_struct *Struct = 0;
    
    if(RequireToken(Tokenizer, TOKEN_OpenParen))
    {
        token StructName = GetToken(Tokenizer);
        
        if(StructName.Type == TOKEN_Identifier)
        {
            Struct = PushStruct(&Data->Memory, token_struct);
            Struct->Name = StructName;
            Struct->ItemCount = 0;
            Struct->TagList;
            Struct->VariableList = 0;
            Struct->Next = 0;
            Struct->Start.Type = TOKEN_Unknown;
            Struct->End.Type = TOKEN_Unknown;
            
            token NextToken = GetToken(Tokenizer);
            while(!(NextToken.Type == TOKEN_EndOfStream ||
                    NextToken.Type == TOKEN_CloseBrace))
            {
                if(NextToken.Type == TOKEN_OpenBrace)
                {
                    Struct->Start = NextToken;
                    break;
                }
                NextToken = GetToken(Tokenizer);
            }
            
            while(!(NextToken.Type == TOKEN_EndOfStream ||
                    NextToken.Type == TOKEN_CloseBrace))
            {
                if(NextToken.Type == TOKEN_Identifier)
                {
                    token_variable ThisItem = {};
                    
                    if(TokenEquals(NextToken, "const"))
                    {
                        ThisItem.isConst = true;
                        NextToken = GetToken(Tokenizer);
                    }
                    
                    ThisItem.Type = NextToken;
                    NextToken = GetToken(Tokenizer);
                    
                    if(TokenEquals(NextToken, "const"))
                    {
                        ThisItem.isConst = true;
                        NextToken = GetToken(Tokenizer);
                    }
                    
                    if(NextToken.Type == TOKEN_Asterisk)
                    {
                        ThisItem.isPtr = true;
                        NextToken = GetToken(Tokenizer);
                    }
                    
                    if(NextToken.Type == TOKEN_Identifier)
                    {
                        ThisItem.Name = NextToken;
                    }
                    else
                    {
                        // NOTE(amos)
                        // Not a valid identifier for current purposes.
                        // Going to ignore.
                        while(GetToken(Tokenizer).Type != TOKEN_Semicolon) {}
                        continue;
                    }
                    
                    NextToken = GetToken(Tokenizer);
                    if(NextToken.Type == TOKEN_OpenBracket)
                    {
                        NextToken = GetToken(Tokenizer);
                        if(NextToken.Type == TOKEN_Number)
                        {
                            ThisItem.isArray = true;
                            ThisItem.ArrayCount = TokenToNumber(NextToken);
                            ThisItem.ArrayCountToken = NextToken;
                        }
                        else
                        {
                            ThisItem.isArray = false;
                            ThisItem.ArrayCount = 0;
                        }
                    }
                    else if(NextToken.Type == TOKEN_Semicolon)
                    {
                        ThisItem.isArray = false;
                        ThisItem.ArrayCount = 0;
                    }
                    else
                    {
                        // Too many modifiers added, so not parsed.
                        while(GetToken(Tokenizer).Type != TOKEN_Semicolon) {}
                        continue;
                    }
                    
                    token_variable *NewItem = PushStruct(&Data->Memory, token_variable);
                    *NewItem = ThisItem;
                    NewItem->Next = Struct->VariableList;
                    Struct->VariableList = NewItem;
                    ++Struct->ItemCount;
                }
                NextToken = GetToken(Tokenizer);
            }
            Struct->End = NextToken;
        }
    }
    return Struct;
}

b8
ParseJsonStructToken(tokenizer *Tokenizer, data *Data)
{
    b8 isSuccess = false;
    temporary_memory TempMem = BeginTemporaryMemory(&Data->Memory);
    
    token_struct *Struct = ParseStruct(Tokenizer, Data);
    
    if(Struct && Struct->ItemCount > 0)
    {
        const u32 MaxSectionSize = Kilobytes(20);
        char *HeaderScratch = (char*)PushSize(&Data->Memory, MaxSectionSize);
        char *FunctionScratch = (char *)PushSize(&Data->Memory, MaxSectionSize);
        u32 HeaderCount =0;
        u32 FunctionCount = 0;
        
        HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                    "\n/****** Struct %.*s Header *****/\n", Struct->Name.Length, Struct->Name.Text);
        HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                    "struct %.*s;\n", Struct->Name.Length, Struct->Name.Text);
        HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                    "u32 PushJson(char *Json, u32 MaxLength, char const *Tag, const %.*s &Value, u32 JsonFlags);\n",
                                    Struct->Name.Length, Struct->Name.Text);
        HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                    "struct %.*s_existlist;\n",
                                    Struct->Name.Length, Struct->Name.Text);
        HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                    "jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *ObjectOut, %.*s_existlist *ItemsExistOut);\n",
                                    Struct->Name.Length, Struct->Name.Text,
                                    Struct->Name.Length, Struct->Name.Text);
        
        HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                    "u32\n"
                                    "JsonArrayToObjectArray(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, %.*s **ObjectArray, %.*s_existlist **ObjectArrayExist);\n",
                                    Struct->Name.Length, Struct->Name.Text,
                                    Struct->Name.Length, Struct->Name.Text);
        
        // Note: The exist list is added via piggy-backing on the first walkthrough of the all the items belowe.
        HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                    "struct %.*s_existlist\n{\n",
                                    Struct->Name.Length, Struct->Name.Text);
        
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "\n/****** Struct %.*s Functions *****/\n", Struct->Name.Length, Struct->Name.Text);
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "u32 PushJson(char *Json, u32 MaxLength, char const*Tag, const %.*s &Value, u32 JsonFlags = 0)\n{\n"
                                      "    u32 Length = 0;\n"
                                      "    b8 isLast = (JsonFlags & JSON_IsLastInList);\n"
                                      "    if(JsonFlags & JSON_BaseObject)\n"
                                      "    {\n"
                                      "        Json[Length++] = '{';\n"
                                      "    }\n"
                                      "    if(!(JsonFlags & JSON_DontUseTag))\n"
                                      "    {\n"
                                      "          Length += stbsp_printf(&Json[Length], MaxLength, \"\\\"%%s\\\":\", Tag);\n"
                                      "    }\n"
                                      "    Length += StartGroup(&Json[Length], (MaxLength - Length));\n",
                                      Struct->Name.Length, Struct->Name.Text);
        token_variable *Item = Struct->VariableList;
        while(Item)
        {
            // NOTE(amos) add the item to the exist list in the header.
            HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                        "   b8 %.*s;\n",
                                        Item->Name.Length, Item->Name.Text
                                        );
            
            const char * isLast = (!Item->Next) ? "JSON_IsLastInList" : "JSON_Null";
            char Separator = (Item->Next) ? ',' : ' ';
            if(Item->isArray && TokenEquals(Item->Type, "char"))
            {
                FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                              "{\nsize_t StringLen = strnlen_s(Value.%.*s, %d);\n" ,
                                              Item->Name.Length, Item->Name.Text,
                                              Item->ArrayCount);
                
                FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                              "Length += stbsp_printf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":\\\"%%.*s\\\"%c\", (s32)StringLen, Value.%.*s);\n}\n",
                                              Item->Name.Length, Item->Name.Text,
                                              Separator,
                                              Item->Name.Length, Item->Name.Text
                                              );
            }
            else if(!Item->isArray)
            {
                auto  WriteFormatType = [&FunctionCount, &FunctionScratch, &MaxSectionSize, &Item, &Separator](char const *Format, b8 isPtr) -> void
                {
                    if(isPtr)
                    {
                        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                      "if(Value.%.*s)\n"
                                                      "{\n    ",
                                                      Item->Name.Length, Item->Name.Text
                                                      );
                    }
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "Length += stbsp_printf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":%s%c\", %c(Value.%.*s));\n",
                                                  Item->Name.Length, Item->Name.Text,
                                                  Format, Separator,
                                                  isPtr ? '*' : ' ',
                                                  Item->Name.Length, Item->Name.Text
                                                  );
                    
                    if(isPtr)
                    {
                        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                      "}\n");
                    }
                };
                
                if(TokenEquals(Item->Type, "u64"))
                {
                    WriteFormatType("%llu", Item->isPtr);
                }
                else if(TokenEquals(Item->Type, "s64"))
                {
                    WriteFormatType("%lld", Item->isPtr);
                }
                else if(TokenEquals(Item->Type, "u32") ||
                        TokenEquals(Item->Type, "u16") ||
                        TokenEquals(Item->Type, "u8"))
                    
                {
                    WriteFormatType("%u", Item->isPtr);
                }
                else if(TokenEquals(Item->Type, "s32") ||
                        TokenEquals(Item->Type, "s16") ||
                        TokenEquals(Item->Type, "s8"))
                    
                {
                    WriteFormatType("%d", Item->isPtr);
                }
                else if(TokenEquals(Item->Type, "r32"))
                    
                {
                    WriteFormatType("%0.3f", Item->isPtr);
                }
                else if(TokenEquals(Item->Type, "char") && Item->isPtr)
                {
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "if(Value.%.*s)\n"
                                                  "{\n",
                                                  Item->Name.Length, Item->Name.Text
                                                  );
                    
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "Length += stbsp_printf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":\\\"%%s\\\"%c\", (Value.%.*s));\n}\n",
                                                  Item->Name.Length, Item->Name.Text,
                                                  Separator,
                                                  Item->Name.Length, Item->Name.Text
                                                  );
                }
                else if(TokenEquals(Item->Type, "string") && !Item->isPtr)
                {
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "if(Value.%.*s.String)\n"
                                                  "{\n",
                                                  Item->Name.Length, Item->Name.Text
                                                  );
                    
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "Length += stbsp_printf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":\\\"%%.*s\\\"%c\", (Value.%.*s.String), (Value.%.*s.String));\n}\n",
                                                  Item->Name.Length, Item->Name.Text,
                                                  Separator,
                                                  Item->Name.Length, Item->Name.Text,
                                                  Item->Name.Length, Item->Name.Text
                                                  );
                }
                else if(TokenEquals(Item->Type, "string") && Item->isPtr)
                {
                }
                else if(TokenEquals(Item->Type, "b8"))
                {
                    
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "Length += stbsp_printf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":%%s%c\", (%c(Value.%.*s) ? \"true\" : \"false\"));\n",
                                                  Item->Name.Length, Item->Name.Text,
                                                  Separator,
                                                  Item->isPtr ? '*' : ' ',
                                                  Item->Name.Length, Item->Name.Text
                                                  );
                }
                else
                {
                    if(Item->isPtr)
                    {
                        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                      "if(Value.%.*s)\n"
                                                      "{\n    ",
                                                      Item->Name.Length, Item->Name.Text
                                                      );
                    }
                    
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "Length += PushJson(&Json[Length], (MaxLength - Length), \"%.*s\", %c(Value.%.*s), %s);\n",
                                                  Item->Name.Length, Item->Name.Text,
                                                  Item->isPtr ? '*' : ' ',
                                                  Item->Name.Length, Item->Name.Text,
                                                  isLast);
                    if(Item->isPtr)
                    {
                        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                      "}\n");
                    }
                }
            }
            
            Item = Item->Next;
        }
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "    Length += EndGroup(&Json[Length], (MaxLength - Length), isLast);\n"
                                      "    if(JsonFlags & JSON_BaseObject)\n"
                                      "    {\n"
                                      "        Json[Length++] = '}';\n"
                                      "    }\n"
                                      "    return Length;\n}\n\n");
        
        // NOTE(amos): End the exist list.
        HeaderCount += stbsp_printf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                    "};\n");
        
        
        /// Object to Json Function
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *ObjectOut, %.*s_existlist *ItemsExistOut)\n"
                                      "{\n"
                                      "    %.*s_existlist* ItemExists = PushStruct(VolatileMemory, %.*s_existlist);\n"
                                      "    s32 NumTokensProcessed =  ParseJson(VolatileMemory, Json, JsonLength, &TokenArray);\n"
                                      "    jsmntok_t *Token = TokenArray;\n"
                                      "    if(Token)\n"
                                      "    {\n"
                                      "        s32 NumTokensToProcess = Token->size;\n"
                                      "        s32 ObjectEndPosition = Token->end;\n"
                                      "        for(s32 Index = 0; Index < NumTokensToProcess; ++Index)\n"
                                      "        {\n"
                                      "            ++Token;\n"
                                      "            s32 TokenLength = Token->end - Token->start;\n"
                                      "            \n",
                                      Struct->Name.Length, Struct->Name.Text,
                                      Struct->Name.Length, Struct->Name.Text,
                                      Struct->Name.Length, Struct->Name.Text,
                                      Struct->Name.Length, Struct->Name.Text);
        
        Item = Struct->VariableList;
        
        auto WriteIf = [&FunctionCount, &FunctionScratch, &MaxSectionSize](token_variable *Item, char const *Type) -> void
        {
            FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                          "            if((areStringsEqual(&Json[Token->start], TokenLength, \"%.*s\",(ArrayCount(\"%.*s\")-1), true)) && \n"
                                          "               ((Token+1)->type == %s)",
                                          Item->Name.Length, Item->Name.Text,
                                          Item->Name.Length, Item->Name.Text,
                                          Type);
            
            if(Item->isPtr)
            {
                FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                              "&& \n"
                                              "(ObjectOut->%.*s)",
                                              Item->Name.Length, Item->Name.Text
                                              );
            }
            
            FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                          ") \n");
            FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                          "{\n            ItemExists->%.*s = true;\n",
                                          Item->Name.Length, Item->Name.Text);
        };
        
        while(Item)
        {
            if(!Item->isConst)
            {
                if(TokenEquals(Item->Type, "u64") ||
                   TokenEquals(Item->Type, "s64"))
                {
                    WriteIf(Item, "JSMN_PRIMITIVE");
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "    ++Token;\n"
                                                  "    %c(ObjectOut->%.*s) = (%.*s)atoll(&Json[Token->start]);\n"
                                                  "}\n\n",
                                                  Item->isPtr ? '*' : ' ',
                                                  Item->Name.Length, Item->Name.Text,
                                                  Item->Type.Length, Item->Type.Text);
                }
                else if(TokenEquals(Item->Type, "u32") ||
                        TokenEquals(Item->Type, "u16") ||
                        TokenEquals(Item->Type, "u8")  ||
                        TokenEquals(Item->Type, "u32") ||
                        TokenEquals(Item->Type, "u16") ||
                        TokenEquals(Item->Type, "u8"))
                {
                    WriteIf(Item, "JSMN_PRIMITIVE");
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "    ++Token;\n"
                                                  "    %c(ObjectOut->%.*s) = (%.*s)atoi(&Json[Token->start]);\n"
                                                  "}\n\n",
                                                  Item->isPtr ? '*' : ' ',
                                                  Item->Name.Length, Item->Name.Text,
                                                  Item->Type.Length, Item->Type.Text);
                }
                
                else if(TokenEquals(Item->Type, "b8"))
                {
                    WriteIf(Item, "JSMN_PRIMITIVE");
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "    ++Token;\n"
                                                  "    %c(ObjectOut->%.*s) = (strncmp(&Json[Token->start],\"true\",4) == 0);\n"
                                                  "}\n\n",
                                                  Item->isPtr ? '*' : ' ',
                                                  Item->Name.Length, Item->Name.Text);
                }
                
                else if(TokenEquals(Item->Type, "r32"))
                {
                    WriteIf(Item, "JSMN_PRIMITIVE");
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "    ++Token;\n"
                                                  "    %c(ObjectOut->%.*s) = (%.*s)atof(&Json[Token->start]);\n"
                                                  "}\n\n",
                                                  Item->isPtr ? '*' : ' ',
                                                  Item->Name.Length, Item->Name.Text,
                                                  Item->Type.Length, Item->Type.Text);
                }
                
                else if(TokenEquals(Item->Type, "char") && Item->isArray && !Item->isPtr)
                {
                    WriteIf(Item, "JSMN_STRING");
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "    ++Token;\n"
                                                  "    TokenLength = Token->end - Token->start;\n"
                                                  "    s32 Length = MINIMUM(TokenLength, (%d-1));\n"
                                                  "    strncpy(ObjectOut->%.*s, &Json[Token->start], Length);\n"
                                                  "    ObjectOut->%.*s[Length] = 0;\n"
                                                  "}\n\n",
                                                  Item->ArrayCount,
                                                  Item->Name.Length, Item->Name.Text,
                                                  Item->Name.Length, Item->Name.Text
                                                  );
                }
                else if(TokenEquals(Item->Type, "char") && Item->isPtr)
                {
                    // TODO(amos): Handle this case.
                }
                
                else
                {
                    
                    // NOTE(amos): No real way to tell the difference between a struct and an enum here
                    //    so in the case of object -> struct, in the case of string -> enum.
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "            if((areStringsEqual(&Json[Token->start], TokenLength, \"%.*s\",(ArrayCount(\"%.*s\")-1), true)) && \n"
                                                  "               (((Token+1)->type == JSMN_STRING) || ((Token+1)->type == JSMN_OBJECT))",
                                                  Item->Name.Length, Item->Name.Text,
                                                  Item->Name.Length, Item->Name.Text);
                    if(Item->isPtr)
                    {
                        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                      "&& \n"
                                                      "(ObjectOut->%.*s)",
                                                      Item->Name.Length, Item->Name.Text
                                                      );
                    }
                    
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  ") \n");
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "{\n            ItemExists->%.*s = true;\n",
                                                  Item->Name.Length, Item->Name.Text);
                    
                    FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                                  "Token = JsonToObject(VolatileMemory, Json, JsonLength, ++Token,  %cObjectOut->%.*s,0);\n"
                                                  "}\n\n",
                                                  Item->isPtr ? ' ' : '&',
                                                  Item->Name.Length, Item->Name.Text
                                                  );
                }
            }
            Item = Item->Next;
        }
        
        
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "\n}\n}\n");
        
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "if(ItemsExistOut)\n"
                                      "{\n"
                                      "    *ItemsExistOut = *ItemExists;\n"
                                      "}\n");
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "return Token;\n}\n\n");
        
        // JsonArray To Object Array
        FunctionCount += stbsp_printf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                      "u32\n"
                                      "JsonArrayToObjectArray(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, %.*s **ObjectArray, %.*s_existlist **ObjectArrayExists)\n"
                                      "{\n"
                                      "   u32 NumberOfObjects = 0;\n"
                                      "            \n"
                                      "    jsmntok_t *TokenArray = 0;\n"
                                      "    s32 NumTokensParsed = ParseJson(VolatileMemory, Json, JsonLength, &TokenArray);\n"
                                      "    \n"
                                      "    if(TokenArray)\n"
                                      "    {\n"
                                      "        u32 TokenIndex = 0;\n"
                                      "        jsmntok_t *Token = &TokenArray[TokenIndex++];\n"
                                      "        if(Token->type == JSMN_OBJECT)\n"
                                      "        {\n"
                                      "            // NOTE(Amos): Next token will be a string; not checking label strings yet.\n"
                                      "            ++TokenIndex;\n"
                                      "            Token = &TokenArray[TokenIndex++];\n"
                                      "        }\n"
                                      "        \n"
                                      "        if(Token->type == JSMN_ARRAY)\n"
                                      "        {\n"
                                      "            NumberOfObjects= Token->size;\n"
                                      "            ++Token;\n"
                                      "        }\n"
                                      "        else if(Token->type == JSMN_OBJECT)\n"
                                      "        {\n"
                                      "            NumberOfObjects = 1;\n"
                                      "        }\n"
                                      "        \n"
                                      "        if (!(*ObjectArray))\n"
                                      "        {\n"
                                      "            *ObjectArray = PushArray(VolatileMemory, NumberOfObjects, %.*s);\n"
                                      "        }\n"
                                      "        if (!(*ObjectArrayExists))\n"
                                      "        {\n"
                                      "            *ObjectArrayExists = PushArray(VolatileMemory, NumberOfObjects, %.*s_existlist);\n"
                                      "        }\n"
                                      
                                      "        \n"
                                      "        for(u32 Index = 0; Index < NumberOfObjects; ++Index)\n"
                                      "        {\n"
                                      "            Token = JsonToObject(VolatileMemory, Json, JsonLength, Token, &(*ObjectArray)[Index],&(*ObjectArrayExists)[Index]);\n"
                                      "            ++Token;\n"
                                      "        }\n"
                                      "    }\n"
                                      "    return NumberOfObjects;\n"
                                      "}\n",
                                      Struct->Name.Length, Struct->Name.Text,
                                      Struct->Name.Length, Struct->Name.Text,
                                      Struct->Name.Length, Struct->Name.Text,
                                      Struct->Name.Length, Struct->Name.Text);
        
        CopyString(Data->StructDefinitions, HeaderScratch);
        CopyString(Data->StructFunctions, FunctionScratch);
        isSuccess = true;
        
    }
    EndTemporaryMemory(TempMem);
    return isSuccess;
    
}

//////////////////////////////////////////////////////////////////////////
/// Main

int
main(int argc, char** argv)
{
    
    if(argc <= 1)
    {
        fprintf(stderr, "No directories to process. Specify desired directories to process on the command line.");
        return 1;
    }
    
    size_t Size = Gigabytes(2);
    void *Memory = abm_AllocateOsMemory(0, Size);
    data Data = {};
    Data.Memory = InitMemory(Memory, Size);
    
    
    for(s32 DirectoryIndex = 1; DirectoryIndex < argc; ++DirectoryIndex)
    {
        char const *SourceDirectory = argv[DirectoryIndex];
        ResetMemory(&Data.Memory);
        Data.EnumDefinitions = PushStruct(&Data.Memory, output_data);
        Data.EnumFunctions = PushStruct(&Data.Memory, output_data);
        Data.StructDefinitions = PushStruct(&Data.Memory, output_data);
        Data.StructFunctions = PushStruct(&Data.Memory, output_data);
        Data.AmsStateDefinitions = PushStruct(&Data.Memory, output_data);
        Data.AmsStateFunctions = PushStruct(&Data.Memory, output_data);
        
        file_list *FileList = GetListOfFiles(&Data.Memory, SourceDirectory, DirectoryIndex);
        file_data File;
        while(GetNextFile(FileList, &File))
        {
            b8 Parsing = true;
            tokenizer Tokenizer = {};
            Tokenizer.At = File.FileData;
            
            temporary_memory TempMem = BeginTemporaryMemory(&Data.Memory);
            
            token PreviousToken = {};
            
            while(Parsing)
            {
                token Token = GetToken(&Tokenizer);
                switch(Token.Type)
                {
                    case TOKEN_EndOfStream:
                    {
                        Parsing = false;
                    } break;
                    
                    case TOKEN_Unknown:
                    {
                        // NOTE(amos): Skip.
                    } break;
                    
                    case TOKEN_OpenBrace:
                    {} break;
                    
                    case TOKEN_CloseBrace:
                    {
                        if(Tokenizer.NumCurrentlyOpenBraces == 0)
                        {
                            
                        }
                    } break;
                    
                    case TOKEN_Identifier:
                    {
                        
                        if(TokenEquals(Token, "TAG") && !TokenEquals(PreviousToken, "define"))
                        {
                            Tokenizer.LastTagList = ParseTagList(&Tokenizer, &Data.Memory);
                        }
                        else if(TokenEquals(Token, "enum"))
                        {
                            if(!ParseEnum(&Tokenizer, &Data))
                            {
                                //PrintError(Tokenizer.LineNumber, "Unable to parse enum.");
                            }
                        }
#if 0
                        else if(TokenEquals(Token, "struct"))
                        {
                            if(!ParseStruct(&Tokenizer, &Data))
                            {
                                PrintError(Tokenizer.LineNumber, "Unable to parse struct token: %.*s", (int)Token.Length, Token.Text);
                            }
                        }
#endif
                        if(TokenEquals(Token, "JSON_STRUCT") && !TokenEquals(PreviousToken, "define"))
                        {
                            if(!ParseJsonStructToken(&Tokenizer, &Data))
                            {
                                PrintError(Tokenizer.LineNumber, "Unable to parse token: %.*s", (int)Token.Length,
                                           Token.Text);
                            }
                        }
                        else if(TokenEquals(Token, "AMS_STATEFUNCTION"))
                        {
                            ParseStateFunctionToken(&Tokenizer, &Data, PreviousToken);
                        }
                        
                    } break;
                    
                    default:
                    {} break;
                }
                
                PreviousToken = Token;
            }
            BuildEnumFunctions(Tokenizer.EnumClassList, &Data.Memory, Data.EnumDefinitions, Data.EnumFunctions);
            EndTemporaryMemory(TempMem);
        }
        ////////////
        const char *FileWarning =
            "/** \n"
            "    This file was autogenerated. Do not edit directly, your changes will get over-written. \n"
            "    This is a single file include. To include the source, add \n\n"
            "#define AMS_GENERATED_SRC_%03d\n\n"
            "    before including this this file.\n"
            "**/\n\n";
        
        char OutputHeaderFile[255];
        CreateFullFilename(OutputHeaderFile, ArrayCount(OutputHeaderFile), SourceDirectory, DirectoryIndex);
        FILE *HeaderFile = fopen(OutputHeaderFile, "w");
        if(HeaderFile)
        {
            fprintf(HeaderFile, FileWarning, DirectoryIndex);
            fprintf(HeaderFile, "#if !defined(_NC_GENERATED_H_%03d)\n#define _NC_GENERATED_H_%03d\n\n", DirectoryIndex, DirectoryIndex);
            fprintf(HeaderFile, "#if !defined(TAG)\n#define TAG(...) \n#endif\n");
            fprintf(HeaderFile, "#include \"AmsCommon.h\"\n"
                    "#include \"AmsMemory.h\"\n"
                    "#include \"AmsString.h\"\n"
                    "#define JSMN_HEADER\n"
                    "#include \"jsmn.h\"\n"
                    "#undef JSMN_HEADER"
                    "\n\n");
            
            // NOTE(amos): This is to prevent multiple definitions from multiple generated files.
            {
                fprintf(HeaderFile, "#if !defined(_GENERATED_HEADER_)\n#define _GENERATED_HEADER_\n");
                
                fprintf(HeaderFile, "enum json_flags\n"
                        "{\n"
                        "    JSON_Null = 0,\n"
                        "    JSON_IsLastInList = 1 << 0,\n"
                        "    JSON_DontUseTag = 1 << 1,\n"
                        "    JSON_BaseObject = 1 << 2,\n"
                        "};\n");
                
                fprintf(HeaderFile, "template<typename T>\n"
                        "constexpr auto StringToEnum(const char *String) -> T;\n\n");
                
                fprintf(HeaderFile, "template<typename T>\n"
                        "constexpr auto StringToEnum(stringptr String) -> T;\n\n");
                
                fprintf(HeaderFile, "u32 StartGroup(char *, u32 MaxLength);\n");
                fprintf(HeaderFile, "u32 EndGroup(char *, u32 MaxLength, b8 isLast);\n");
                fprintf(HeaderFile, "s32 ParseJson(memory_arena *VolatileMemory, char const *Json,  size_t JsonLength, jsmntok_t **TokenArray);\n");
                
                fprintf(HeaderFile, "#endif\n\n");
            }
            
            fprintf(HeaderFile, "%s\n", Data.EnumDefinitions->OutputString);
            fprintf(HeaderFile, "%s\n", Data.StructDefinitions->OutputString);
            
            fprintf(HeaderFile, "#endif\n");
            
            fprintf(HeaderFile, "#if defined(AMS_GENERATED_SRC)\n");
            
            // NOTE(amos): This is to prevent multiple definitions from multiple generated files.
            {
                fprintf(HeaderFile, "#if !defined(_GENERATED_HEADER_SRC_)\n#define _GENERATED_HEADER_SRC_\n");
                fprintf(HeaderFile, "#include \"jsmn.h\"\n");
                fprintf(HeaderFile, "template<typename T>\n"
                        "constexpr auto StringToEnum(const char *String) -> T\n"
                        "{\n"
                        "    return std::nullopt_t;\n"
                        "}\n"
                        );
                fprintf(HeaderFile, "#endif\n\n");
            }
            fprintf(HeaderFile, "%s\n", Data.EnumFunctions->OutputString);
            fprintf(HeaderFile, "%s\n", Data.StructFunctions->OutputString);
            fprintf(HeaderFile, "#endif\n");
            
            fclose(HeaderFile);
        }
    }
    
    //////////
    
    abm_DeallocateOsMemory(&Memory, Size);
    
    return 0;
} // main
