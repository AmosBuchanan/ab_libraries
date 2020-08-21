#include "ab_parser.h"
#include "ab_lexer.h"

void
CreateEnumJson(term_enum *Enum, tag *Tag, 
               memory_arena *Memory, output_data *DefinitionsOut, output_data *FunctionsOut)
{
    temporary_memory TempMem = abm_BeginTemporaryMemory(Memory);
    const u32 MaxSectionSize = Kilobytes(5);
    char *HeaderScratch = (char*)abm_PushSize(Memory, MaxSectionSize);
    char *FunctionScratch = (char*)abm_PushSize(Memory, MaxSectionSize);
    HeaderScratch[0] = 0;
    FunctionScratch[0] = 0;
    u32 HeaderCount = 0;
    u32 FunctionCount = 0;
    
    
    if(Enum->ItemCount > 0)
    {
        // NOTE(amos): the Unused item is so it matches the signature of the struct JSON.
        HeaderCount += stbsp_snprintf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                      "jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *ObjectOut, u32 Unused);\n",
                                      Enum->Name.Length, Enum->Name.String);
        HeaderCount += stbsp_snprintf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                      "u32\n"
                                      "PushJson(char *Json, u32 MaxLength, char const *Tag, %.*s Type, u32 JsonFlags);\n",
                                      Enum->Name.Length, Enum->Name.String);
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "u32\n"
                                        "PushJson(char *Json, u32 MaxLength, char const *Tag, %.*s Type, u32 JsonFlags = 0)\n"
                                        "{\n"
                                        "    u32 Length = 0;\n"
                                        "    b8 isLast = (JsonFlags & JSON_IsLastInList);\n"
                                        "    Length += stbsp_snprintf(Json, MaxLength, \"\\\"%%s\\\":\\\"%%s\\\"\", Tag, EnumToCString(Type));\n"
                                        
                                        "    if(!isLast) { Json[Length++] = ','; }\n"
                                        "    return Length;\n}\n\n",
                                        Enum->Name.Length, Enum->Name.String
                                        );
        
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *ObjectOut, u32 Unused)\n",
                                        Enum->Name.Length, Enum->Name.String);
        
        
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
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
                                        "            abs_stringptr EnumString = {&Json[TokenArray[Index].start], TokenLength};\n"
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
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String
                                        );
        
        Assert(FunctionCount < MaxSectionSize);
        FunctionScratch[FunctionCount] = 0;
        
        CopyToOutput(DefinitionsOut, Memory, HeaderScratch);
        CopyToOutput(FunctionsOut, Memory, FunctionScratch);
        abm_EndTemporaryMemory(TempMem);
    }
}

