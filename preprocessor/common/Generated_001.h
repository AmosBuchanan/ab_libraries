/** 
    This file was autogenerated. Do not edit directly, your changes will get over-written. 
    This is a single file include. To include the source, add 

#define AB_GENERATED_SRC_001

    before including this this file.

    If you are using JSON parsing, add 

#define JSMN_HEADER

    Ensure the jsmn.h header is in your include directory.
**/

#ifndef TAG
#define TAG(...)
#endif

#ifndef STATEMACHINE
#define STATEMACHINE(...)
#endif
#include "ab_memory.h"
#include "ab_file.h"
#include "ab_string.h"

#ifdef JSMN_HEADER
#include "third-party/jsmn.h"
#endif // JSMN_HEADER



#if !defined(_GENERATED_HEADER_)
#define _GENERATED_HEADER_
#ifdef JSMN_HEADER
enum json_flags
{
    JSON_Null = 0,
    JSON_IsLastInList = 1 << 0,
    JSON_DontUseTag = 1 << 1,
    JSON_BaseObject = 1 << 2,
};
#endif

template<typename T>
auto StringToEnum(const char *String) -> T;

template<typename T>
auto StringToEnum(abs_stringptr String) -> T;

u32 StartGroup(char *, u32 MaxLength);
u32 EndGroup(char *, u32 MaxLength, b8 isLast);
#ifdef JSMN_HEADER
s32 ParseJson(memory_arena *VolatileMemory, char const *Json,  size_t JsonLength, jsmntok_t **TokenArray);
#endif

#endif

#if !defined(_AB_GENERATED_HEADER_001_)
#define _AB_GENERATED_HEADER_001_



/****** Enum direction Header *****/
enum class direction;
const u32 direction_Count = 3;
template<>
auto StringToEnum<direction>(const char *String) -> direction;
template<>
auto StringToEnum<direction>(abs_stringptr String) -> direction;
abs_stringptr EnumToString(direction EnumToken);
char const* EnumToCString(direction EnumToken);
const abs_stringptr direction_Strings[direction_Count] = 
{
   {"Unknown", 7},
   {"Read", 4},
   {"Write", 5},
};


/****** Enum TriState Header *****/
enum class TriState;
const u32 TriState_Count = 3;
template<>
auto StringToEnum<TriState>(const char *String) -> TriState;
template<>
auto StringToEnum<TriState>(abs_stringptr String) -> TriState;
abs_stringptr EnumToString(TriState EnumToken);
char const* EnumToCString(TriState EnumToken);
const abs_stringptr TriState_Strings[TriState_Count] = 
{
   {"Mu", 2},
   {"False", 5},
   {"True", 4},
};


/****** Enum ain_cmd Header *****/
enum class ain_cmd;
const u32 ain_cmd_Count = 5;
template<>
auto StringToEnum<ain_cmd>(const char *String) -> ain_cmd;
template<>
auto StringToEnum<ain_cmd>(abs_stringptr String) -> ain_cmd;
abs_stringptr EnumToString(ain_cmd EnumToken);
char const* EnumToCString(ain_cmd EnumToken);
const abs_stringptr ain_cmd_Strings[ain_cmd_Count] = 
{
   {"NOP", 3},
   {"Reset", 5},
   {"StartRead", 9},
   {"StopRead", 8},
   {"Write", 5},
};


/****  StateMachine: AIN_SM ****/
struct ain_state;
enum class ain_cmd;
/***** Queue: ain_cmd ****/
// Creating a circular queue of 10 elements.
struct ain_cmd_queue
{
    ain_cmd Items[10];
    s32 Front;
    s32 Rear;
};

inline void InitializeQueue(ain_cmd_queue *Queue);
inline b8 isQueueEmpty(ain_cmd_queue *Queue);
inline b8 isQueueFull(ain_cmd_queue *Queue);
b8 EnqueueCommand(ain_cmd_queue *Queue, ain_cmd Cmd);
ain_cmd DequeueCommand(ain_cmd_queue *Queue);
/***********/

