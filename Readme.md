# Amos Single File Libraries

A collection of useful libraries that I commonly use in projects, made into single file libraries. They are released under the MIT license. You may use everything free, though attribution is appreciated. They are offered without warranty or guarantees. Some of these libraries are not mine, but ones I find useful. Check individual libraries for licenses.

This also includes a preprocessor I generally use. It creates boilerplate functions based on tags.

* Author: Amos Buchanan
* email: amos@amosbuchanan.net
* License: MIT, https://opensource.org/licenses/MIT

# Other Useful Libraries
Some links to other libraries I use and find useful.

* Sean T Barrett Single File Libraries: https://github.com/nothings/stb
* JSMN JSON Parser: https://github.com/zserge/jsmn

# Libraries

The libraries are used as-is. They aren't really stand-alone as such, more they are the base functionality I tend to bring along into every project I work on.

* ab_common
* ab_memory
* ab_string

# Preprocessor

The preprocessor reads in the source files of a given directory and outputs a generated file with various useful functions. It's mostly based on a TAG() pre-define with the various add-ons desired.

Example:

```c

TAG(Strings);
enum class enColours
{
	Red,
	Green,
	Blue
};

```

The trailing semicolon is optional. 

Before compiling, run the preprocessor:

```
$ preprocessor src/ Generated
```

This reads all the files in the `src/` directory, and creates a single file `src/Generated.h`. This file may be checked into source control, so even if you lose the preprocessor the existing functions aren't lost.

In the above example, this will generate the functions related to 'Strings', which is a set of functions for converting enum values to and from strings. It will define functions such as `char *EnumToString(enColours);`.

The generated file is a single-file-library. Anywhere in the source code, you can include the file as a header:

```c
#include "Generated.h"
```

In the place you want to pull in the code (once per project), add the appropriate define:

```c
#define GENERATED_SRC
#include "Generated.h"
```
The specific `#define` to use is listed at the top of the generated file. 

Do not modify generated files, they get over-written. You can safely re-run the preprocessor in the same directory as an existing generated files. 

Several tags may be added by separating them with commas. Example:

```c
TAG(Strings, JSON, Label:Short);
enum class Length
{	
	TAG(Short:"m")
    Meter,

	TAG(Short:"in")
    Inches

	TAG(Short:"f")
    Feet
};
```

## Enum Class Tags

Tag always goes before the definition of `enum class`. Usage:
```c
TAG(Tag1, Tag2:Option, ...)
enum class enColours
{
	Red,
	Green,
	Blue
};
```

If any enum tag is used, the following are defined:
```c
enum class enColours;
const u32 enColours_Count;
```

### Strings

Usage:
```c
TAG(Strings)
enum class enColours
{
    Unknown,
	Red,
	Green,
	Blue
};
```

This creates the following:
```c

enColours StringToEnum<enColours>(const char *);
constexpr char const *EnumToCString(enColours);
enColours StringToEnum<enColours>(abs_stringptr);
constexpr abs_stringptr EnumToString(enColours);
```

If you attempt to convert an invalid string to enum, the first enum value is returned. I usually reserve the first enum value as 'Unknown' or 'NOP', which is how this convention came about.

```c
enColours Colour = StringToEnum<enColours>("Monster");
// Colour is enColours::Red
```

### JSON

Note: To use JSON, you have to specify the define before the inclusion of the Generated header. Those only needs to be done once per project, even if you're using multiple header files. This does add the dependency on the jsmn library, linked above. See below for general notes on using the JSON tag. For example:

```c
#define GEN_JSMN_HEADER
#include "Generated.h"
```

Usage:
```c
TAG(JSON)
enum class enColours
{
	Red,
	Green,
	Blue
};
```

This creates the following:
```c
u32
PushJson(char *Json, u32 MaxLength, char const *Tag, enColours Type, u32 JsonFlags);
```
This creates a json fragment of the form:
```json
"enColours": "Red"
```

Takes a JSON string `Json` of length `JsonLength` and outputs `ObjectOut`. `TokenArray` should be `NULL`.
```c
jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, Colours *ObjectOut, u32 Unused);
```

### Label

This allows you to have arbitrary string labels for your enum items. 

Usage:
```c
TAG(Label:Object);
enum class enColours
{
    TAG(Object:"Apple")
    Red,
    
    TAG(Object:"Brocoli")
    Green,
    
    TAG(Object:"Blueberry")
    Blue
};
```

This creates the function:
```c
const char *EnumToLabel_Object(enColours EnumToken);
```

Note that you can have multiple labels on the same enum.

```c
TAG(Label:Object, Label:Animal);
enum class enColours
{
    TAG(Object:"Apple", Animal:"Panda")
    Red,
    
    TAG(Object:"Brocoli", Animal:"Frog")
    Green,
    
    TAG(Object:"Blueberry", Animal:"Cookie Monster")
    Blue
};
```

Which creates:
```c
const char *EnumToLabel_Object(enColours EnumToken);
const char *EnumToLabel_Animal(enColours EnumToken);
```

If you don't have a label for a specific item, it just uses the item name itself:

```c
TAG(Label:Object);
enum class enColours
{
	Unknown, 

    TAG(Object:"Apple")
    Red,
    
    TAG(Object:"Brocoli")
    Green,
    
    TAG(Object:"Blueberry")
    Blue
};
```

This creates the output:
```c
const char* Label = EnumToLabel_Object(enColours:Unknown);
printf("%s\n", Label); // prints 'Unknown'
```

