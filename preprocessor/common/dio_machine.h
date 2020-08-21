/* date = July 27th 2020 1:15 pm */

#ifndef DIO_MACHINE_H
#define DIO_MACHINE_H

#include <string.h>
#include <errno.h>

#include "log.h"
#include "adsio.h"

#include "Generated_001.h"
#include "ab_time.h"
#include "ab_common.h"
#include "ab_string.h"

STATEMACHINE(dio_sm, dio_state, dio_cmd);

TAG(Strings);
enum class dio_cmd
{
    NOP,
    Reset,
    StartRead,
    StopRead,
    Write
};

struct dio_port
{
    s32 Pin;
    abs_stringptr Label;
    direction Direction;
};

struct dio_state
{
    dio_sm *CurrentState;
    dio_cmd_queue CommandQueue;
    b8 isNewState;
    TriState ReadValue;
    TriState toWriteValue;
    s32 FileId; // Note(amos): Unix file descriptor from open().
    
    abt_time LastReadTime;
    s32 FileError;
    
    dio_port Port;
};

#endif //DIO_MACHINE_H

#ifdef DIO_MACHINE_SRC

b8
Dio_Write(dio_state *State, TriState Value)
{
    b8 isSuccess = false;
    s32 GpioPortFd = State->FileId;
    if(GpioPortFd != -1 && Value != TriState::Mu)
    {
        char Output = (Value == TriState::True) ? '1' : '0';
        
        lseek(GpioPortFd, 0, SEEK_SET);
        s32 WriteResponse = write(GpioPortFd, &Output, 1);
        if(WriteResponse == 1)
        {
            isSuccess = true;
            State->ReadValue = Value;
            State->LastReadTime = abt_GetCurrent();
        }
        else
        {
            // TODO(amos): Some error handling here.
            log_error("Unable to write to GPIO Pin %d", State->Port.Pin);
            State->ReadValue = TriState::Mu;
        }
    }
    
    return isSuccess;
} // WriteGpio

b8
Dio_Write(dio_state *State, b8 Value)
{
    return Dio_Write(State, Value ? TriState::True : TriState::False);
}

b8
Dio_Read(dio_state *State, TriState *ValueOut)
{
    b8 isSuccess = false;
    s32 GpioPortFd = State->FileId;
    if(GpioPortFd != -1)
    {
        lseek(GpioPortFd, 0, SEEK_SET);
        char Value[10];
        s32 ReadResponse = read(GpioPortFd, Value, ArrayCount(Value));
        if(ReadResponse >= 1)
        {
            isSuccess = true;
            s32 ValueInt = atoi(Value);
            if(ValueInt == 0)
            {
                *ValueOut = TriState::False;
            }
            else if(ValueInt == 1)
            {
                *ValueOut = TriState::True;
            }
            else 
            {
                *ValueOut = TriState:: Mu;
            }
            
            State->ReadValue = *ValueOut;
            State->LastReadTime = abt_GetCurrent();
            log_trace("GPIO %.*s read success: %s", PSTRING(State->Port.Label), EnumToCString(State->ReadValue));
        }
        else
        {
            // TODO(amos): Some error handling here.
            log_error("Unable to read from GPIO Pin %d", State->Port.Pin);
            Assert(0);
        }
    }
    
    return isSuccess;
} // ReadGpio

s32 
Dio_OpenPort(s32 Pin, abs_stringptr Label, direction Direction)
{
    //log_info("Opening GPIO device %s", Label);
    s32 FileId = -1;
    
    s32 fd = open("/sys/class/gpio/export", O_WRONLY);
    
    if(fd != -1)
    {
        char buff[10] = {};
        int Count = snprintf(buff, ArrayCount(buff), "%u", Pin);
        write(fd, buff, Count);
        close(fd);
        
        char DirFileName[MAX_FILENAME_SIZE];
        snprintf(DirFileName, ArrayCount(DirFileName), "/sys/class/gpio/gpio%u/direction", Pin);
        s32 DirPortFile = open(DirFileName, O_RDWR);
        
        int OpenDir = O_RDONLY;
        if(DirPortFile != -1)
        {
            if(Direction == direction::Read)
            {
                OpenDir = O_RDONLY;
                write(DirPortFile, "in", 2);
            }
            else if(Direction == direction::Write)
            {
                OpenDir = O_WRONLY;
                write(DirPortFile, "out", 3);
            }
            
            close(DirPortFile);
        }
        else
        {
            log_error("Failed to open direction for pin %s, '%s': %s", Pin, DirFileName, strerror(errno));
        }
        
        char GpioFileName[MAX_FILENAME_SIZE];
        Count = snprintf(GpioFileName, ArrayCount(GpioFileName), "/sys/class/gpio/gpio%d/value", Pin);
        FileId = open(GpioFileName, OpenDir | O_NONBLOCK);
        
        if(FileId < 0)
        {
            log_error("Unable to open value file for %s", GpioFileName);
        }
    }
    else
    {
        log_error("Failed to open export for pin %u", Pin);
    }
    
    return FileId;
}