#define AIN_SM(name) void name(ain_state *State, ain_cmd Cmd)
typedef AIN_SM(ain_sm);

inline b8 GoToState(ain_state *State, ain_sm *NewState);
char const *GetStateName(ain_sm *StateName);
b8 EnqueueCommand(ain_state *State, ain_cmd Cmd);
ain_cmd DequeueCommand(ain_state *State);


/*********/

/****** Enum dio_cmd Header *****/
enum class dio_cmd;
const u32 dio_cmd_Count = 5;
template<>
auto StringToEnum<dio_cmd>(const char *String) -> dio_cmd;
template<>
auto StringToEnum<dio_cmd>(abs_stringptr String) -> dio_cmd;
abs_stringptr EnumToString(dio_cmd EnumToken);
char const* EnumToCString(dio_cmd EnumToken);
const abs_stringptr dio_cmd_Strings[dio_cmd_Count] = 
{
   {"NOP", 3},
   {"Reset", 5},
   {"StartRead", 9},
   {"StopRead", 8},
   {"Write", 5},
};


/****  StateMachine: DIO_SM ****/
struct dio_state;
enum class dio_cmd;
/***** Queue: dio_cmd ****/
// Creating a circular queue of 10 elements.
struct dio_cmd_queue
{
    dio_cmd Items[10];
    s32 Front;
    s32 Rear;
};

inline void InitializeQueue(dio_cmd_queue *Queue);
inline b8 isQueueEmpty(dio_cmd_queue *Queue);
inline b8 isQueueFull(dio_cmd_queue *Queue);
b8 EnqueueCommand(dio_cmd_queue *Queue, dio_cmd Cmd);
dio_cmd DequeueCommand(dio_cmd_queue *Queue);
/***********/

#define DIO_SM(name) void name(dio_state *State, dio_cmd Cmd)
typedef DIO_SM(dio_sm);

inline b8 GoToState(dio_state *State, dio_sm *NewState);
char const *GetStateName(dio_sm *StateName);
b8 EnqueueCommand(dio_state *State, dio_cmd Cmd);
dio_cmd DequeueCommand(dio_state *State);

DIO_SM(Dio_StartupState);
DIO_SM(Dio_ShutdownState);
DIO_SM(Dio_ResetState);
DIO_SM(Dio_IdleState);
DIO_SM(Dio_ContinuousReadState);
DIO_SM(Dio_WriteState);
DIO_SM(Dio_ErrorState);

/*********/

#endif // _AB_GENERATED_HEADER_001_


#if defined(AB_GENERATED_SRC_001)
#undef AB_GENERATED_SRC_001



/****** Enum direction Functions *****/
template<>
auto StringToEnum<direction>(const char *String) -> direction
{
    u32 StringIndex = abs_FindInList(String, direction_Count, direction_Strings, true);
    direction Result = direction::Unknown;
    if(StringIndex < direction_Count)
    {
        Result = static_cast<direction>(StringIndex);
    }
    return Result;
}
template<>
auto StringToEnum<direction>(abs_stringptr String) -> direction
{
    u32 StringIndex = abs_FindInList(String, direction_Count, direction_Strings, true);
    direction Result = direction::Unknown;
    if(StringIndex < direction_Count)
    {
        Result = static_cast<direction>(StringIndex);
    }
    return Result;
}
const char *
EnumToCString(direction EnumToken)
{
    return direction_Strings[int(EnumToken)].String;
}

abs_stringptr
EnumToString(direction EnumToken)
{
    return direction_Strings[int(EnumToken)];
}


