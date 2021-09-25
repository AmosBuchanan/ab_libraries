/** @file
@brief A basic preprocessor to generate a header file.
@author Amos Buchanan
@version 1.0
@date 2020
@copyright [MIT Public License](https://opensource.org/licenses/MIT)

This is a basic pre-preprocessor that reads in the source files in a directory and outputs a generated source file with a number of standard functions. For usage, see the project Readme.md file.

# MIT License

[MIT Public License](https://opensource.org/licenses/MIT)
                                                                                                                                      
Copyright 2020 Amos Buchanan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
                                                                                                                                      
                                                                                                                                      **/

#define VERSION "1.0"

#include <stdio.h>
#include <time.h>

#include "ab_common.h"

#define MEMORY_SRC
#include "ab_memory.h"

#define STRING_SRC
#include "ab_string.h"

#define AB_FILE_SRC
#include "ab_file.h"

#define AB_LEXER_SRC
#include "ab_lexer.h"

#define AB_PARSER_SRC
#include "ab_parser.h"

#define STB_SPRINTF_IMPLEMENTATION
#include "stb_sprintf.h"
#undef STB_SPRINTF_IMPLEMENTATION

char const *GeneratedTag = "/* *  GENERATED   * */";

inline void
WriteToOutput(output_data *Output, memory_arena *Memory, char const *String, ...)
{
    va_list Args;
    va_start (Args, String);
    
    output_data *OutputPtr = Output;
    while(OutputPtr->Next)
    {
        OutputPtr = OutputPtr->Next;
    }
    
    const size_t OutputTotalSize = ArrayCount(Output->OutputString);
    size_t Index = OutputPtr->Used;
    size_t OutputEmptySize = OutputTotalSize - OutputPtr->Used;
    
    size_t NumChars = (size_t)stbsp_vsnprintf(&OutputPtr->OutputString[Index], (s32)OutputEmptySize, String, Args);
    
    if(NumChars < OutputEmptySize)
    {
        OutputPtr->Used += NumChars;
    }
    else
    {
        // NOTE(amos);
        // The assumption is that any string will at least fit in the size of a brand new output. If not--- it's just going to get cut off and there's likely other problems.
        
        OutputPtr->OutputString[Index] = 0;
        OutputPtr->Next = mem_PushStruct(Memory, output_data);
        OutputPtr = OutputPtr->Next;
        size_t NumChars = stbsp_vsnprintf(&OutputPtr->OutputString[Index], (s32)OutputEmptySize, String, Args);
        OutputPtr->Used += NumChars;
    }
    
    va_end(Args);
} // WriteStringToOutput

inline void
CopyToOutput(output_data *Output, memory_arena *Memory, char const* String)
{
    output_data *OutputPtr = Output;
    const size_t OutputTotalSize = ArrayCount(Output->OutputString);
    size_t StringLen = st_StringLength(String, OutputTotalSize);
    u32 StringIndex = 0;
    while(StringIndex < StringLen)
    {
        size_t Index = OutputPtr->Used;
        size_t OutputEmptySize = OutputTotalSize - OutputPtr->Used;
        if(OutputEmptySize > 1)
        {
            u32 MaxLen = (u32)MINIMUM((u32)OutputEmptySize, StringLen);
            st_StringCopy(&OutputPtr->OutputString[Index], String, MaxLen, false);
            OutputPtr->Used += MaxLen;
            StringIndex += MaxLen;
        }
        else
        {
            if(OutputPtr->Next == 0)
            {
                OutputPtr->Next = mem_PushStruct(Memory, output_data);
            }
            OutputPtr = OutputPtr->Next;
        }
        
    }
    
}

inline void
CopyToOutput(output_data *ToOutput, memory_arena *Memory, output_data *FromOutput)
{
    output_data *OutputPtr = ToOutput;
    while(OutputPtr)
    {
        CopyToOutput(OutputPtr, Memory, FromOutput->OutputString);
        OutputPtr = OutputPtr->Next;
    }
}

#define ABP_QUEUE_SRC
#include "abp_queue.h"

#include "abp_enums.cpp"
#include "abp_statefunctions.cpp"
#include "abp_structs.cpp"

