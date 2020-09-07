/** @file
   @brief Enum Class Tags
   @author Amos Buchanan
   @version 1.0
   @date 2020
   @copyright [MIT Public License](https://opensource.org/licenses/MIT)

   This is the source file for the tags used in enum class. All enum class tag definitions go here. There are no tags for C-style enums; any C-style enums with a TAG() will be ignored.

   See the @ref index "Readme.md" file for more information on usage.

   To add a new tag:
   - Write a function to create the header and function portion of the enums.
   - Update the @ref ProcessEnums function with the tag and new function.

 # MIT License

https://opensource.org/licenses/MIT

   Copyright 2020 Amos Buchanan

   Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 **/

#include "ab_parser.h"
#include "ab_lexer.h"

/**
   @brief JSON tag processing.

   This function processes the JSON tag. Usage:

~~~c
   TAG(JSON);
   enum class SomeEnum
   {
    One,
    Two,
    Three
   };
~~~

 */

void
CreateEnumJson(term_enum *Enum,
               tag *Tag,
               memory_arena *Memory,
               output_data *DefinitionsOut,
               output_data *FunctionsOut)
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
        WriteToOutput(DefinitionsOut, Memory,
                      "#ifdef GEN_JSMN_HEADER\n");
        
        WriteToOutput(DefinitionsOut, Memory,
                      "/** @brief Convert a JSON string to a %.*s enum.\n"
                      "\n"
                      "This function converts a given JSON string to an enum. Most often, this is called while parsing a struct JSON string. Example:\n"
                      "\n"
                      "~~~json\n"
                      "\"{ \"SomeTagName\": \"%.*s\" }\"\n"
                      "~~~\n"
                      "\n"
                      "will set ObjectOut to `%.*s::%.*s`. This function is usually called by the struct version of JsonToObject, rather than being called directly. \n"
                      "if this enum is part of a struct.\n"
                      "\n"
                      "This function relies on the `Strings` tag to do the String To Enum conversion.\n"
                      "@param VolatileMemory Memory that is used and is expected to be released elsewhere.\n"
                      "@param Json The JSON string to parse.\n"
                      "@param JsonLength The length of the Json String.\n"
                      "@param TokenArray Set to NULL. This is used when parsing JSON structs.\n"
                      "@param[out] ObjectOut This is the enum that was parsed.\n"
                      "@param Unused This input is ignored; it is used in parsing JSON structs.\n"
                      "@return Returns token array for the number of unused tokens in the JSON string.\n"
                      "**/\n"
                      "jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *ObjectOut, u32 Unused);\n",
                      PSTRING(Enum->Name),
                      PSTRING(Enum->ItemListSentinal.Next->Name),
                      PSTRING(Enum->Name),
                      PSTRING(Enum->ItemListSentinal.Next->Name),
                      PSTRING(Enum->Name));
        
        HeaderCount += stbsp_snprintf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                      "/** @brief Create a JSON string from a %.*s enum.\n"
                                      "\n"
                                      "This creates a JSON string from a given enum, in the form:\n"
                                      "\n"
                                      "~~~json\n"
                                      "{ \"SomeTag\":\"%.*s\" }\n"
                                      "~~~\n"
                                      "\n"
                                      "This function is usually called from the struct version JsonToObject. \n"
                                      "\n"
                                      "@param Json A string buffer to write the JSON to.\n"
                                      "@param MaxLength The maximum length that may be written to the buffer.\n"
                                      "@param Tag The tag or variable name to use for the JSON. (eg 'SomeTag')\n"
                                      "@param Type The enum to convert to JSON.\n"
                                      "@param JsonFlags Or'd list of flags. See @ref json_flags in @ref ab_json.h. \n"
                                      "@return Number of characters written to the buffer, not including the null character.\n"
                                      "**/\n"
                                      "u32 "
                                      "PushJson(char *Json, u32 MaxLength, char const *Tag, %.*s Type, u32 JsonFlags);\n",
                                      PSTRING(Enum->Name),
                                      PSTRING(Enum->ItemListSentinal.Next->Name),
                                      PSTRING(Enum->Name));
        
        
        HeaderCount += stbsp_snprintf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                      "#endif\n\n");
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "#ifdef GEN_JSMN_HEADER\n"
                                        );
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
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "#endif\n\n");
        
        Assert(FunctionCount < MaxSectionSize);
        FunctionScratch[FunctionCount] = 0;
        
        CopyToOutput(DefinitionsOut, Memory, HeaderScratch);
        CopyToOutput(FunctionsOut, Memory, FunctionScratch);
        abm_EndTemporaryMemory(TempMem);
    }
} // CreateEnumJson