/****** Enum TriState Functions *****/
template<>
auto StringToEnum<TriState>(const char *String) -> TriState
{
    u32 StringIndex = abs_FindInList(String, TriState_Count, TriState_Strings, true);
    TriState Result = TriState::Mu;
    if(StringIndex < TriState_Count)
    {
        Result = static_cast<TriState>(StringIndex);
    }
    return Result;
}
template<>
auto StringToEnum<TriState>(abs_stringptr String) -> TriState
{
    u32 StringIndex = abs_FindInList(String, TriState_Count, TriState_Strings, true);
    TriState Result = TriState::Mu;
    if(StringIndex < TriState_Count)
    {
        Result = static_cast<TriState>(StringIndex);
    }
    return Result;
}
const char *
EnumToCString(TriState EnumToken)
{
    return TriState_Strings[int(EnumToken)].String;
}

abs_stringptr
EnumToString(TriState EnumToken)
{
    return TriState_Strings[int(EnumToken)];
}


/****** Enum ain_cmd Functions *****/
template<>
auto StringToEnum<ain_cmd>(const char *String) -> ain_cmd
{
    u32 StringIndex = abs_FindInList(String, ain_cmd_Count, ain_cmd_Strings, true);
    ain_cmd Result = ain_cmd::NOP;
    if(StringIndex < ain_cmd_Count)
    {
        Result = static_cast<ain_cmd>(StringIndex);
    }
    return Result;
}
template<>
auto StringToEnum<ain_cmd>(abs_stringptr String) -> ain_cmd
{
    u32 StringIndex = abs_FindInList(String, ain_cmd_Count, ain_cmd_Strings, true);
    ain_cmd Result = ain_cmd::NOP;
    if(StringIndex < ain_cmd_Count)
    {
        Result = static_cast<ain_cmd>(StringIndex);
    }
    return Result;
}
const char *
EnumToCString(ain_cmd EnumToken)
{
    return ain_cmd_Strings[int(EnumToken)].String;
}

abs_stringptr
EnumToString(ain_cmd EnumToken)
{
    return ain_cmd_Strings[int(EnumToken)];
}


/****** Queue: ain_cmd ****/
inline void
InitializeQueue(ain_cmd_queue *Queue)
{
  Queue->Front = Queue->Rear = -1;
}

inline b8
isQueueEmpty(ain_cmd_queue *Queue)
{
  b8 Result = (Queue->Front == -1);
  return Result;
}

inline b8 
isQueueFull(ain_cmd_queue *Queue)
{
  b8 Result = (Queue->Front == Queue->Rear + 1) ||
  (Queue->Front == 0 && Queue->Rear == (10-1));

  return Result;
}

b8
Enqueue(ain_cmd_queue *Queue, ain_cmd Cmd)
{
  b8 Result = false;
  if(!isQueueFull(Queue))
  {
    if(Queue->Front == -1)
    {
      Queue->Front = 0;
    }
    Queue->Rear = (Queue->Rear + 1) % 10;
    Queue->Items[Queue->Rear] = Cmd;

    Result = true;
  }
  return Result;    
}

ain_cmd
Dequeue(ain_cmd_queue *Queue)
{
ain_cmd Result = (ain_cmd)0;
if(!isQueueEmpty(Queue))
{
Result = Queue->Items[Queue->Front];
if(Queue->Front == Queue->Rear)
{
Queue->Front = Queue->Rear = -1;
}
else 
{
Queue->Front = (Queue->Front + 1) % 10;
}
}

return Result;
}

/***********/

/**** StateMachine: AIN_SM **/
// Function Definitions
inline b8
GoToState(ain_state *State, ain_sm *NewState)
{
    b8 isChanged = false;
    if(NewState && State)
    {
        State->CurrentState = NewState;
        State->isNewState = true;
    }

    return isChanged;
}

char const*
GetStateName(ain_sm *StateName)
{
return "Unknown";
}

b8
EnqueueCommand(ain_state *State, ain_cmd Cmd)
{
return Enqueue(&State->CommandQueue, Cmd);
}

