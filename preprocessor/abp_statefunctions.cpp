#include "abp_queue.h"

void
ProcessStateFunctions(term_statemachine *MachineListSentinal, term_definedfunction *DefinedFunctionListSentinal,
                      memory_arena *Memory, output_data *Headers, output_data *Definitions)
{
    
    term_statemachine *CurrentMachine = MachineListSentinal->Next;
    while(CurrentMachine != MachineListSentinal)
    {
        abs_stringptr Capitalize = abs_Capitalize(CurrentMachine->Function, Memory);
        abs_stringptr Lowercase = abs_Lowercase(CurrentMachine->Function, Memory);
        const u32 BufferSize = 300;
        char Buffer[BufferSize] = {};
        int Index = 0;
        
        WriteToOutput(Headers, Memory, 
                      "/****  StateMachine: %.*s ****/\n",
                      Capitalize.Length, Capitalize.String);
        
        WriteToOutput(Headers, Memory,
                      "struct %.*s;\n"
                      "enum class %.*s;\n",
                      CurrentMachine->Type.Length, CurrentMachine->Type.String,
                      CurrentMachine->Cmd.Length, CurrentMachine->Cmd.String);
        
        WriteQueueFunctions(CurrentMachine->Cmd, 10, Memory, Headers, Definitions);
        
        Index += stbsp_snprintf(&Buffer[Index], (BufferSize - Index),
                                "#define %.*s(name) void name(%.*s *State, %.*s Cmd",
                                Capitalize.Length, Capitalize.String,
                                CurrentMachine->Type.Length, CurrentMachine->Type.String,
                                CurrentMachine->Cmd.Length, CurrentMachine->Cmd.String);
        
        term_typeexpr *CurrentType = CurrentMachine->TypeListSentinal.Next;
        while(CurrentType != &CurrentMachine->TypeListSentinal)
        {
            Index += stbsp_snprintf(&Buffer[Index], (BufferSize - Index),
                                    ", %.*s ", 
                                    CurrentType->Type.Length, CurrentType->Type.String);
            if(CurrentType->isConst) 
            {
                Index += stbsp_snprintf(&Buffer[Index], (BufferSize - Index), "const ");
            }
            if(CurrentType->isPtr)
            {
                Index += stbsp_snprintf(&Buffer[Index], (BufferSize - Index), "*");
            }
            else if(CurrentType->isReference)
            {
                Index += stbsp_snprintf(&Buffer[Index], (BufferSize - Index), "&");
            }
            Index += stbsp_snprintf(&Buffer[Index], (BufferSize - Index),
                                    "%.*s", 
                                    CurrentType->Name.Length, CurrentType->Name.String);
            if(CurrentType->isArray)
            {
                Index += stbsp_snprintf(&Buffer[Index], (BufferSize - Index),
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
        
        Index += stbsp_snprintf(&Buffer[Index], (BufferSize - Index), ")\n");
        CopyToOutput(Headers, Memory, Buffer);
        WriteToOutput(Headers, Memory, "typedef %.*s(%.*s);\n\n",
                      Capitalize.Length, Capitalize.String,
                      Lowercase.Length, Lowercase.String);
        WriteToOutput(Headers, Memory, 
                      "inline b8 GoToState(%.*s *State, %.*s *NewState);\n"
                      "char const *GetStateName(%.*s *StateName);\n"
                      "b8 EnqueueCommand(%.*s *State, %.*s Cmd);\n"
                      "%.*s DequeueCommand(%.*s *State);\n",
                      CurrentMachine->Type.Length, CurrentMachine->Type.String,
                      Lowercase.Length, Lowercase.String,
                      Lowercase.Length, Lowercase.String,
                      CurrentMachine->Type.Length, CurrentMachine->Type.String,
                      CurrentMachine->Cmd.Length, CurrentMachine->Cmd.String,
                      CurrentMachine->Cmd.Length, CurrentMachine->Cmd.String,
                      CurrentMachine->Type.Length, CurrentMachine->Type.String);
        
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
            if(abs_AreStringsEqual(CurrentMachine->Function, CurrentFunction->Define, true))
            {
                WriteToOutput(Headers, Memory, 
                              "%.*s(%.*s);\n", 
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