/** @file
   @brief Struct/Union Class Tags
   @author Amos Buchanan
   @version 1.0
   @date 2020
   @copyright [MIT Public License](https://opensource.org/licenses/MIT)

   This is the source file for creating the statemachine functions. This creates a number of functions and defines for 
the state machines. 

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

#include "abp_queue.h"

void
ProcessStateFunctions(term_statemachine *MachineListSentinal, term_definedfunction *DefinedFunctionListSentinal,
                      memory_arena *Memory, output_data *Headers, output_data *Definitions)
{
    
    term_statemachine *CurrentMachine = MachineListSentinal->Next;
    while(CurrentMachine != MachineListSentinal)
    {
        st_ptr Capitalize = st_Capitalize(CurrentMachine->Function, Memory);
        st_ptr Lowercase = st_Lowercase(CurrentMachine->Function, Memory);
        const u32 BufferSize = Kilobytes(1);
        char *Buffer = mem_PushArray(Memory, BufferSize, char);
        int Index = 0;
        
        WriteToOutput(Headers, Memory, 
                      "/****  StateMachine: %.*s ****/\n",
                      Capitalize.Length, Capitalize.String);
        
        WriteToOutput(Headers, Memory,
                      "struct %.*s;\n"
                      "enum class %.*s;\n",
                      CurrentMachine->Type.Length, CurrentMachine->Type.String,
                      CurrentMachine->Cmd.Length, CurrentMachine->Cmd.String);
        
        //WriteQueueFunctions(CurrentMachine->Cmd, 10, Memory, Headers, Definitions);
        
        u32 StateParamsSize = Kilobytes(1);
        char *StateParams = mem_PushArray(Memory, StateParamsSize, char);
        u32 StateParamIndex = 0;
        
        term_typeexpr *CurrentType = CurrentMachine->TypeListSentinal.Next;
        while(CurrentType != &CurrentMachine->TypeListSentinal)
        {
            StateParamIndex += stbsp_snprintf(&StateParams[StateParamIndex], (StateParamsSize - StateParamIndex),
                                              ", %.*s ", 
                                              CurrentType->Type.Length, CurrentType->Type.String);
            if(CurrentType->isConst) 
            {
                StateParamIndex += stbsp_snprintf(&StateParams[StateParamIndex], (StateParamsSize - StateParamIndex), "const ");
            }
            if(CurrentType->isPtr)
            {
                StateParamIndex += stbsp_snprintf(&StateParams[StateParamIndex], (StateParamsSize - StateParamIndex), "*");
            }
            else if(CurrentType->isReference)
            {
                StateParamIndex += stbsp_snprintf(&StateParams[StateParamIndex], (StateParamsSize - StateParamIndex), "&");
            }
            StateParamIndex += stbsp_snprintf(&StateParams[StateParamIndex], (StateParamsSize - StateParamIndex),
                                              "%.*s", 
                                              CurrentType->Name.Length, CurrentType->Name.String);
            if(CurrentType->isArray)
            {
                StateParamIndex += stbsp_snprintf(&StateParams[StateParamIndex], (StateParamsSize - StateParamIndex),
                                                  "[%d]", 
                                                  CurrentType->ArrayLength);
            }
            
            switch(CurrentType->CustomType)
            {
                case CT_Struct:
                {
                    WriteToOutput(Headers, Memory, "struct %.*s;\n",
                                  CurrentType->Type.Length, CurrentType->Type.String);
                }break;
                case CT_Enum:
                {
                    WriteToOutput(Headers, Memory, "enum class %.*s;\n",
                                  CurrentType->Type.Length, CurrentType->Type.String);
                }break;
                case CT_Union:
                {
                    WriteToOutput(Headers, Memory, "union %.*s;\n",
                                  CurrentType->Type.Length, CurrentType->Type.String);
                }break;
                case CT_Class:
                {
                    WriteToOutput(Headers, Memory, "class %.*s;\n",
                                  CurrentType->Type.Length, CurrentType->Type.String);
                }break;
                default:{}break;
            }
            
            CurrentType = CurrentType->Next;
        }
        
        Index += stbsp_snprintf(&Buffer[Index], (BufferSize - Index),
                                "/** @brief Used to create statemachine functions.\n"
                                " Usage:\n"
                                "~~~c\n"
                                "%.*s(FuntionForState)\n"
                                "{\n"
                                "    // Function Code\n"
                                "}\n"
                                "~~~\n"
                                "\n"
                                "This expands out to the function signature: \n"
                                "~~~c\n\n"
                                "void FunctionForState(%.*s *State%.*s)\n\n"
                                "~~~\n"
                                "\n"
                                "The `%.*s` struct must have the following basic definition. See @ref index for more details.\n"
                                "\n"
                                "Usage:\n"
                                "~~~c\n"
                                "struct %.*s \n"
                                "{\n"
                                "    %.*s CurrentState;\n"
                                "    b8 isNewState;\n"
                                "    %.*s_queue CommandQueue;\n"
                                "\n"
                                "    // Rest of variables in struct\n"
                                "};\n"
                                "~~~\n"
                                "\n"
                                "See @ref index for more details.\n"
                                "**/\n"
                                "#define %.*s(name) void name(%.*s *State",
                                PSTRING(Capitalize),
                                PSTRING(CurrentMachine->Type),
                                StateParamIndex, StateParams,
                                PSTRING(CurrentMachine->Type),
                                PSTRING(CurrentMachine->Type),
                                PSTRING(Lowercase),
                                PSTRING(CurrentMachine->Cmd),
                                PSTRING(Capitalize),
                                PSTRING(CurrentMachine->Type));
        
        
        Index += stbsp_snprintf(&Buffer[Index], (BufferSize - Index), "%.*s", StateParamIndex, StateParams);
        Index += stbsp_snprintf(&Buffer[Index], (BufferSize - Index), ")\n");
        CopyToOutput(Headers, Memory, Buffer);
        WriteToOutput(Headers, Memory, 
                      "/** @brief typedef to use in the state struct. **/\n"
                      "typedef %.*s(%.*s);\n\n",
                      PSTRING(Capitalize),
                      PSTRING(Lowercase));
        
        WriteToOutput(Headers, Memory, 
                      "/** @brief Go to the state specified.\n"
                      "\n"
                      "Use this function to go to the next state after this state has completed. If you call this multiple times in a function,\n"
                      "only the last target state will be used. It also sets up the next state. This function should be used for changing states.\n"
                      "\n"
                      "@param State The state struct corresponding to this state.\n"
                      "@param NewState The function name of the target state, generated by `%.*s()`.\n"
                      "@return True if the state change was successful.\n"
                      "**/\n"
                      "inline b8 GoToState(%.*s *State, %.*s *NewState);\n",
                      PSTRING(Capitalize),
                      PSTRING(CurrentMachine->Type),
                      PSTRING(Lowercase));
        
        WriteToOutput(Headers, Memory,
                      "/** @brief Gets a string representation of the state name.\n"
                      "\n"
                      "This is usually used for logging or displaying to the user.\n"
                      "\n"
                      "@param StateName The state to retrieve a string for, generated by `%.*s()`.\n"
                      "@return a null-terminated c string.\n"
                      "**/\n"
                      "char const *GetStateName(%.*s *StateName);\n",
                      PSTRING(Capitalize),
                      PSTRING(Lowercase));
        
        WriteToOutput(Headers, Memory,
                      "/** @brief Enqueue a command for the state.\n"
                      "\n"
                      "@param State The state struct corresponding to this state.\n"
                      "@param Cmd The Cmd to enqueue.\n"
                      "**/\n"
                      "b8 EnqueueCommand(%.*s *State, %.*s Cmd);\n",
                      PSTRING(CurrentMachine->Type),
                      PSTRING(CurrentMachine->Cmd));
        
        WriteToOutput(Headers, Memory,
                      "/** @brief Dequeue the the command.\n"
                      "\n"
                      "Corresponds to a first in, first out queue.\n"
                      "@param State The state struct corresponding to this state.\n"
                      "@return The first command in the queue..\n"
                      "**/\n"
                      "%.*s DequeueCommand(%.*s *State);\n",
                      PSTRING(CurrentMachine->Cmd),
                      PSTRING(CurrentMachine->Type));
        
        WriteToOutput(Headers, Memory, "\n");
        
        WriteToOutput(Definitions, Memory, 
                      "/**** StateMachine: %.*s **/\n"
                      "// Function Definitions\n",
                      Capitalize.Length, Capitalize.String);
        WriteToOutput(Definitions, Memory,
                      "inline b8\n"
                      "GoToState(%.*s *State, %.*s *NewState)\n",
                      CurrentMachine->Type.Length, CurrentMachine->Type.String,
                      Lowercase.Length, Lowercase.String);
        WriteToOutput(Definitions, Memory,
                      "{\n"
                      "    b8 isChanged = false;\n"
                      "    if(NewState && State)\n"
                      "    {\n"
                      "        State->CurrentState = NewState;\n"
                      "        State->isNewState = true;\n"
                      "    }\n"
                      "\n"
                      "    return isChanged;\n"
                      "}\n"
                      "\n");
        WriteToOutput(Definitions, Memory,
                      "char const*\n"
                      "GetStateName(%.*s *StateName)\n"
                      "{\n",
                      Lowercase.Length, Lowercase.String);
        
        
        term_definedfunction *CurrentFunction = DefinedFunctionListSentinal->Next;
        while(CurrentFunction != DefinedFunctionListSentinal)
        {
            if(st_AreStringsEqual(CurrentMachine->Function, CurrentFunction->Define, true))
            {
                WriteToOutput(Headers, Memory, 
                              "/** @brief Forward declaration for %.*s(). **/\n"
                              "%.*s(%.*s);\n", 
                              PSTRING(CurrentFunction->Name),
                              Capitalize.Length, Capitalize.String,
                              CurrentFunction->Name.Length, CurrentFunction->Name.String);
                
                WriteToOutput(Definitions, Memory,
                              "if(StateName == %.*s) {return \"%.*s\";}\n",
                              CurrentFunction->Name.Length, CurrentFunction->Name.String,
                              CurrentFunction->Name.Length, CurrentFunction->Name.String);
            }
            CurrentFunction = CurrentFunction->Next;
        }
        
        WriteToOutput(Definitions, Memory, 
                      "return \"Unknown\";\n"
                      "}\n\n");
        
        WriteToOutput(Definitions, Memory,
                      "b8\n"
                      "EnqueueCommand(%.*s *State, %.*s Cmd)\n"
                      "{\n"
                      "return Enqueue(&State->CommandQueue, Cmd);\n"
                      "}\n"
                      "\n"
                      "%.*s\n"
                      "DequeueCommand(%.*s *State)\n"
                      "{\n"
                      "return Dequeue(&State->CommandQueue);\n"
                      "}\n\n",
                      CurrentMachine->Type.Length, CurrentMachine->Type.String,
                      CurrentMachine->Cmd.Length, CurrentMachine->Cmd.String,
                      CurrentMachine->Cmd.Length, CurrentMachine->Cmd.String,
                      CurrentMachine->Type.Length, CurrentMachine->Type.String);
        
        WriteToOutput(Headers, Memory, "\n/*********/\n\n");
        WriteToOutput(Definitions, Memory, "\n/*********/\n\n");
        
        CurrentMachine = CurrentMachine->Next;
    }
    
    
}