ain_cmd
DequeueCommand(ain_state *State)
{
return Dequeue(&State->CommandQueue);
}


/*********/

/****** Enum dio_cmd Functions *****/
template<>
auto StringToEnum<dio_cmd>(const char *String) -> dio_cmd
{
    u32 StringIndex = abs_FindInList(String, dio_cmd_Count, dio_cmd_Strings, true);
    dio_cmd Result = dio_cmd::NOP;
    if(StringIndex < dio_cmd_Count)
    {
        Result = static_cast<dio_cmd>(StringIndex);
    }
    return Result;
}
template<>
auto StringToEnum<dio_cmd>(abs_stringptr String) -> dio_cmd
{
    u32 StringIndex = abs_FindInList(String, dio_cmd_Count, dio_cmd_Strings, true);
    dio_cmd Result = dio_cmd::NOP;
    if(StringIndex < dio_cmd_Count)
    {
        Result = static_cast<dio_cmd>(StringIndex);
    }
    return Result;
}
const char *
EnumToCString(dio_cmd EnumToken)
{
    return dio_cmd_Strings[int(EnumToken)].String;
}

abs_stringptr
EnumToString(dio_cmd EnumToken)
{
    return dio_cmd_Strings[int(EnumToken)];
}


/****** Queue: dio_cmd ****/
inline void
InitializeQueue(dio_cmd_queue *Queue)
{
  Queue->Front = Queue->Rear = -1;
}

inline b8
isQueueEmpty(dio_cmd_queue *Queue)
{
  b8 Result = (Queue->Front == -1);
  return Result;
}

inline b8 
isQueueFull(dio_cmd_queue *Queue)
{
  b8 Result = (Queue->Front == Queue->Rear + 1) ||
  (Queue->Front == 0 && Queue->Rear == (10-1));

  return Result;
}

b8
Enqueue(dio_cmd_queue *Queue, dio_cmd Cmd)
{
  b8 Result = false;
  if(!isQueueFull(Queue))
  {
    if(Queue->Front == -1)
    {
      Queue->Front = 0;
    }
    Queue->Rear = (Queue->Rear + 1) % 10;
    Queue->Items[Queue->Rear] = Cmd;

    Result = true;
  }
  return Result;    
}

dio_cmd
Dequeue(dio_cmd_queue *Queue)
{
dio_cmd Result = (dio_cmd)0;
if(!isQueueEmpty(Queue))
{
Result = Queue->Items[Queue->Front];
if(Queue->Front == Queue->Rear)
{
Queue->Front = Queue->Rear = -1;
}
else 
{
Queue->Front = (Queue->Front + 1) % 10;
}
}

return Result;
}

/***********/

/**** StateMachine: DIO_SM **/
// Function Definitions
inline b8
GoToState(dio_state *State, dio_sm *NewState)
{
    b8 isChanged = false;
    if(NewState && State)
    {
        State->CurrentState = NewState;
        State->isNewState = true;
    }

    return isChanged;
}

char const*
GetStateName(dio_sm *StateName)
{
if(StateName == Dio_StartupState) {return "Dio_StartupState";}
if(StateName == Dio_ShutdownState) {return "Dio_ShutdownState";}
if(StateName == Dio_ResetState) {return "Dio_ResetState";}
if(StateName == Dio_IdleState) {return "Dio_IdleState";}
if(StateName == Dio_ContinuousReadState) {return "Dio_ContinuousReadState";}
if(StateName == Dio_WriteState) {return "Dio_WriteState";}
if(StateName == Dio_ErrorState) {return "Dio_ErrorState";}
return "Unknown";
}

b8
EnqueueCommand(dio_state *State, dio_cmd Cmd)
{
return Enqueue(&State->CommandQueue, Cmd);
}

dio_cmd
DequeueCommand(dio_state *State)
{
return Dequeue(&State->CommandQueue);
}


/*********/

#endif // AB_GENERATED_SRC_001