output_data *
GenerateOutput(memory_arena *Memory, char const *OutputFile,
               output_data *HeaderIncludes, output_data *Header, output_data *Definition)
{
    Assert(OutputFile);
    output_data *FullOutput = mem_PushStruct(Memory, output_data);
    st_ptr CapitalizedOutput = st_Capitalize(OutputFile, Memory);
    
    // NOTE(Amos): I'm abusing the st_ptr here to ensure there are no dots in the name.
    for(u32 i = 0; i < CapitalizedOutput.Length; ++i)
    {
        char *C = (char*)&CapitalizedOutput.String[i];
        if((*C < 0x30) ||
           (*C > 0x39 && *C < 0x41) ||
           (*C > 0x5A && *C < 0x61) ||
           (*C > 0x7A))
        {
            *C = '_';
        }
    }
    WriteToOutput(FullOutput, Memory, "%s\n", GeneratedTag);
    
    time_t TimeS = time(NULL);
    tm *Time = localtime(&TimeS);
    char Date[100];
    strftime( Date, ArrayCount(Date), "%b %Y", Time);
    
    WriteToOutput(FullOutput, Memory,
                  "/** @file \n"
                  "@brief Generated source file.\n"
                  "@author Automatically Generated from Amos Buchanan Preprocessor.\n"
                  "@version Code Generator Version " VERSION "\n"
                  "@date %s\n"
                  "\n"
                  "This file was autogenerated. Do not edit directly, your changes will get over-written. \n"
                  "This is a single file include. To include the source, add \n\n"
                  "~~~c\n"
                  "#define %.*s_SRC\n"
                  "~~~\n"
                  "\n"
                  "This source depends on `stb_sprintf.h`. The source must be included somewhere; it's not pulled in automatically. This header is one of [Sean T Barrett's single-header libraries, available on github](https://github.com/nothings/stb).\n"
                  "To add the source, add the following defines ONCE:\n"
                  "\n"
                  "~~~c\n"
                  "#define STB_SPRINTF_IMPLEMENTATION\n"
                  "#include \"stb_sprintf.h\"\n"
                  "#undef STB_SPRINTF_IMPLEMENTATION\n"
                  "~~~\n"
                  "\n"
                  "JSON parsing is handled by [JSMN library, available on github](https://github.com/zserge/jsmn). If you are not using any JSON tags, this library is not needed. If you *are* using JSON parsing, add the following line before including this file.\n"
                  "~~~c\n"
                  "#define GEN_JSMN_HEADER\n"
                  "~~~\n"
                  "\n"
                  "Ensure the jsmn.h header is in your include directory. You will have to include the source code yourself separately.\n"
                  "\n"
                  "The code is marked using doxygen. By default, it excludes the JSON parsing functions. If you'd like to include them, add `GEN_JSMN_HEADER` to the option in doxygen.cfg. Example:\n"
                  "~~~\n"
                  "PREDEFINED = GEN_JSMN_HEADER\n"
                  "~~~\n"
                  "\n"
                  "**/\n\n"
                  "#ifndef TAG\n"
                  "#define TAG(...)\n"
                  "#endif\n\n"
                  "#ifndef STATEMACHINE\n"
                  "#define STATEMACHINE(...)\n"
                  "#endif\n"
                  "#ifndef QUEUE\n"
                  "#define QUEUE(...)\n"
                  "#endif\n"
                  "#include <stdlib.h>\n"
                  "#include \"ab_memory.h\"\n"
                  "#include \"ab_string.h\"\n"
                  "#include \"stb_sprintf.h\""
                  "\n"
                  "#ifdef GEN_JSMN_HEADER\n"
                  "#include \"ab_json.h\"\n"
                  "#endif // GEN_JSMN_HEADER\n\n"
                  "\n",
                  Date,
                  PSTRING(CapitalizedOutput));
    
    // NOTE(amos): This is to prevent multiple definitions from multiple generated files.
    {
        WriteToOutput(FullOutput, Memory,
                      "#if !defined(_GENERATED_HEADER_)\n#define _GENERATED_HEADER_\n");
        
        WriteToOutput(FullOutput, Memory, 
                      "/** @brief Generic template for the c-style string StringToEnum<> functions. **/\n"
                      "template<typename T>\n"
                      "auto StringToEnum(const char *String) -> T;\n\n");
        
        WriteToOutput(FullOutput, Memory, 
                      "/** @brief Generic template for the st_ptr StringToEnum<> functions. **/\n"
                      "template<typename T>\n"
                      "auto StringToEnum(st_ptr String) -> T;\n\n");
        
        WriteToOutput(FullOutput, Memory, "\n#endif\n\n");
    }
    
    
    WriteToOutput(FullOutput, Memory,
                  "#if !defined(_AB_GENERATED_HEADER_%.*s_)\n#define _AB_GENERATED_HEADER_%.*s_\n\n",
                  PSTRING(CapitalizedOutput), PSTRING(CapitalizedOutput));
    
    CopyToOutput(FullOutput, Memory, Header);
    
    CopyToOutput(FullOutput, Memory, HeaderIncludes);
    
    WriteToOutput(FullOutput, Memory,
                  "\n#endif // _AB_GENERATED_HEADER_%.*s_\n\n",
                  PSTRING(CapitalizedOutput));
    
    WriteToOutput(FullOutput, Memory,
                  "#if defined(%.*s_SRC)\n#undef %.*s_SRC\n\n",
                  PSTRING(CapitalizedOutput), PSTRING(CapitalizedOutput));
    
    CopyToOutput(FullOutput, Memory, Definition);
    
    
    WriteToOutput(FullOutput, Memory,
                  "\n#endif // %.*s_SRC\n",
                  PSTRING(CapitalizedOutput));
    
    return FullOutput;
}