void
CreateEnumLabels(term_enum *Enum, tag *LabelTag, memory_arena *Memory, output_data *DefinitionsOut, output_data *FunctionsOut)
{
    temporary_memory TempMem = abm_BeginTemporaryMemory(Memory);
    const u32 MaxSectionSize = Kilobytes(10);
    char *HeaderScratch = (char*)abm_PushSize(Memory, MaxSectionSize);
    char *FunctionScratch = (char*)abm_PushSize(Memory, MaxSectionSize);
    HeaderScratch[0] = 0;
    FunctionScratch[0] = 0;
    u32 HeaderCount = 0;
    u32 FunctionCount = 0;
    
    
    if(Enum->ItemCount > 0)
    {
        /**
const char *<Enum>Label_<Short> = {};
const char *<Enum>ToLabelShort(<Enum>);
**/
        HeaderCount += stbsp_snprintf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                      "const char *EnumToLabel_%.*s(%.*s EnumToken);\n"
                                      "//const char * %.*s_Label%.*s[%.*s_Count];\n",
                                      LabelTag->Option.Length, LabelTag->Option.String,
                                      Enum->Name.Length, Enum->Name.String,
                                      Enum->Name.Length, Enum->Name.String,
                                      LabelTag->Option.Length, LabelTag->Option.String,
                                      Enum->Name.Length, Enum->Name.String);
        
        HeaderCount += stbsp_snprintf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                      "const char * %.*s_Label%.*s[%.*s_Count] = \n"
                                      "{\n",
                                      Enum->Name.Length, Enum->Name.String,
                                      LabelTag->Option.Length, LabelTag->Option.String,
                                      Enum->Name.Length, Enum->Name.String);
        
        
        term_enumitem *CurrentItem = Enum->ItemListSentinal.Next;
        while(CurrentItem != &Enum->ItemListSentinal)
        {
            abs_stringptr Label = {};
            tag *CurrentTag = CurrentItem->TagListSentinal.Next;
            while(CurrentTag != &CurrentItem->TagListSentinal)
            {
                if(abs_AreStringsEqual(CurrentTag->Name, LabelTag->Option))
                {
                    Label = CurrentTag->Option;
                    break;
                }
                CurrentTag = CurrentTag->Next;
            }
            
            if(Label.Length == 0)
            {
                Label = CurrentItem->Name;
            }
            
            HeaderCount += stbsp_snprintf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                          "    \"%.*s\",\n",
                                          Label.Length, Label.String);
            
            CurrentItem = CurrentItem->Next;
        }
        
        HeaderCount += stbsp_snprintf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount), "};\n\n");
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "const char *\n"
                                        "EnumToLabel_%.*s(%.*s EnumToken)\n"
                                        "{\n"
                                        "    return %.*s_Label%.*s[int(EnumToken)];\n"
                                        "}\n\n",
                                        LabelTag->Option.Length, LabelTag->Option.String,
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String,
                                        LabelTag->Option.Length, LabelTag->Option.String);
        
        Assert(FunctionCount < MaxSectionSize);
        FunctionScratch[FunctionCount] = 0;
        
        
        CopyToOutput(DefinitionsOut, Memory, HeaderScratch);
        CopyToOutput(FunctionsOut, Memory, FunctionScratch);
        
    }
    abm_EndTemporaryMemory(TempMem);
}

