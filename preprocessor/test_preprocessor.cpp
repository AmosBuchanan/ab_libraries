/* ========================================================================
   $File: $
   $Date: $
   $Revision: $
   $Creator: Amos Buchanan $
   $Email: amos.buchanan@traxxautomation.com $
   $Notice: (C) Copyright 2015 Traxx Automation. All Rights Reserved. $
   ======================================================================== */

#include "mwp_302-preprocessor.h"

#include <string.h>

struct test_token_list_item
{
    token FunctionName;
    token_list_item TestStepsHead;
    
    test_token_list_item *Next;
    test_token_list_item *Prev;
};

struct test_suite_token_list_item
{
    token Name;
    token SuiteArrayName;
    token InitFunctionName;
    token ShutdownFunctionName;
    test_token_list_item TestsHead;
    
    test_suite_token_list_item *Next;
    test_suite_token_list_item *Prev;
};

struct data
{
    memory_arena Memory;
    token CurrentlyOpenTokenName;
    
    test_suite_token_list_item TestSuiteHead;
};

/////////////////////////////////////////////////////
/// Parsing Functions

void
ParseTestFunctionName(tokenizer * Tokenizer, memory_arena * Memory, test_token_list_item * TestsHead)
{
    token NextToken = GetToken(Tokenizer);
    
    if(NextToken.Type == TOKEN_Identifier)
    {
        // NOTE(amos): Parse token identifier.
        test_token_list_item *NewTest = PushStruct(Memory, test_token_list_item);
        NewTest->FunctionName = NextToken;
        NewTest->Next = TestsHead;
        NewTest->Prev = TestsHead->Prev;
        NewTest->Prev->Next = NewTest;
        TestsHead->Prev = NewTest;
        
        NewTest->TestStepsHead.Next = &NewTest->TestStepsHead;
        NewTest->TestStepsHead.Prev = &NewTest->TestStepsHead;
        
        ParseTestFunctionName(Tokenizer, Memory, TestsHead);
    }
    else if((NextToken.Type == TOKEN_Comma) || (NextToken.Type == TOKEN_OpenBrace))
    {
        // NOTE(amos): Ignore.
        ParseTestFunctionName(Tokenizer, Memory, TestsHead);
    }
    else if(NextToken.Type == TOKEN_CloseBrace)
    {
        // NOTE(amos): Handle Close Brace.
    }
    else if(NextToken.Type == TOKEN_EndOfStream)
    {
        // NOTE(amos): There was an error.
        PrintError(Tokenizer->LineNumber, "Ran into end of stream while parsing test functions. Last item added: %.*s", (int)TestsHead->Prev->FunctionName.Length, TestsHead->Prev->FunctionName.Text);
    }
    else
    {
        // NOTE(amos): Ignore anything else.
    }
} // ParseTestFunctionName

b8
ParseSuiteList(tokenizer *Tokenizer, data *Data, test_suite_token_list_item **CurrentSuiteOut)
{
    b8 Result = false;
    
    if(RequireToken(Tokenizer, TOKEN_OpenParen))
    {
        token SuiteName = GetToken(Tokenizer);
        if(SuiteName.Type == TOKEN_String)
        {
            test_suite_token_list_item *NewSuite = PushStruct(&Data->Memory, test_suite_token_list_item);
            NewSuite->Name = SuiteName;
            NewSuite->Next = &Data->TestSuiteHead;
            NewSuite->Prev = Data->TestSuiteHead.Prev;
            NewSuite->Prev->Next = NewSuite;
            Data->TestSuiteHead.Prev = NewSuite;
            
            NewSuite->TestsHead.Next = &NewSuite->TestsHead;
            NewSuite->TestsHead.Prev = &NewSuite->TestsHead;
            *CurrentSuiteOut = NewSuite;
            
            token *ArrayName = &NewSuite->SuiteArrayName;
            ArrayName->Type = TOKEN_Identifier;
            ArrayName->Length = SuiteName.Length + 5;
            ArrayName->Text = PushArray(&Data->Memory, ArrayName->Length, char);
            int NameIndex = 0;
            for(u32 Index = 0; Index < SuiteName.Length; ++Index)
            {
                if(SuiteName.Text[Index] != ' ')
                {
                    ArrayName->Text[NameIndex++] = SuiteName.Text[Index];
                }
            }
            ArrayName->Text[NameIndex++] = 'A';
            ArrayName->Text[NameIndex++] = 'r';
            ArrayName->Text[NameIndex++] = 'r';
            ArrayName->Text[NameIndex++] = 'a';
            ArrayName->Text[NameIndex++] = 'y';
            ArrayName->Length = NameIndex;
            
            
            RequireToken(Tokenizer, TOKEN_CloseParen);
            Result = true;
        }
        else
        {
            Result = false;
        }
    }
    
    return Result;
} // ParseSuiteList

