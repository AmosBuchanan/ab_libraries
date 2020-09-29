/** @file
   @brief Struct/Union Class Tags
   @author Amos Buchanan
   @version 1.0
   @date 2020
   @copyright [MIT Public License](https://opensource.org/licenses/MIT)

   This is the source file for the tags used in structs and unions. All struct/union tag definitions go here. There is no difference between struct and union for this purpose.

   See the @ref index "Readme.md" file for more information on usage.

   To add a new tag:
   - Write a function to create the header and function portion of the struct functions and definitions..
   - Update the @ref ProcessStructs function with the tag and new function.

 # MIT License

https://opensource.org/licenses/MIT

   Copyright 2020 Amos Buchanan

   Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 **/

#include "ab_string.h"
#include "ab_memory.h"
#include "stb_sprintf.h"

/** @brief JSON tag processing.

Processes the JSON tag. Usage:

~~~c
TAG(JSON);
struct SomeStruct
{
    b8 isBoolean;
    u32 UnsignedInt;
    r32 Real32;
};
~~~

**/
void
CreateStructJson(term_struct *Struct, tag *Tag, memory_arena *Memory, output_data *Headers, output_data *Definitions)
{
    WriteToOutput(Headers, Memory,
                  "#ifdef GEN_JSMN_HEADER\n");
    
    WriteToOutput(Headers, Memory,
                  "/** @brief Convert a struct object into a JSON string.\n"
                  "\n"
                  "Converts an object into a string. This can be a named variable in JSON or it can be part of an array depending on the JsonFlags.\n"
                  "The resulting JSON object uses the variable names for the tags. It supports basic types and arrays from @ref ab_common.h,\n"
                  "as well as any enum or struct also tagged with JSON.\n"
                  "\n"
                  "@param Json The JSON string buffer to write to.\n"
                  "@param MaxLength The maximum characters to write to the buffer.\n"
                  "@param Tag The tag to use. Can be NULL if tag is not used. See JsonFlags.\n"
                  "@param Value The struct to convert, passed as a reference.\n"
                  "@param JsonFlags Or'd list of flags. See @ref json_flags in @ref ab_json.h.\n"
                  "@return The number of characters written to the buffer, not including the null character.\n"
                  "**/\n"
                  "u32 PushJson(char *Json, u32 MaxLength, char const *Tag, const %.*s &Value, u32 JsonFlags);\n",
                  PSTRING(Struct->Name));
    WriteToOutput(Headers, Memory, 
                  "/** @brief Returns whether a variable was specified in the JSON string when converting back to a struct. See @ref JsonToObject. **/"
                  "struct %.*s_existlist;\n", 
                  PSTRING(Struct->Name));
    WriteToOutput(Headers, Memory,
                  "/** @brief Convert a JSON string to an object.\n"
                  "\n"
                  "This takes a JSON string and converts it into an object. The tags in the JSON string correspond to the variable names in the struct.\n"
                  "Unknown tags are ignored. It will also descend into enums and structs also tagged as JSON.\n"
                  "\n"
                  "@param VolatileMemory Memory that is used and is expected to be released elsewhere.\n"
                  "@param Json The JSON string to parse.\n"
                  "@param JsonLength The length of the Json String.\n"
                  "@param TokenArray Set to NULL. This is used when descending through structs.\n"
                  "@param[out] ObjectOut Location to put the struct information that is parsed.\n"
                  "@param[out] ItemsExistOut If the variable exists, the corresponding item in this struct will be set to true.\n"
                  "@return Returns token array for the number of unused tokens in the JSON string.\n"
                  "**/\n"
                  "jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *ObjectOut, %.*s_existlist *ItemsExistOut);\n",
                  PSTRING(Struct->Name),
                  PSTRING(Struct->Name));
    WriteToOutput(Headers,Memory,
                  "/** @brief Convert a JSON string to an array of objects.\n"
                  "\n"
                  "This takes a JSON string that consists of an array and converts it into an array of those objects. \n"
                  "Each object is converted as per @ref JsonToObject.\n"
                  "\n"
                  "@param VolatileMemory Memory that is used and is expected to be released elsewhere.\n"
                  "@param Json The JSON string to parse.\n"
                  "@param JsonLength The length of the Json String.\n"
                  "@param[out] ObjectArray Location to put the object array. Array memory is taken from VolatileMemory.\n"
                  "@param[out] ObjectArrayExist Array of %.*s_existlist structs, as per @ref JsonToObject.\n"
                  "@return Number of items in the array.\n"
                  "**/\n"
                  "u32 "
                  "JsonArrayToObjectArray(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, %.*s **ObjectArray, %.*s_existlist **ObjectArrayExist);\n",
                  PSTRING(Struct->Name),
                  PSTRING(Struct->Name),
                  PSTRING(Struct->Name));
    WriteToOutput(Headers,Memory,
                  "#endif\n\n");
    
    
    WriteToOutput(Definitions, Memory,
                  "#ifdef GEN_JSMN_HEADER\n");
    
    WriteToOutput(Definitions, Memory,
                  "u32 PushJson(char *Json, u32 MaxLength, char const*Tag, const %.*s &Value, u32 JsonFlags = 0)\n{\n"
                  "    u32 Length = 0;\n"
                  "    b8 isLast = (JsonFlags & JSON_IsLastInList);\n"
                  "    if(JsonFlags & JSON_BaseObject)\n"
                  "    {\n"
                  "        Json[Length++] = '{';\n"
                  "    }\n"
                  "    if(!(JsonFlags & JSON_DontUseTag))\n"
                  "    {\n"
                  "          Length += stbsp_snprintf(&Json[Length], MaxLength, \"\\\"%%s\\\":\", Tag);\n"
                  "    }\n"
                  "    Length += js_StartGroup(&Json[Length], (MaxLength - Length));\n",
                  PSTRING(Struct->Name));
    
    const u32 MaxSectionSize = Kilobytes(20);
    char *ExistListScratch = (char*)mem_PushSize(Memory, MaxSectionSize);
    u32 ExistListCount = 0;
    ExistListCount += stbsp_snprintf(ExistListScratch, (MaxSectionSize - ExistListCount),
                                     "struct %.*s_existlist\n{\n", PSTRING(Struct->Name));
    
    
    term_structitem *StructItem = Struct->ItemListSentinal.Next;
    while(StructItem != &Struct->ItemListSentinal)
    {
        b8 isLast = (StructItem->Next == &Struct->ItemListSentinal);
        
        term_typeexpr *Item = StructItem->Type;
        
        ExistListCount += stbsp_snprintf(&ExistListScratch[ExistListCount], (MaxSectionSize - ExistListCount),
                                         "   b8 %.*s;\n", PSTRING(Item->Name));
        
        const char *isLastString = (isLast) ? "JSON_IsLastInList" : "JSON_Null";
        char Separator = (!isLast) ? ',' : ' ';
        
        if(Item->isArray && st_AreStringsEqual(Item->Type, "char"))
        {
            WriteToOutput(Definitions, Memory,
                          "{\nsize_t StringLen = st_StringLength(Value.%.*s, %d);\n",
                          PSTRING(Item->Name),
                          Item->ArrayLength);
            
            WriteToOutput(Definitions, Memory,
                          "Length += stbsp_snprintf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":\\\"%%.*s\\\"%c\", (s32)StringLen, Value.%.*s);\n}\n",
                          PSTRING(Item->Name),
                          Separator,
                          PSTRING(Item->Name)
                          );
        }
        else if(!Item->isArray)
        {
            auto WriteFormatType = [&Definitions, &Memory, &Item, &Separator](char const *Format, b8 isPtr) -> void
            {
                if(isPtr)
                {
                    WriteToOutput(Definitions, Memory,
                                  "if(Value.%.*s)\n"
                                  "{\n    ",
                                  PSTRING(Item->Name)
                                  );
                }
                WriteToOutput(Definitions, Memory,
                              "Length += stbsp_snprintf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":%s%c\", %c(Value.%.*s));\n",
                              PSTRING(Item->Name),
                              Format, Separator,
                              isPtr ? '*' : ' ',
                              PSTRING(Item->Name)
                              );
                
                if(isPtr)
                {
                    WriteToOutput(Definitions, Memory,
                                  "}\n");
                }
            };
            
            if(st_AreStringsEqual(Item->Type, "u64"))
            {
                WriteFormatType("%llu", Item->isPtr);
            }
            else if(st_AreStringsEqual(Item->Type, "s64"))
            {
                WriteFormatType("%lld", Item->isPtr);
            }
            else if(st_AreStringsEqual(Item->Type, "u32") ||
                    st_AreStringsEqual(Item->Type, "u16") ||
                    st_AreStringsEqual(Item->Type, "u8"))
                
            {
                WriteFormatType("%u", Item->isPtr);
            }
            else if(st_AreStringsEqual(Item->Type, "s32") ||
                    st_AreStringsEqual(Item->Type, "s16") ||
                    st_AreStringsEqual(Item->Type, "s8") ||
                    st_AreStringsEqual(Item->Type, "int") ||
                    st_AreStringsEqual(Item->Type, "long"))
                
            {
                WriteFormatType("%d", Item->isPtr);
            }
            else if(st_AreStringsEqual(Item->Type, "char") && !Item->isPtr)
            {
                WriteFormatType("%d", Item->isPtr);
            }
            else if(st_AreStringsEqual(Item->Type, "r32"))
                
            {
                WriteFormatType("%0.3f", Item->isPtr);
            }
            else if(st_AreStringsEqual(Item->Type, "char") && Item->isPtr)
            {
                WriteToOutput(Definitions, Memory,
                              "if(Value.%.*s)\n"
                              "{\n",
                              PSTRING(Item->Name)
                              );
                
                WriteToOutput(Definitions, Memory,
                              "Length += stbsp_snprintf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":\\\"%%s\\\"%c\", (Value.%.*s));\n}\n",
                              PSTRING(Item->Name),
                              Separator,
                              PSTRING(Item->Name)
                              );
            }
            else if(st_AreStringsEqual(Item->Type, "st_stringptr") && !Item->isPtr)
            {
                WriteToOutput(Definitions, Memory,
                              "if(Value.%.*s.String)\n"
                              "{\n",
                              PSTRING(Item->Name)
                              );
                
                WriteToOutput(Definitions, Memory,
                              "Length += stbsp_snprintf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":\\\"%%.*s\\\"%c\", (Value.%.*s.String), (Value.%.*s.String));\n}\n",
                              PSTRING(Item->Name),
                              Separator,
                              PSTRING(Item->Name),
                              PSTRING(Item->Name)
                              );
            }
            else if(st_AreStringsEqual(Item->Type, "st_stringptr") && Item->isPtr)
            {}
            else if(st_AreStringsEqual(Item->Type, "b8"))
            {
                
                WriteToOutput(Definitions, Memory,
                              "Length += stbsp_snprintf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":%%s%c\", (%c(Value.%.*s) ? \"true\" : \"false\"));\n",
                              PSTRING(Item->Name),
                              Separator,
                              Item->isPtr ? '*' : ' ',
                              PSTRING(Item->Name)
                              );
            }
            else
            {
                if(Item->isPtr)
                {
                    WriteToOutput(Definitions, Memory,
                                  "if(Value.%.*s)\n"
                                  "{\n    ",
                                  PSTRING(Item->Name)
                                  );
                }
                
                WriteToOutput(Definitions, Memory,
                              "Length += PushJson(&Json[Length], (MaxLength - Length), \"%.*s\", %c(Value.%.*s), %s);\n",
                              PSTRING(Item->Name),
                              Item->isPtr ? '*' : ' ',
                              PSTRING(Item->Name),
                              isLastString);
                if(Item->isPtr)
                {
                    WriteToOutput(Definitions, Memory,
                                  "}\n");
                }
            }
        }
        
        StructItem = StructItem->Next;
    }
    
    WriteToOutput(Definitions, Memory,
                  "    Length += js_EndGroup(&Json[Length], (MaxLength - Length), isLast);\n"
                  "    if(JsonFlags & JSON_BaseObject)\n"
                  "    {\n"
                  "        Json[Length++] = '}';\n"
                  "    }\n"
                  "    return Length;\n}\n\n");
    
    
    ExistListCount += stbsp_snprintf(&ExistListScratch[ExistListCount], (MaxSectionSize - ExistListCount),
                                     "};\n");
    
    /// Object to Json Function
    WriteToOutput(Definitions, Memory,
                  "jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *ObjectOut, %.*s_existlist *ItemsExistOut)\n"
                  "{\n"
                  "    %.*s_existlist* ItemExists = mem_PushStruct(VolatileMemory, %.*s_existlist);\n"
                  "    s32 NumTokensProcessed =  js_ParseJson(VolatileMemory, Json, JsonLength, &TokenArray);\n"
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
                  PSTRING(Struct->Name),
                  PSTRING(Struct->Name),
                  PSTRING(Struct->Name),
                  PSTRING(Struct->Name));
    
    auto WriteIf = [&Definitions, &Memory](term_typeexpr *Item, char const *Type) -> void
    {
        WriteToOutput(Definitions, Memory,
                      "            if((st_AreStringsEqual(&Json[Token->start], TokenLength, \"%.*s\",(ArrayCount(\"%.*s\")-1), true)) && \n"
                      "               ((Token+1)->type == %s)",
                      PSTRING(Item->Name),
                      PSTRING(Item->Name),
                      Type);
        
        if(Item->isPtr)
        {
            WriteToOutput(Definitions, Memory,
                          "&& \n"
                          "(ObjectOut->%.*s)",
                          PSTRING(Item->Name)
                          );
        }
        
        WriteToOutput(Definitions, Memory,
                      ") \n");
        WriteToOutput(Definitions, Memory,
                      "{\n            ItemExists->%.*s = true;\n",
                      PSTRING(Item->Name));
    };
    
    StructItem = Struct->ItemListSentinal.Next;
    while(StructItem != &Struct->ItemListSentinal)
    {
        b8 isLast = (StructItem->Next == &Struct->ItemListSentinal);
        term_typeexpr *Item = StructItem->Type;
        
        if(!Item->isConst)
        {
            if(st_AreStringsEqual(Item->Type, "u64") ||
               st_AreStringsEqual(Item->Type, "s64"))
            {
                WriteIf(Item, "JSMN_PRIMITIVE");
                WriteToOutput(Definitions, Memory,
                              "    ++Token;\n"
                              "    %c(ObjectOut->%.*s) = (%.*s)atoll(&Json[Token->start]);\n"
                              "}\n\n",
                              Item->isPtr ? '*' : ' ',
                              PSTRING(Item->Name),
                              PSTRING(Item->Type));
            }
            else if(st_AreStringsEqual(Item->Type, "u32") ||
                    st_AreStringsEqual(Item->Type, "u16") ||
                    st_AreStringsEqual(Item->Type, "u8")  ||
                    st_AreStringsEqual(Item->Type, "u32") ||
                    st_AreStringsEqual(Item->Type, "u16") ||
                    st_AreStringsEqual(Item->Type, "u8"))
            {
                WriteIf(Item, "JSMN_PRIMITIVE");
                WriteToOutput(Definitions, Memory,
                              "    ++Token;\n"
                              "    %c(ObjectOut->%.*s) = (%.*s)atoi(&Json[Token->start]);\n"
                              "}\n\n",
                              Item->isPtr ? '*' : ' ',
                              PSTRING(Item->Name),
                              PSTRING(Item->Type));
            }
            
            else if(st_AreStringsEqual(Item->Type, "b8"))
            {
                WriteIf(Item, "JSMN_PRIMITIVE");
                WriteToOutput(Definitions, Memory,
                              "    ++Token;\n"
                              "    %c(ObjectOut->%.*s) = (st_AreStringsEqual(&Json[Token->start],\"true\",4, false) == 0);\n"
                              "}\n\n",
                              Item->isPtr ? '*' : ' ',
                              PSTRING(Item->Name));
            }
            
            else if(st_AreStringsEqual(Item->Type, "r32"))
            {
                WriteIf(Item, "JSMN_PRIMITIVE");
                WriteToOutput(Definitions, Memory,
                              "    ++Token;\n"
                              "    %c(ObjectOut->%.*s) = (%.*s)atof(&Json[Token->start]);\n"
                              "}\n\n",
                              Item->isPtr ? '*' : ' ',
                              PSTRING(Item->Name),
                              PSTRING(Item->Type));
            }
            
            else if(st_AreStringsEqual(Item->Type, "char") && Item->isArray && !Item->isPtr)
            {
                WriteIf(Item, "JSMN_STRING");
                WriteToOutput(Definitions, Memory,
                              "    ++Token;\n"
                              "    TokenLength = Token->end - Token->start;\n"
                              "    s32 Length = MINIMUM(TokenLength, (%d-1));\n"
                              "    st_StringCopy(ObjectOut->%.*s, &Json[Token->start], Length, true);\n"
                              "    ObjectOut->%.*s[Length] = 0;\n"
                              "}\n\n",
                              Item->ArrayLength,
                              PSTRING(Item->Name),
                              PSTRING(Item->Name)
                              );
            }
            else if(st_AreStringsEqual(Item->Type, "char") && Item->isPtr)
            {
                // TODO(amos): Handle this case.
            }
            
            else
            {
                
                // NOTE(amos): No real way to tell the difference between a struct and an enum here
                //    so in the case of object -> struct, in the case of string -> enum.
                WriteToOutput(Definitions, Memory,
                              "            if((st_AreStringsEqual(&Json[Token->start], TokenLength, \"%.*s\",(ArrayCount(\"%.*s\")-1), true)) && \n"
                              "               (((Token+1)->type == JSMN_STRING) || ((Token+1)->type == JSMN_OBJECT))",
                              PSTRING(Item->Name),
                              PSTRING(Item->Name));
                if(Item->isPtr)
                {
                    WriteToOutput(Definitions, Memory,
                                  "&& \n"
                                  "(ObjectOut->%.*s)",
                                  PSTRING(Item->Name)
                                  );
                }
                
                WriteToOutput(Definitions, Memory,
                              ") \n");
                WriteToOutput(Definitions, Memory,
                              "{\n            ItemExists->%.*s = true;\n",
                              PSTRING(Item->Name));
                
                WriteToOutput(Definitions, Memory,
                              "Token = JsonToObject(VolatileMemory, Json, JsonLength, ++Token,  %cObjectOut->%.*s,0);\n"
                              "}\n\n",
                              Item->isPtr ? ' ' : '&',
                              PSTRING(Item->Name)
                              );
            }
        }
        StructItem = StructItem->Next;
    }
    
    WriteToOutput(Definitions, Memory,
                  "\n}\n}\n");
    
    WriteToOutput(Definitions, Memory,
                  "if(ItemsExistOut)\n"
                  "{\n"
                  "    *ItemsExistOut = *ItemExists;\n"
                  "}\n");
    WriteToOutput(Definitions, Memory,
                  "return Token;\n}\n\n");
    
    // JsonArray To Object Array
    WriteToOutput(Definitions, Memory,
                  "u32\n"
                  "JsonArrayToObjectArray(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, %.*s **ObjectArray, %.*s_existlist **ObjectArrayExists)\n"
                  "{\n"
                  "   u32 NumberOfObjects = 0;\n"
                  "            \n"
                  "    jsmntok_t *TokenArray = 0;\n"
                  "    s32 NumTokensParsed = js_ParseJson(VolatileMemory, Json, JsonLength, &TokenArray);\n"
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
                  "            *ObjectArray = mem_PushArray(VolatileMemory, NumberOfObjects, %.*s);\n"
                  "        }\n"
                  "        if (!(*ObjectArrayExists))\n"
                  "        {\n"
                  "            *ObjectArrayExists = mem_PushArray(VolatileMemory, NumberOfObjects, %.*s_existlist);\n"
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
                  PSTRING(Struct->Name),
                  PSTRING(Struct->Name),
                  PSTRING(Struct->Name),
                  PSTRING(Struct->Name));
    
    WriteToOutput(Definitions, Memory,
                  "#endif\n\n");
    
    CopyToOutput(Headers, Memory, ExistListScratch);
} // CreateStructJson

