#include "ab_common.h"
#include "jsmn.h"

#define AB_STRING_SRC
#define AB_MEMORY_SRC
#define GEN_JSMN_HEADER
#include "Generated_Test.h"

#include "stdio.h"

STATEMACHINE(test_statemachine, test_type, test_cmd, int Int, char const *String);

struct test_type
{
    test_statemachine *CurrentState;
    b8 isNewState;
    test_cmd_queue CommandQueue;
};

TAG(Strings)
enum class test_cmd
{
    NOP,
    Command1,
    Command2,
    Command3,
    Command4,
    Last
};

TAG(JSON, Strings, Label:Object);
enum class Colours
{
    TAG(Object:"Apple")
        Red,
    
    TAG(Object:"Brocoli")
        Green,
    
    TAG(Object:"Blueberry")
        Blue
};

TAG(JSON)
struct my_json_test
{
    u8 TestUnsigned;
    char TestString[50];
    Colours MyColour;
    b8 isValue;
};

#define GENERATED_TEST_SRC
#include "Generated_Test.h"

#define JSMN_SRC
#include "jsmn.h"


TEST_STATEMACHINE(Idle)
{
    if(State->isNewState)
    {
        State->isNewState = false;
        printf("%s ", GetStateName(State->CurrentState));
    }
    else
    {
        GoToState(State, Running);
        printf("i\n");
    }
}

TEST_STATEMACHINE(Running)
{
    if(State->isNewState)
    {
        State->isNewState = false;
        printf("%s ", GetStateName(State->CurrentState));
    }
    else
    {
        GoToState(State, Idle);
        printf("r\n");
    }
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
    for(u32 i = 0; i < Colours_Count; ++i)
    {
        Colours C = (Colours)i;
        abs_stringptr S = EnumToString(C);
        printf("  - %.*s\n", S.Length, S.String);
    }
    printf("\n");
    
    printf("Print Labels: \n");
    for(u32 i = 0; i < Colours_Count; ++i)
    {
        abs_stringptr S = EnumToLabel_Object((Colours)i);
        printf("  - %.*s\n", S.Length, S.String);
    }
    
    test_type TestMachine = {};
    GoToState(&TestMachine, Idle);
    InitializeQueue(&TestMachine.CommandQueue);
    for(u32 i = 0; i < 20; ++i)
    {
        (TestMachine.CurrentState)(&TestMachine, test_cmd::Command1, i, "Some String");
    }
    
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
    void *MemoryPtr = abm_AllocateOsMemory(0, Size);
    memory_arena Memory = abm_InitMemory(MemoryPtr, Size);
    
    u32 JsonSize = Kilobytes(5);
    char *Json = abm_PushArray(&Memory, JsonSize, char);
    my_json_test Test = {};
    Test.TestUnsigned = 10;
    snprintf(Test.TestString, 50, "Hello");
    Test.MyColour = Colours::Red;
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