inline b8
Dio_OpenPort(dio_port Port)
{
    return Dio_OpenPort(Port.Pin, Port.Label, Port.Direction);
}

b8
Dio_ClosePort(dio_state *State)
{
    b8 isSuccess = false;
    
    log_info("Closing GPIO device %.*s", PSTRING(State->Port.Label));
    if(State->FileId != -1)
    {
        close(State->FileId);
        State->FileId = -1;
        State->ReadValue = TriState::Mu;
        State->LastReadTime = abt_GetCurrent();
        
        const char *UnexportFile = "/sys/class/gpio/unexport";
        s32 UnexportFd = open(UnexportFile, O_WRONLY);
        if(UnexportFd != -1)
        {
            char buf[10];
            snprintf(buf, ArrayCount(buf), "%d", State->Port.Pin);
            write(UnexportFd, buf, ArrayCount(buf));
            close(UnexportFd);
            log_info("GPIO %.*s Closed", PSTRING(State->Port.Label));
        }
        else
        {
            // NOTE(amos): Need some error handling here. This is the case where the Port has a
            // valid handle for reading or writing data, but there is no unexport to remove the file.
            log_error("Unable to close GPIO port %.*s", PSTRING(State->Port.Label));
            //Assert(0);
        }
    }
    else 
    {
        // Port is already closed.
        isSuccess = true;
    }
    
    return isSuccess;
} // ClosePort

static inline void
Dio_Clear(dio_state *State)
{
    InitializeQueue(&State->CommandQueue);
    State->ReadValue = TriState::Mu;
    State->toWriteValue = TriState::Mu;
    State->FileError = 0;
}

dio_state *
Dio_Initialize(memory_arena *Memory, dio_port Port, TriState Default = TriState::False)
{
    dio_state *State = 0;
    s32 FileId = Dio_OpenPort(Port);
    if(FileId >= 0)
    {
        State = abm_PushStruct(Memory, dio_state);
        Dio_Clear(State);
        State->Port = Port;
        State->FileId = FileId;
        GoToState(State, Dio_StartupState);
        
        if(Port.Direction == direction::Write)
        {
            if(Dio_Write(State, Default))
            {
                log_trace("Writing default data to %.*s: %d", PSTRING(Port.Label), Default);
            }
            else 
            {
                log_error("Unable to perform initial write to %.*s, Moving directly to error state.", PSTRING(Port.Label));
                GoToState(State, Dio_ErrorState);
            }
        }
        else
        {
            if(Dio_Read(State, &State->ReadValue))
            {
                log_trace("Read initial data for %.*s: %s", PSTRING(Port.Label), EnumToCString(State->ReadValue));
            }
            else 
            {
                log_error("Unable to perform initial write to %.*s, Moving directly to error state.", PSTRING(Port.Label));
                GoToState(State, Dio_ErrorState);
            }
        }
    }
    else
    {
        log_fatal("Unable to open the DIO port %.*s. Failing entirely.", PSTRING(Port.Label));
    }
    
    return State;
}

dio_state *
Dio_Initialize(memory_arena *Memory, s32 Pin, abs_stringptr Label, direction Direction)
{
    return Dio_Initialize(Memory, {Pin, Label, Direction});
}

DIO_SM(Dio_StartupState)
{
    if(State->isNewState)
    {
        State->isNewState = false;
        log_info("Entering %s State.", GetStateName(State->CurrentState));
        
    }
    
    if(State->FileId < 0)
    {
        State->FileId = Dio_OpenPort(State->Port);
        if(State->FileId < 0)
        {
            log_error("Unable to open port for %.*s.", PSTRING(State->Port.Label));
            ++State->FileError;
            GoToState(State, Dio_ErrorState);
        }
        else 
        {
            State->FileError = 0;
            GoToState(State, Dio_IdleState);
        }
    }
    else 
    {
        GoToState(State, Dio_IdleState);
    }
}

DIO_SM(Dio_ShutdownState)
{
    if(State->isNewState)
    {
        State->isNewState = false;
        log_info("Entering %s State.", GetStateName(State->CurrentState));
        Dio_ClosePort(State);
    }
    
    Cmd = DequeueCommand(State);
    
    switch(Cmd)
    {
        case dio_cmd::Reset:
        {
            GoToState(State, Dio_StartupState);
        }
        default:
        {}break;
    }
}

