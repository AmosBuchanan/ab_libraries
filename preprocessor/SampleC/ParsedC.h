/**

TAG(Invalid, Invalid, Invalid)

**/

STATEMACHINE(sm_some_statemachine, state_type, state_cmd, STRUCT my_type *Type, ENUM my_enum Enum, int Int, char const *String);
STATEMACHINE(sm_another_statemachine, state2_type, state2_cmd, ENUM state2_enum SomeValue, int Int);

SM_SOME_STATEMACHINE(Idle)
{
}

SM_SOME_STATEMACHINE(Running)
{
}


SM_ANOTHER_STATEMACHINE(Idle2)
{}

SM_ANOTHER_STATEMACHINE(Reset2)
{}



TAG(Strings, JSON, EnumTag1, EnumTag2, EnumTag3:ID1, ENumTag4:"string1", Label:Test1, Label:Test2);
enum class EnumClass1
{
    EC1_Value1,
    
    TAG(EC12_tag, EC12_tagstring:"Some String"),
    EC1_Value2,
    
    TAG(Test2:"Test 2 String"),
    EC1_Value3,
};


enum TestEnum1
{
    TE1_Value1,
    TE1_Value2        
};

TAG(EnumTag1, EnumTag2, EnumTag3:ID2, ENumTag4:"string 2");
enum class EnumClass2
{
    EC2_Value1,
    
    TAG(EC22_tag, EC22_tagstring:"Some String 2"),
    EC2_Value2,
    
    EC2_Value3,
};

TAG(JSON)
struct Struct1
{
    int S11;
    char S12;
    long S13;
    
    EnumClass1 S14;
    EnumClass2 S15;
    
    SomeStruct S16;
    SomeStruct *S17;
    
    char const *S18;
    const char *S19;
    
    char S1A[10];
    char *S1B[10];
    char const*S1C[10];
};

TAG(StructTag1, StructTag2, StructTag3:ID2, StructTag4:"string 2");
struct Struct2
{
    int S21;
    char S22;
    long S23;
    
    EnumClass1 S24;
    EnumClass2 S25;
    
    SomeStruct S26;
    SomeStruct *S27;
    
    TAG(StructItem1, StructItem2:Id, StructItem3:"Some String");
    char const *S28;
    const char *S29;
    
    char S2A[10];
    char *S2B[200];
    char const*S2C[3000];
};


const char * Test[] = 
{};

TAG(FuncTag1, FuncTag2, FuncTag3:ID2, FuncTag4:"string 2");
void 
Function1(int Func1, Struct1* Func2, Struct2 Func3, EnumClass1 Func4, EnumClass2 &Func5, char const *Func6, char Func7[400])
{
    Some STatement;
    mo9re statement;
    4 + 5 = 10;
    if(sh)
    {
    }
    while( shau == sahu)
    {
        if(asahu)
        {
        }
    }
}