void
ParseStepsInFunction(tokenizer *Tokenizer, memory_arena *Memory, token_list_item *StepsHead)
{
    // NOTE(amos): Function is assumed to have been opened previously to check that this is a function.
    s32 OpenBraces = 1;
    
    while(OpenBraces > 0)
    {
        token NextToken = GetToken(Tokenizer);
        if((NextToken.Type == TOKEN_Identifier) &&
           (TokenEquals(NextToken, "STEP")))
        {
            if(RequireToken(Tokenizer, TOKEN_OpenParen))
            {
                token StepToken = GetToken(Tokenizer);
                if(StepToken.Type == TOKEN_String)
                {
                    token_list_item *NewStep = PushStruct(Memory, token_list_item);
                    NewStep->Token = StepToken;
                    NewStep->Next = StepsHead;
                    NewStep->Prev = StepsHead->Prev;
                    NewStep->Prev->Next = NewStep;
                    StepsHead->Prev = NewStep;
                }
                
            }
            
        }
        else if(NextToken.Type == TOKEN_OpenBrace)
        {
            ++OpenBraces;
        }
        else if(NextToken.Type == TOKEN_CloseBrace)
        {
            --OpenBraces;
        }
        else
        {}
    }
    
} // ParseStepsInFunction

b8
ParseTestFunction(tokenizer *Tokenizer, memory_arena *Memory, test_suite_token_list_item *CurrentSuite)
{
    b8 Result = false;
    if(RequireToken(Tokenizer, TOKEN_OpenParen))
    {
        token TestName = GetToken(Tokenizer);
        RequireToken(Tokenizer, TOKEN_CloseParen);
        if(RequireToken(Tokenizer, TOKEN_OpenBrace))
        {
            test_token_list_item *CurrentTest = &CurrentSuite->TestsHead;
            while(CurrentTest != &CurrentSuite->TestsHead)
            {
                if(strncmp(CurrentTest->FunctionName.Text, TestName.Text, TestName.Length) == 0)
                {
                    break;
                }
            }
            
            if(CurrentTest == &CurrentSuite->TestsHead)
            {
                test_token_list_item *TestsHead = &CurrentSuite->TestsHead;
                
                test_token_list_item *NewTest = PushStruct(Memory, test_token_list_item);
                NewTest->FunctionName = TestName;
                NewTest->Next = TestsHead;
                NewTest->Prev = TestsHead->Prev;
                NewTest->Prev->Next = NewTest;
                TestsHead->Prev = NewTest;
                
                NewTest->TestStepsHead.Next = &NewTest->TestStepsHead;
                NewTest->TestStepsHead.Prev = &NewTest->TestStepsHead;
                CurrentTest = NewTest;
            }
            
            ParseStepsInFunction(Tokenizer, Memory, &CurrentTest->TestStepsHead);
        }
        
        Result = true;
    }
    else
    {
        Result = false;
    }
    
    
    return Result;
} // ParseTestFunction

b8
GetTokenFromDefine(tokenizer *Tokenizer, token *FunctionNameOut)
{
    b8 Result = false;
    
    if(RequireToken(Tokenizer, TOKEN_OpenParen))
    {
        token TestName = GetToken(Tokenizer);
        *FunctionNameOut = TestName;
        RequireToken(Tokenizer, TOKEN_CloseParen);
        
        Result = true;
    }
    
    return Result;
} // GetTokenFromDefine

