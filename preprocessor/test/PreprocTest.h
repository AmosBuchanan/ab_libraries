/* date = August 30th 2020 7:13 pm */

#ifndef _PREPROC_TEST_H
#define _PREPROC_TEST_H

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

#endif //_PREPROC_TEST_H
