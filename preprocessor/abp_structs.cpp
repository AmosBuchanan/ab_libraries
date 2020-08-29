#include "ab_string.h"
#include "ab_memory.h"
#include "stb_sprintf.h"

void
CreateStructJson(term_struct *Struct, tag *Tag, memory_arena *Memory, output_data *Headers, output_data *Definitions)
{
    WriteToOutput(Headers, Memory,
                  "#ifdef GEN_JSMN_HEADER\n");
    
    WriteToOutput(Headers, Memory,
                  "u32 PushJson(char *Json, u32 MaxLength, char const *Tag, const %.*s &Value, u32 JsonFlags);\n",
                  PSTRING(Struct->Name));
    WriteToOutput(Headers, Memory, "struct %.*s_existlist;\n", PSTRING(Struct->Name));
    WriteToOutput(Headers, Memory,
                  "jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *ObjectOut, %.*s_existlist *ItemsExistOut);\n",
                  PSTRING(Struct->Name),
                  PSTRING(Struct->Name));
    WriteToOutput(Headers,Memory,
                  "u32\n"
                  "JsonArrayToObjectArray(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, %.*s **ObjectArray, %.*s_existlist **ObjectArrayExist);\n",
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
                  "    Length += StartGroup(&Json[Length], (MaxLength - Length));\n",
                  PSTRING(Struct->Name));
    
    const u32 MaxSectionSize = Kilobytes(20);
    char *ExistListScratch = (char*)abm_PushSize(Memory, MaxSectionSize);
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
        
        if(Item->isArray && abs_AreStringsEqual(Item->Type, "char"))
        {
            WriteToOutput(Definitions, Memory,
                          "{\nsize_t StringLen = abs_StringLength(Value.%.*s, %d);\n",
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
            
            if(abs_AreStringsEqual(Item->Type, "u64"))
            {
                WriteFormatType("%llu", Item->isPtr);
            }
            else if(abs_AreStringsEqual(Item->Type, "s64"))
            {
                WriteFormatType("%lld", Item->isPtr);
            }
            else if(abs_AreStringsEqual(Item->Type, "u32") ||
                    abs_AreStringsEqual(Item->Type, "u16") ||
                    abs_AreStringsEqual(Item->Type, "u8"))
                
            {
                WriteFormatType("%u", Item->isPtr);
            }
            else if(abs_AreStringsEqual(Item->Type, "s32") ||
                    abs_AreStringsEqual(Item->Type, "s16") ||
                    abs_AreStringsEqual(Item->Type, "s8") ||
                    abs_AreStringsEqual(Item->Type, "int") ||
                    abs_AreStringsEqual(Item->Type, "long"))
                
            {
                WriteFormatType("%d", Item->isPtr);
            }
            else if(abs_AreStringsEqual(Item->Type, "char") && !Item->isPtr)
            {
                WriteFormatType("%d", Item->isPtr);
            }
            else if(abs_AreStringsEqual(Item->Type, "r32"))
                
            {
                WriteFormatType("%0.3f", Item->isPtr);
            }
            else if(abs_AreStringsEqual(Item->Type, "char") && Item->isPtr)
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
            else if(abs_AreStringsEqual(Item->Type, "abs_stringptr") && !Item->isPtr)
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
            else if(abs_AreStringsEqual(Item->Type, "abs_stringptr") && Item->isPtr)
            {}
            else if(abs_AreStringsEqual(Item->Type, "b8"))
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
                  "    Length += EndGroup(&Json[Length], (MaxLength - Length), isLast);\n"
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
                  "    %.*s_existlist* ItemExists = abm_PushStruct(VolatileMemory, %.*s_existlist);\n"
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
                  PSTRING(Struct->Name),
                  PSTRING(Struct->Name),
                  PSTRING(Struct->Name),
                  PSTRING(Struct->Name));
    
    auto WriteIf = [&Definitions, &Memory](term_typeexpr *Item, char const *Type) -> void
    {
        WriteToOutput(Definitions, Memory,
                      "            if((abs_AreStringsEqual(&Json[Token->start], TokenLength, \"%.*s\",(ArrayCount(\"%.*s\")-1), true)) && \n"
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
            if(abs_AreStringsEqual(Item->Type, "u64") ||
               abs_AreStringsEqual(Item->Type, "s64"))
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
            else if(abs_AreStringsEqual(Item->Type, "u32") ||
                    abs_AreStringsEqual(Item->Type, "u16") ||
                    abs_AreStringsEqual(Item->Type, "u8")  ||
                    abs_AreStringsEqual(Item->Type, "u32") ||
                    abs_AreStringsEqual(Item->Type, "u16") ||
                    abs_AreStringsEqual(Item->Type, "u8"))
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
            
            else if(abs_AreStringsEqual(Item->Type, "b8"))
            {
                WriteIf(Item, "JSMN_PRIMITIVE");
                WriteToOutput(Definitions, Memory,
                              "    ++Token;\n"
                              "    %c(ObjectOut->%.*s) = (strncmp(&Json[Token->start],\"true\",4) == 0);\n"
                              "}\n\n",
                              Item->isPtr ? '*' : ' ',
                              PSTRING(Item->Name));
            }
            
            else if(abs_AreStringsEqual(Item->Type, "r32"))
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
            
            else if(abs_AreStringsEqual(Item->Type, "char") && Item->isArray && !Item->isPtr)
            {
                WriteIf(Item, "JSMN_STRING");
                WriteToOutput(Definitions, Memory,
                              "    ++Token;\n"
                              "    TokenLength = Token->end - Token->start;\n"
                              "    s32 Length = MINIMUM(TokenLength, (%d-1));\n"
                              "    strncpy(ObjectOut->%.*s, &Json[Token->start], Length);\n"
                              "    ObjectOut->%.*s[Length] = 0;\n"
                              "}\n\n",
                              Item->ArrayLength,
                              PSTRING(Item->Name),
                              PSTRING(Item->Name)
                              );
            }
            else if(abs_AreStringsEqual(Item->Type, "char") && Item->isPtr)
            {
                // TODO(amos): Handle this case.
            }
            
            else
            {
                
                // NOTE(amos): No real way to tell the difference between a struct and an enum here
                //    so in the case of object -> struct, in the case of string -> enum.
                WriteToOutput(Definitions, Memory,
                              "            if((abs_AreStringsEqual(&Json[Token->start], TokenLength, \"%.*s\",(ArrayCount(\"%.*s\")-1), true)) && \n"
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
                  "            *ObjectArray = abm_PushArray(VolatileMemory, NumberOfObjects, %.*s);\n"
                  "        }\n"
                  "        if (!(*ObjectArrayExists))\n"
                  "        {\n"
                  "            *ObjectArrayExists = abm_PushArray(VolatileMemory, NumberOfObjects, %.*s_existlist);\n"
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
            if(abs_AreStringsEqual(Tag->Name, "JSON"))
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