/**
   @brief Enum Label processing.

   This function processes enums for the Label tag.

   Usage:

~~~c
   TAG(Label:Number);
   enum class SomeEnum
   {
   TAG(Number:"1 - One")
    One,
   TAG(Number:"2 - Two")
    Two,
   TAG(Number:"3 - Three")
    Three
   };
~~~

 **/

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
        /*
           const char *<Enum>Label_<Short> = {};
           const char *<Enum>ToLabelShort(<Enum>);
         */
        HeaderCount += stbsp_snprintf(&HeaderScratch[HeaderCount], (MaxSectionSize - HeaderCount),
                                      "/** @brief Return a null-terminated string text for the defined label based on the enum.\n"
                                      "\n"
                                      "Labels are defined as part of the enum definition, see [the readme](@ref index) for information on how to create the labels.\n"
                                      "\n"
                                      "@param EnumToken The enum to convert.\n"
                                      "@return A null-terminated const string.\n"
                                      "**/\n"
                                      "const char *EnumToLabel_%.*s(%.*s EnumToken);\n"
                                      "//const char * %.*s_Label%.*s[%.*s_Count];\n",
                                      LabelTag->Option.Length, LabelTag->Option.String,
                                      Enum->Name.Length, Enum->Name.String,
                                      Enum->Name.Length, Enum->Name.String,
                                      LabelTag->Option.Length, LabelTag->Option.String,
                                      Enum->Name.Length, Enum->Name.String);
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
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
            
            FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                            "    \"%.*s\",\n",
                                            Label.Length, Label.String);
            
            CurrentItem = CurrentItem->Next;
        }
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount), "};\n\n");
        
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
} // CreateEnumLabels



/**
   @brief Enum Strings TAG processing.

   This function processes enums for the Strings tag.

   Usage:

~~~c
   TAG(Strings);
   enum class SomeEnum
   {
    Unknown,
    One,
    Two,
    Three
   };
~~~

 **/
void
CreateEnumStrings(term_enum *Enum,
                  tag *Tag,
                  memory_arena *Memory,
                  output_data *DefinitionsOut,
                  output_data *FunctionsOut)
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
        
        WriteToOutput(DefinitionsOut, Memory, 
                      "/** @brief Convert a char * c-style string to a %.*s enum. \n"
                      "\n"
                      "If the string does not correspond to any of the enums, it will return the first value of the enum: `%.*s::%.*s`.\n"
                      "\n"
                      "@param String A null terminated string\n"
                      "@return A %.*s enum value.\n"
                      "**/\n"
                      "template<>\n"
                      "auto StringToEnum<%.*s>(const char *String) -> %.*s;\n",
                      PSTRING(Enum->Name),
                      PSTRING(Enum->Name),
                      PSTRING(Enum->ItemListSentinal.Next->Name),
                      PSTRING(Enum->Name),
                      PSTRING(Enum->Name),
                      PSTRING(Enum->Name));
        
        WriteToOutput(DefinitionsOut, Memory,
                      "/** @brief Convert a abs_stringptr string to a %.*s enum. \n"
                      "\n"
                      "If the string does not correspond to any of the enums, it will return the first value of the enum: `%.*s::%.*s`.\n"
                      "\n"
                      "@param String An abs_stringptr string.\n"
                      "@return A %.*s enum value.\n"
                      "**/\n"
                      "template<>\n"
                      "auto StringToEnum<%.*s>(abs_stringptr String) -> %.*s;\n",
                      PSTRING(Enum->Name),
                      PSTRING(Enum->Name),
                      PSTRING(Enum->ItemListSentinal.Next->Name),
                      PSTRING(Enum->Name),
                      PSTRING(Enum->Name),
                      PSTRING(Enum->Name),
                      PSTRING(Enum->Name));
        
        WriteToOutput(DefinitionsOut, Memory,
                      "/** @brief Return a abs_stringptr corresponding for the given %.*s enum.\n"
                      "\n"
                      "@param EnumToken The enum to convert to a string.\n"
                      "@return A constant abs_stringptr.\n"
                      "**/\n"
                      "constexpr abs_stringptr EnumToString(%.*s EnumToken);\n",
                      PSTRING(Enum->Name),
                      PSTRING(Enum->Name));
        
        WriteToOutput(DefinitionsOut, Memory,
                      "/** @brief Return a const char* null-terminated string for the given %.*s enum.\n"
                      "\n"
                      "@param EnumToken The enum to convert to a string.\n"
                      "@return A null-terminated string\n"
                      "**/\n"
                      "constexpr char const* EnumToCString(%.*s EnumToken);\n",
                      PSTRING(Enum->Name),
                      PSTRING(Enum->Name));
        
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                        "constexpr abs_stringptr %.*s_Strings[%.*s_Count] = \n{\n",
                                        Enum->Name.Length, Enum->Name.String,
                                        Enum->Name.Length, Enum->Name.String);
        term_enumitem *CurrentItem = Enum->ItemListSentinal.Next;
        while(CurrentItem != &Enum->ItemListSentinal)
        {
            FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount),
                                            "   {\"%.*s\", %u},\n",
                                            CurrentItem->Name.Length, CurrentItem->Name.String,
                                            CurrentItem->Name.Length);
            
            CurrentItem = CurrentItem->Next;
        }
        
        FunctionCount += stbsp_snprintf(&FunctionScratch[FunctionCount], (MaxSectionSize - FunctionCount), "};\n\n");
        
        
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
} // CreateEnumStrings

/**
   @brief Process all enums.

   Process all of the tags in the enums. This calls out to the individual functions for each tag.
 **/
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
                      PSTRING(Enum->Name),
                      PSTRING(Enum->Name));
        WriteToOutput(Headers, Memory, 
                      "/** @brief Number of items in %.*s enum. **/\n"
                      "const u32 %.*s_Count = %u;\n",
                      PSTRING(Enum->Name),
                      PSTRING(Enum->Name),
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
} // ProcessEnums