b8
ParseTestSuiteInitFunction(tokenizer *Tokenizer, memory_arena *Memory, test_suite_token_list_item *CurrentSuite)
{
    return GetTokenFromDefine(Tokenizer, &CurrentSuite->InitFunctionName);
}

b8
ParseTestSuiteShutdownFunction(tokenizer *Tokenizer, memory_arena *Memory, test_suite_token_list_item *CurrentSuite)
{
    return GetTokenFromDefine(Tokenizer, &CurrentSuite->ShutdownFunctionName);
}

int
main(int argc, char** argv)
{
    data Data = {};
    GetMemory(&Data.Memory, Gigabytes(2));
    Data.TestSuiteHead.Prev = &Data.TestSuiteHead;
    Data.TestSuiteHead.Next = &Data.TestSuiteHead;
    
    // NOTE(amos): Put header files before c files.
    const char* FileListStrings[] =
    {
        "testsuite*.h",
        "testsuite*.hpp",
        "testsuite*.cpp",
        "testsuite*.c"
    };
    file_list *FileList = GetListOfFiles(&Data.Memory, "./", FileListStrings, ArrayCount(FileListStrings));
    
    output_data *IncludeFiles = PushStruct(&Data.Memory, output_data);
    
    for(u32 FileIndex = 0;
        FileIndex < FileList->FileCount;
        ++FileIndex)
    {
        b8 isParsing = true;
        file_data  *File = GetFile(&Data.Memory, FileList, FileIndex);
        WriteString(IncludeFiles, "#include \"%s\"\n", FileList->Files.gl_pathv[FileIndex]);
        
        tokenizer Tokenizer = {};
        Tokenizer.At = File->FileData;
        
        token PreviousToken = {};
        test_suite_token_list_item *CurrentSuite =  &Data.TestSuiteHead;
        
        while(isParsing)
        {
            token Token = GetToken(&Tokenizer);
            switch(Token.Type)
            {
                case TOKEN_EndOfStream:
                {
                    isParsing = false;
                } break;
                
                case TOKEN_Identifier:
                {
                    if(TokenEquals(Token, "SUITE"))
                    {
                        if(!ParseSuiteList(&Tokenizer, &Data, &CurrentSuite))
                        {
                            PrintError(Tokenizer.LineNumber, "Unable to parse token: %.*s", (int)Token.Length, Token.Text);
                        }
                    }
                    if(TokenEquals(Token, "TEST_FUNCTION"))
                    {
                        if(!ParseTestFunction(&Tokenizer, &Data.Memory, CurrentSuite))
                        {
                            PrintError(Tokenizer.LineNumber, "Unable to parse test function: %.*s", (int)Token.Length, Token.Text);
                        }
                    }
                    if(TokenEquals(Token, "TEST_SUITE_INIT_FUNCTION"))
                    {
                        if(!ParseTestSuiteInitFunction(&Tokenizer, &Data.Memory, CurrentSuite))
                        {
                            PrintError(Tokenizer.LineNumber, "Unable to parse test suite function: %.*s", (int)Token.Length, Token.Text);
                        }
                    }
                    if(TokenEquals(Token, "TEST_SUITE_SHUTDOWN_FUNCTION"))
                    {
                        if(!ParseTestSuiteShutdownFunction(&Tokenizer, &Data.Memory, CurrentSuite))
                        {
                            PrintError(Tokenizer.LineNumber, "Unable to parse test suite function: %.*s", (int)Token.Length, Token.Text);
                        }
                    }
                    
                } break;
                
                case TOKEN_Unknown:
                default:
                {
                    // NOTE(amos): Skip.
                } break;
            }
        }
    }
    
    WriteString(IncludeFiles, "\n");
    
    // Output list of tests.
    
    output_data *TextTestList = PushStruct(&Data.Memory, output_data);
    output_data *TestSuiteArray = PushStruct(&Data.Memory, output_data);
    output_data *TestFunctionArrays = PushStruct(&Data.Memory, output_data);
    output_data *FunctionDeclarations = PushStruct(&Data.Memory, output_data);
    
    test_suite_token_list_item *CurrentSuite = Data.TestSuiteHead.Next;
    
    s32 TestSuiteCount = 1;
    WriteString(TextTestList, "List of tests.\n");
    
    WriteString(TestSuiteArray, "test_suite TestSuites[] = \n{\n");
    
    while(CurrentSuite != &Data.TestSuiteHead)
    {
        WriteString(TextTestList, "----\n");
        WriteString(TextTestList, "%02d - %.*s (%.*s)\n", TestSuiteCount++, (int)CurrentSuite->Name.Length, CurrentSuite->Name.Text, (int)CurrentSuite->SuiteArrayName.Length, CurrentSuite->SuiteArrayName.Text);
        
        WriteStringWithTokenToOutput(FunctionDeclarations, "TEST_SUITE_INIT_FUNCTION(%.*s);\n", CurrentSuite->InitFunctionName);
        WriteStringWithTokenToOutput(FunctionDeclarations, "TEST_SUITE_SHUTDOWN_FUNCTION(%.*s);\n", CurrentSuite->ShutdownFunctionName);
        
        WriteStringWithTokenToOutput(TestFunctionArrays, "test %.*s[] = \n{\n", CurrentSuite->SuiteArrayName);
        
        test_token_list_item *CurrentTest = CurrentSuite->TestsHead.Next;
        s32 TestCount = 1;
        while(CurrentTest != &CurrentSuite->TestsHead)
        {
            WriteString(TextTestList, "  %02d. %.*s\n", TestCount++, (int)CurrentTest->FunctionName.Length, CurrentTest->FunctionName.Text);
            
            WriteStringWithTokenToOutput(FunctionDeclarations, "TEST_FUNCTION(%.*s);\n", CurrentTest->FunctionName);
            
            WriteString(TestFunctionArrays, "  {\"%.*s\",  %.*s},\n",
                        CurrentTest->FunctionName.Length, CurrentTest->FunctionName.Text,
                        CurrentTest->FunctionName.Length, CurrentTest->FunctionName.Text);
            
            
            token_list_item *CurrentStep = CurrentTest->TestStepsHead.Next;
            s32 StepCount = 1;
            while(CurrentStep != &CurrentTest->TestStepsHead)
            {
                WriteString(TextTestList, "    (%02d) %.*s\n", StepCount++, (int)CurrentStep->Token.Length, CurrentStep->Token.Text);
                CurrentStep = CurrentStep->Next;
            }
            
            CurrentTest = CurrentTest->Next;
        }
        
        WriteString(TestSuiteArray, "  {\"%.*s\", %.*s, %.*s, %.*s, %u },\n",
                    CurrentSuite->Name.Length, CurrentSuite->Name.Text,
                    CurrentSuite->InitFunctionName.Length, CurrentSuite->InitFunctionName.Text,
                    CurrentSuite->ShutdownFunctionName.Length, CurrentSuite->ShutdownFunctionName.Text,
                    CurrentSuite->SuiteArrayName.Length, CurrentSuite->SuiteArrayName.Text,
                    (TestCount - 1));
        
        
        WriteString(TestFunctionArrays, "};\n\n");
        
        WriteString(TextTestList, "\n");
        WriteString(FunctionDeclarations, "\n");
        
        
        CurrentSuite = CurrentSuite->Next;
    }
    
    WriteString(TestSuiteArray, "};\n\n");
    
    FILE *GeneratedCodeFile = fopen("test-generated.cpp", "w");
    
    WriteWarningToFile(GeneratedCodeFile);
    WriteOutputToFile(GeneratedCodeFile, FunctionDeclarations);
    WriteOutputToFile(GeneratedCodeFile, TestFunctionArrays);
    WriteOutputToFile(GeneratedCodeFile, TestSuiteArray);
    WriteOutputToFile(GeneratedCodeFile, IncludeFiles);
    
    fclose(GeneratedCodeFile);
    
    WriteOutputToFile("test-list.txt", TextTestList);
    
    return 0;
} // main