DIO_SM(Dio_ResetState)
{
    if(State->isNewState)
    {
        State->isNewState = false;
        log_info("Entering %s State.", GetStateName(State->CurrentState));
        Dio_ClosePort(State);
    }
    Dio_Clear(State);
    GoToState(State, Dio_StartupState);
}

DIO_SM(Dio_IdleState)
{
    if(State->isNewState)
    {
        State->isNewState = false;
        log_info("Entering %s State.", GetStateName(State->CurrentState));
    }
    
    Cmd = DequeueCommand(State);
    switch(Cmd)
    {
        case dio_cmd::Reset:
        {
            GoToState(State, Dio_ResetState);
        }break;
        
        case dio_cmd::StartRead:
        {
            if(State->Port.Direction == direction::Read)
            {
                GoToState(State, Dio_ContinuousReadState);
            }
            else 
            {
                log_error("Unable to read from write port, %.*s", PSTRING(State->Port.Label));
            }
        }break;
        
        case dio_cmd::Write:
        {
            if(State->Port.Direction == direction::Write)
            {
                GoToState(State, Dio_WriteState);
            }
            else 
            {
                log_error("Unable to write from read port, %.*s", PSTRING(State->Port.Label));
            }
        }break;
        
        default:
        {}break;
    }
}

DIO_SM(Dio_ContinuousReadState)
{
    if(State->isNewState)
    {
        State->isNewState = false;
        log_info("Entering %s State.", GetStateName(State->CurrentState));
        
    }
    
    if(Dio_Read(State, &State->ReadValue))
    {
        // TODO(amos) What is the success case here? Probably nothing to do, though maybe need a minimuim amount of time between reads?
    }
    else
    {
        log_error("Unable to read %.*s", PSTRING(State->Port.Label));
        GoToState(State, Dio_ErrorState);
    }
    
    Cmd=DequeueCommand(State);
    switch(Cmd)
    {
        case dio_cmd::StopRead:
        {
            GoToState(State, Dio_IdleState);
        }break;
        
        case dio_cmd::Reset:
        {
            GoToState(State, Dio_ResetState);
        }break;
        
        case dio_cmd::Write:
        {
            log_warn("Attempted to write a read gpio, %.*s, which fails.", PSTRING(State->Port.Label));
        }break;
        
        default:
        {}break;
    }
}

DIO_SM(Dio_WriteState)
{
    if(State->isNewState)
    {
        State->isNewState = false;
        log_info("Entering %s State.", GetStateName(State->CurrentState));
    }
    
    if(Dio_Write(State, State->toWriteValue))
    {
        log_info("Successfully wrote %s to %.*s.", EnumToCString(State->toWriteValue), PSTRING(State->Port.Label));
        GoToState(State, Dio_IdleState);
    }
    else 
    {
        log_info("Unable to write %s to %.*s.", EnumToCString(State->toWriteValue), PSTRING(State->Port.Label));
        GoToState(State, Dio_ErrorState);
    }
    
    State->toWriteValue = TriState::Mu;
}

DIO_SM(Dio_ErrorState)
{
    if(State->isNewState)
    {
        State->isNewState = false;
        log_info("Entering %s State.", GetStateName(State->CurrentState));
        
    }
    // TODO(amos): Some sort of error handling? 
    GoToState(State, Dio_ResetState);
}

b8
Dio_ReadValue(dio_state *State, io_data *Data)
{
    b8 isSuccess = false;
    
    if(State->ReadValue != TriState::Mu)
    {
        isSuccess = true;
        Data->Value = (State->ReadValue == TriState::True);
        Data->Time = State->LastReadTime;
    }
    
    return isSuccess;
}

b8 
Dio_WriteValue(dio_state *State, u8 Value)
{
    State->toWriteValue = (Value) ? TriState::True : TriState::False;
    EnqueueCommand(State, dio_cmd::Write);
    return true;
}

inline void
Dio_StartReading(dio_state *State)
{
    EnqueueCommand(State, dio_cmd::StartRead);
}

inline void
Dio_StopReading(dio_state *State)
{
    EnqueueCommand(State, dio_cmd::StopRead);
}

void
Dio_RunStateMachine(dio_state *State)
{
    
    if(!State->CurrentState)
    {
        GoToState(State, Dio_StartupState);
    }
    (State->CurrentState)(State, dio_cmd::NOP);
}

#undef DIO_MACHINE_SRC
#endif