/// Write out file.
inline void
CreateFullFilename(char *Output, size_t MaxLength, char const *Path, u32 Number)
{
    char const *OutputHeaderFileTemplate = "Generated_";
    stbsp_snprintf(Output, (s32)MaxLength, "%s/%s%03d.h", Path, OutputHeaderFileTemplate, Number);
}

void
WriteOutputToFile(output_data *OutputData, char const *SourceDirectory, char const *OutputFile)
{
    if(OutputData)
    {
        char GeneratedFilename[255];
        stbsp_snprintf(GeneratedFilename, ArrayCount(GeneratedFilename), "%s/%s.h",
                       SourceDirectory, OutputFile);
        output_data *OutputDataPtr = OutputData;
        FILE *GeneratedFile = fopen(GeneratedFilename, "w");
        while(OutputDataPtr)
        {
            fwrite(OutputDataPtr->OutputString, 1, OutputDataPtr->Used, GeneratedFile);
            fflush(GeneratedFile);
            OutputDataPtr = OutputDataPtr->Next;
        }
        fclose(GeneratedFile);
    }
}

/// Write out to screen
void
WriteOutputToStdOut(output_data *OutputData)
{
    if(OutputData)
    {
        output_data *OutputDataPtr = OutputData;
        while(OutputDataPtr)
        {
            fwrite(OutputDataPtr->OutputString, 1, OutputDataPtr->Used, stdout);
            fflush(stdout);
            // printf("%.*s", (s32)OutputDataPtr->Used, OutputDataPtr->OutputString);
            OutputDataPtr = OutputDataPtr->Next;
        }
    }
    else
    {
        printf("No output data to print.");
    }
    printf("\n\n");
}

int
main(int argc, char** argv)
{
    
    if(argc <= 1)
    {
        fprintf(stderr, "No directories to process. Specify desired directory to process on the command line.\n");
        fprintf(stderr, "You may also specify an output filename (excluding the extension). If no filename is given, "
                "the output will be sent to stdout.\n");
        fprintf(stderr, "%s <dir> [<outputfile>]\n", argv[0]);
        return 1;
    }
    b8 isFileOutput = false;
    char const *OutputFile = 0;
    if(argc == 3)
    {
        isFileOutput = true;
        OutputFile = argv[2];
    }
    else
    {
        OutputFile = "GENERATED_OUTPUT";
    }
    
    size_t Size = Gigabytes(1);
    void *MemoryPtr = mem_AllocateOsMemory(0, Size);
    memory_arena Memory = mem_InitMemory(MemoryPtr, Size);
    
    const s32 LexerStoreLength = Kilobytes(65);
    void* LexerStore = mem_PushSize(&Memory, LexerStoreLength);
    
    lexer Lexer = {};
    
    {
        char const *SourceDirectory = argv[1];
        temporary_memory TempMem = mem_BeginTemporaryMemory(&Memory);
        output_data *HeaderOutput = mem_PushStruct(&Memory, output_data);
        output_data *DefinitionOutput = mem_PushStruct(&Memory, output_data);
        output_data *HeaderIncludes = 
            mem_PushStruct(&Memory, output_data);
        
        
        file_list *FileList = abf_InitializeFileList(&Memory, SourceDirectory);
        file_data File;
        while(abf_GetNextFile(FileList, &File))
        {
            if(st_AreStringsEqual(GeneratedTag, File.FileData, st_StringLength(GeneratedTag, 40), false))
            {
                continue;
            }
            abl_InitLexer(&Lexer, &File);
            
            parser *Parser = ParseInit(&Memory);
            ParseExpr(&Lexer, Parser);
            
            ProcessStateFunctions(&Parser->StateMachineListSentinal, &Parser->DefinedFunctionListSentinal,
                                  &Memory, HeaderOutput, DefinitionOutput);
            ProcessEnums(&Parser->EnumListSentinal, &Memory, HeaderOutput, DefinitionOutput);
            ProcessStructs(&Parser->StructListSentinal, &Memory, HeaderOutput, DefinitionOutput);
            ProcessQueueFunctions(&Parser->QueueListSentinal, &Memory, HeaderOutput, DefinitionOutput);
            
            if(File.Type == enFileType::Header)
            {
                WriteToOutput(HeaderIncludes, &Memory,
                              "#include \"%s\"\n",
                              File.FileName);
            }
            
        }
        
        output_data *OutputData = GenerateOutput(&Memory, OutputFile, HeaderIncludes, HeaderOutput, DefinitionOutput);
        
        if(isFileOutput && FileList)
        {
            WriteOutputToFile(OutputData, SourceDirectory, OutputFile);
        }
        else if(FileList)
        {
            WriteOutputToStdOut(OutputData);
        }
        else
        {
            printf("Invalid Dir specified: %s\n", OutputFile);
        }
        
        abf_ReleaseFileList(FileList);
        mem_EndTemporaryMemory(TempMem);
    }
    
    return 0;
}