## Structs

### JSON
Creates functions for converting to/from JSON, as per enum. Understands the base types as from `ab_common.h`, and any structs/enums that are also tagged with `JSON`. See below for more info on JSON.

Usage:
```c
TAG(JSON)
struct my_json_test
{
    u8 TestUnsigned;
    char TestString[50];
    enColours MyColour;
    b8 isValue;
};
```

This generates the functions:
Create a JSON string and push it onto `Json`, which is a character buffer with the length `MaxLength`. Uses the tag `Tag`. Returns number of characters written to `Json`, which is used to chain several structs together. 
```c
u32 PushJson(char *Json, u32 MaxLength, char const *Tag, const my_json_test &Value, u32 JsonFlags);
```

Example:
```c
char Buffer[100];
my_json_test Value = {10, "SomeString", enColours::Red, true};
u32 PushJson(Buffer, 100, "MyStruct", Value, JSON_IsLastInList);
```

Generates:
```json
"MyStruct": {"TestUnsigned": 10, "TestString": "SomeString", "MyColour": "Red", "isValue": true}
```

This struct is used to show what items exist in a JSON string for a given struct, for use in `JsonToObject`.
```c
struct my_json_test_existlist
{
   b8 TestUnsigned;
   b8 TestString;
   b8 MyColour;
   b8 isValue;
};
```

Takes a JSON string `Json` of length `JsonLength` and outputs the base object `ObjectOut` and a list of whether the items existed in the original JSON as `ItemsExistOut`. `TokenArray` should be `NULL` when calling; this is used for the recursive functionality.
```c
jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, my_json_test *ObjectOut, my_json_test_existlist *ItemsExistOut);
```

Intake a JSON string `Json` of length `JsonLength` of an array of objects and output a pointers to the arrays `ObjectArray` and `ObjectArrayExist`. Returns the number of items in the array.
```c
u32
JsonArrayToObjectArray(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, my_json_test **ObjectArray, my_json_test_existlist **ObjectArrayExist);
```

## State Machine
I have a standard format for state machines I use, so I created a tag specifically for creating state machines.

Due to a limitation of the program, the statemachine tag *must* be in the same file as all the state machine functions. I haven't found this to be particularly limiting,

Usage:
```c
STATEMACHINE(base_name, struct_name, cmd_enum_name /*, <other types for functions*/);
```

This creates the following:
```c
struct cmd_enum_name_queue
{
    cmd_enum_name Items[10];
    s32 Front;
    s32 Rear;
};

inline void InitializeQueue(cmd_enum_name_queue *Queue);
inline b8 isQueueEmpty(cmd_enum_name_queue *Queue);
inline b8 isQueueFull(cmd_enum_name_queue *Queue);
b8 EnqueueCommand(cmd_enum_name_queue *Queue, cmd_enum_name Cmd);
cmd_enum_name DequeueCommand(cmd_enum_name_queue *Queue);

#define BASE_NAME(name) void name(struct_name *State, cmd_enum_name Cmd /*<, Other types for functions>*/)
typedef BASE_NAME(test_statemachine);

inline b8 GoToState(struct_name *State, base_name  *NewState);
char const *GetStateName(base_name *StateName);
b8 EnqueueCommand(struct_name *State, cmd_enum_name Cmd);
cmd_enum_name DequeueCommand(struct_name *State);

//<Declaration of State Machine Functions>
```

You can then create state machine functions using `BASE_NAME` (The declaration is always capitolized, the function typedef is always lowercase.):
```c
BASE_NAME(IdleState)
{}

BASE_NAME(RunningState)
{}
```

NOTE: The command queue must be initialized before it can be used.
```c
InitializeQueue(State->CommandQueue);
```

Example:
```c
// statemachine.h
struct test_type
{
    // These three variables *must* be defined.
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

// statemachine.c
#include "statemachine.h"

STATEMACHINE(test_statemachine, test_type, test_cmd, int SomeInt, char const *AString);

TEST_STATEMACHINE(StartupState)
{
    InitializeQueue(State->CommandQueue);
    // Code Here
	GoToState(State, IdleState);
}

TEST_STATEMACHINE(IdleState)
{
    // Code Here
	GoToState(State, RunningState);
}


TEST_STATEMACHINE(RunningState)
{
	test_cmd = DequeueCommand(State);
	// Code Here
    printf("Input Int: %d\n", SomeInt); 
    printf("Input String: %s\n", AString);
    QueueCommand(State, test_cmd::Command1);

    char *StateName = GetStateName(State->CurrentState);
    printf("Current State: %s\n", StateName); // Prints "Current State: RunningState"

	GoToState(State, IdleState);
}
```

## JSON

Structs and enums can both be tagged with `JSON`. This creates som functions for creating and reading JSON objects into C structs or enums. They all follow a similar format, and are recursive. So if you have a struct tagged JSON, all the enums and structs it refers to must also be tagged JSON. 

The preprocessor uses the functions in `ab_json.h` as general functions to use. This means you must include the define 
```c
#define AB_JSON_SRC
```
somewhere in your code so the source can be picked up. It should only be defined once, and could probably be defined in the compiler (though I haven't tested this). 

You will also have to include the source to the JSMN parser somewhere. If you are using the version I've included here, you only need to define the following:

```c
#define JSMN_SRC
#include "jsmn.h"
```

I've slightly modified the source so this works everywhere. If you are using it directly from git, you'll have read up on how to properly include the source. 

# License

Copyright 2020 Amos Buchanan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
