#include "ab_common.h"
#include "stdio.h"

#define STRING_SRC
#define MEMORY_SRC
#define JSON_SRC
#define GEN_JSMN_HEADER
#define GENERATEDTEST_PREPROCESSOR_SRC
#include "Generatedtest_preprocessor.h"

enum class some_enum {first};
struct some_struct {};
union some_union {};
class some_class {};

QUEUE(test_cmd);
STATEMACHINE(test_statemachine, test_type, test_cmd, int Int, char const *String, ENUM some_enum EnumValue, STRUCT some_struct StructValue, UNION some_union UnionValue, CLASS some_class ClassValue);

#include "test_preprocessor.h"

#define JSMN_SRC
#include "jsmn.h"

#define STB_SPRINTF_IMPLEMENTATION
#include "stb_sprintf.h"
#undef STB_SPRINTF_IMPLEMENTATION


TEST_STATEMACHINE(Idle)
{
    if(State->isNewState)
    {
        State->isNewState = false;
        printf("\n%s ", GetStateName(State->CurrentState));
    }
    else
    {
        GoToState(State, Running);
        printf("i ");
    }
    test_cmd Cmd = DequeueCommand(State);
    printf("%s ", EnumToCString(Cmd));
}

TEST_STATEMACHINE(Running)
{
    if(State->isNewState)
    {
        State->isNewState = false;
        printf("\n%s ", GetStateName(State->CurrentState));
    }
    else
    {
        GoToState(State, Idle);
        printf("r ");
    }
    test_cmd Cmd = DequeueCommand(State);
    printf("%s ", EnumToCString(Cmd));
}

void
PrintQueue(test_cmd_queue *Queue)
{
    printf("Current Queue: ");
    if(isQueueEmpty(Queue))
    {
        printf("Empty");
    }
    else 
    {
        for (u32 i = 0; i < ArrayCount(Queue->Items); ++i)
        {
            if(Queue->Front == (s32)i)
            {
                printf("<");
            }
            printf("%s", EnumToCString(Queue->Items[i]));
            if(Queue->Rear == (s32)i)
            {
                printf(">");
            }
            printf(" ");
            
        }
    }
    
    printf("\n");
}

int
main(int argc, char* argv[])
{
    
    printf("Print Strings:\n");
    for(u32 i = 0; i < enColours_Count; ++i)
    {
        enColours C = (enColours)i;
        st_ptr S = EnumToString(C);
        printf("  - %.*s\n", S.Length, S.String);
    }
    printf("\n");
    
    printf("----\nPrint Labels: \n");
    for(u32 i = 0; i < enColours_Count; ++i)
    {
        st_ptr S = EnumToLabel_Object((enColours)i);
        printf("  - %.*s\n", S.Length, S.String);
    }
    
    test_type TestMachine = {};
    GoToState(&TestMachine, Idle);
    InitializeQueue(&TestMachine.CommandQueue);
    
    auto Deq = [&TestMachine]() -> void
    {
        printf("Dequeued: %s\n", EnumToCString(DequeueCommand(&TestMachine)));
    };
    
    auto Enq = [&TestMachine](test_cmd Cmd) -> void
    {
        if(EnqueueCommand(&TestMachine, Cmd))
            printf("Enqueued: %s\n", EnumToCString(Cmd));
        else 
            printf("Couldn't queue: %s.\n", EnumToCString(Cmd));
    };
    
    printf("\n----\nState Machine:\n");
    Enq(test_cmd::Command1);
    Enq(test_cmd::Command2);
    Enq(test_cmd::Command3);
    Enq(test_cmd::Command4);
    for(u32 i = 0; i < 20; ++i)
    {
        (TestMachine.CurrentState)(&TestMachine, i, "Some String", some_enum::first, {}, {}, {});
    }
    printf("\n----\nQueueing\n");
    
    Enq(test_cmd::Command1);
    Deq();
    Enq(test_cmd::Command1);
    Enq(test_cmd::Command2);
    PrintQueue(&TestMachine.CommandQueue);
    DequeueCommand(&TestMachine);
    PrintQueue(&TestMachine.CommandQueue);
    Enq(test_cmd::Command2);
    Enq(test_cmd::Command3);
    Enq(test_cmd::Command4);
    Enq(test_cmd::Command2);
    Enq(test_cmd::Command3);
    Enq(test_cmd::Command4);
    Enq(test_cmd::Command2);
    Enq(test_cmd::Command3);
    Enq(test_cmd::Last);
    Enq(test_cmd::Last);
    PrintQueue(&TestMachine.CommandQueue);
    Deq();
    Enq(test_cmd::Command4);
    PrintQueue(&TestMachine.CommandQueue);
    Deq();
    Deq();
    Deq();
    Deq();
    Deq();
    Deq();
    Deq();
    Deq();
    PrintQueue(&TestMachine.CommandQueue);
    Deq();
    Deq();
    Deq();
    Deq();
    Deq();
    PrintQueue(&TestMachine.CommandQueue);
    
    size_t Size = Gigabytes(1);
    void *MemoryPtr = mem_AllocateOsMemory(0, Size);
    memory_arena Memory = mem_InitMemory(MemoryPtr, Size);
    
    u32 JsonSize = Kilobytes(5);
    char *Json = mem_PushArray(&Memory, JsonSize, char);
    my_json_test Test = {};
    Test.TestUnsigned = 10;
    snprintf(Test.TestString, 50, "Hello");
    Test.MyColour = enColours::Red;
    Test.isValue = true;
    
    u32 JsonLength = PushJson(Json, JsonSize, 0, Test, JSON_DontUseTag | JSON_IsLastInList);
    
    printf("\n--- JSON: %d \n%s\n---\n", JsonLength, Json);
    
    my_json_test Test2 = {};
    my_json_test_existlist Test2Exists;
    JsonToObject(&Memory, Json, JsonLength, 0, &Test2, &Test2Exists);
    printf("Test: \n"
           " - %u\n"
           " - %s\n"
           " - %s\n"
           " - %s\n\n",
           Test2.TestUnsigned, Test2.TestString, EnumToCString(Test2.MyColour), 
           (Test2.isValue ? "true" : "false"));
    
    printf("\n\nDone\n");
    
    return 0;
}