void
CreateEnumStrings(term_enum *Enum, tag *Tag, 
                  memory_arena *Memory, output_data *DefinitionsOut, output_data *FunctionsOut)
{
    temporary_memory TempMem = abm_BeginTemporaryMemory(Memory);
    const u32 MaxSectionSize = Kilobytes(10);
    char *HeaderScratch = (char*)abm_PushSize(Memory, MaxSectionSize);
    char *FunctionScratch = (char*)abm_PushSize(Memory, MaxSectionSize);
    HeaderScratch[0] = 0;
    FunctionScratch[0] = 0;
    u32 HeaderCount = 0;
    u32 FunctionCount = 0;
    
    
    if(Enum->ItemCount > 0)
    {
        HeaderCount += stbsp_snprintf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                      "template<>\n"
                                      "auto StringToEnum<%.*s>(const char *String) -> %.*s;\n"
                                      "template<>\n"
                                      "auto StringToEnum<%.*s>(abs_stringptr String) -> %.*s;\n"
                                      "constexpr abs_stringptr EnumToString(%.*s EnumToken);\n"
                                      "constexpr char const* EnumToCString(%.*s EnumToken);\n"
                                      "constexpr abs_stringptr %.*s_Strings[%.*s_Count] = \n{\n",
                                      Enum->Name.Length, Enum->Name.String,
                                      Enum->Name.Length, Enum->Name.String,
                                      Enum->Name.Length, Enum->Name.String,
                                      Enum->Name.Length, Enum->Name.String,
                                      Enum->Name.Length, Enum->Name.String,
                                      Enum->Name.Length, Enum->Name.String,
                                      Enum->Name.Length, Enum->Name.String,
                                      Enum->Name.Length, Enum->Name.String);
        
#if 0
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "const abs_stringptr %.*s_Strings[%.*s_Count] = \n"
                                        "{\n",
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String);
#endif
        term_enumitem *CurrentItem = Enum->ItemListSentinal.Next;
        while(CurrentItem != &Enum->ItemListSentinal)
        {
            HeaderCount += stbsp_snprintf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                          "   {\"%.*s\", %u},\n",
                                          CurrentItem->Name.Length, CurrentItem->Name.String,
                                          CurrentItem->Name.Length);
            
            CurrentItem = CurrentItem->Next;
        }
        
        HeaderCount += stbsp_snprintf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount), "};\n\n");
        
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "template<>\n"
                                        "auto StringToEnum<%.*s>(const char *String) -> %.*s\n",
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String);
        
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "{\n"
                                        "    u32 StringIndex = abs_FindInList(String, %.*s_Count, %.*s_Strings, true);\n",
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String);
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "    %.*s Result = %.*s::%.*s;\n",
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->ItemListSentinal.Next->Name.Length, Enum->ItemListSentinal.Next->Name.String);
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "    if(StringIndex < %.*s_Count)\n"
                                        "    {\n"
                                        "        Result = static_cast<%.*s>(StringIndex);\n"
                                        "    }\n"
                                        "    return Result;\n"
                                        "}\n",
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String);
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "template<>\n"
                                        "auto StringToEnum<%.*s>(abs_stringptr String) -> %.*s\n",
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String);
        
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "{\n"
                                        "    u32 StringIndex = abs_FindInList(String, %.*s_Count, %.*s_Strings, true);\n",
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String);
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "    %.*s Result = %.*s::%.*s;\n",
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->ItemListSentinal.Next->Name.Length, Enum->ItemListSentinal.Next->Name.String);
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "    if(StringIndex < %.*s_Count)\n"
                                        "    {\n"
                                        "        Result = static_cast<%.*s>(StringIndex);\n"
                                        "    }\n"
                                        "    return Result;\n"
                                        "}\n",
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String);
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "constexpr const char *\n"
                                        "EnumToCString(%.*s EnumToken)\n"
                                        "{\n"
                                        "    return %.*s_Strings[int(EnumToken)].String;\n"
                                        "}\n\n",
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String);
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "constexpr abs_stringptr\n"
                                        "EnumToString(%.*s EnumToken)\n"
                                        "{\n"
                                        "    return %.*s_Strings[int(EnumToken)];\n"
                                        "}\n\n",
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String);
        
        Assert(FunctionCount < MaxSectionSize);
        FunctionScratch[FunctionCount] = 0;
        
        
        CopyToOutput(DefinitionsOut, Memory, HeaderScratch);
        CopyToOutput(FunctionsOut, Memory, FunctionScratch);
        
    }
    abm_EndTemporaryMemory(TempMem);
}

void
ProcessEnums(term_enum *EnumListSentinal, memory_arena *Memory, output_data *Headers, output_data *Definitions)
{
    term_enum *Enum = EnumListSentinal->Next;
    while(Enum != EnumListSentinal)
    {
        WriteToOutput(Headers, Memory, 
                      "/****** Enum %.*s Header *****/\n",
                      Enum->Name.Length, Enum->Name.String);
        
        WriteToOutput(Headers, Memory,
                      "enum class %.*s;\n", 
                      Enum->Name.Length, Enum->Name.String);
        WriteToOutput(Headers, Memory, "const u32 %.*s_Count = %u;\n",
                      Enum->Name.Length, Enum->Name.String,
                      Enum->ItemCount);
        
        WriteToOutput(Definitions, Memory,
                      "/****** Enum %.*s Functions *****/\n", Enum->Name.Length, Enum->Name.String);
        
        tag *Tag = Enum->TagListSentinal.Next;
        while(Tag != &Enum->TagListSentinal)
        {
            if(abs_AreStringsEqual(Tag->Name, "Strings"))
            {
                CreateEnumStrings(Enum, Tag, Memory, Headers, Definitions);
            }
            
            else if(abs_AreStringsEqual(Tag->Name, "JSON"))
            {
                CreateEnumJson(Enum, Tag, Memory, Headers, Definitions);
            }
            
            else if(abs_AreStringsEqual(Tag->Name, "Label"))
            {
                CreateEnumLabels(Enum, Tag, Memory, Headers, Definitions);
            }
            
            Tag = Tag->Next;
        }
        
        WriteToOutput(Headers, Memory, "\n");
        WriteToOutput(Definitions, Memory, "\n");
        
        Enum = Enum->Next;
    }
}