/** @brief Handle the tags and call the struct create functions.

This is the main function for calling out to the functions that handle each tag.
**/
void
ProcessStructs(term_struct *StructListSentinal, memory_arena *Memory, output_data *Headers, output_data *Definitions)
{
    term_struct *Struct = StructListSentinal->Next;
    while(Struct != StructListSentinal)
    {
        WriteToOutput(Headers, Memory,
                      "/****** Struct %.*s Header *****/\n",
                      Struct->Name.Length, Struct->Name.String);
        
        WriteToOutput(Headers, Memory,
                      "struct %.*s;\n",
                      Struct->Name.Length, Struct->Name.String);
        
        WriteToOutput(Definitions, Memory,
                      "/****** Struct %.*s Functions *****/\n", Struct->Name.Length, Struct->Name.String);
        
        tag *Tag = Struct->TagListSentinal.Next;
        while(Tag != &Struct->TagListSentinal)
        {
            if(st_AreStringsEqual(Tag->Name, "JSON"))
            {
                CreateStructJson(Struct, Tag, Memory, Headers, Definitions);
            }
            
            Tag = Tag->Next;
        }
        
        WriteToOutput(Headers, Memory, "\n");
        WriteToOutput(Definitions, Memory, "\n");
        
        Struct = Struct->Next;
    }
} // ProcessStructs

