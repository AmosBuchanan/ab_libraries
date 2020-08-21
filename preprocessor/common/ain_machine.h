/* date = July 28th 2020 6:59 pm */

#ifndef AIN_MACHINE_H
#define AIN_MACHINE_H

#include "adsio.h"

STATEMACHINE(ain_sm, ain_state, ain_cmd);

TAG(Strings);
enum class ain_cmd
{
    NOP,
    Reset,
    StartRead,
    StopRead,
    Write
};

struct ain_port
{
    s32 Index;
    abs_stringptr Label;
};

struct ain_state
{
    ain_sm *CurrentState;
    ain_cmd_queue CommandQueue;
    b8 isNewState;
    s32 FileId; // NOTE(amos) File descriptor from open()
    
    s32 ReadValue;
    abt_time LastReadTime;
    ain_port Port;
};
#endif //AIN_MACHINE_H

#if AIN_MACHINE_SRC

s32
Ain_OpenPort(s32 AinPort, abs_stringptr Label)
{
    log_info("Opening AIN device %.*s", PSTRING(Label));
    s32 FileId = -1;
    
    char AinFileName[MAX_FILENAME_SIZE];
    snprintf(AinFileName, ArrayCount(AinFileName), "/sys/bus/iio/devices/iio:device0/in_voltage%u_raw", AinPort);
    s32 AinPortFile = open(AinFileName, O_RDONLY | O_NONBLOCK);
    
    if(AinPortFile != -1)
    {
        FileId = AinPortFile;
        log_trace("Opened AIN for pin %d (%s)", AinPort, Label);
    }
    else
    {
        log_error("Failed to open AIN for pin %d (%s), '%s': %s", AinPort, Label, AinFileName, strerror(errno));
    }
    
    return FileId;
    
} // OpenAin

b8
Ain_ClosePort(ain_state *State)
{
    log_info("Closing AIN device %.*s", PSTRING(State->Port.Label));
    if(PortData->FileDescriptor != -1)
    {
        log_info("Closing the port for pin %d", State->Port.Index);
        close(State->Port.FileDescriptor);
        State->Port.FileDescriptor = -1;
    }
    else
    {
        log_warn("Attempting to close AIN port %s, it is not open. Pin: %d", State->Port.Label, State->Port.Index);
    }
} // CloseAin

b8
ReadAin(ain_port_data *PortData, r32 *ValueOut, io_state *Io)
{
    b8 Result = false;
    if(State->Port.FileDescriptor != -1)
    {
        char Buffer[5];
        // NOTE(amos): Digital in is 0-4095, which is max four digits.
        lseek(State->Port.FileDescriptor, SEEK_SET, 0);
        s32 NumBytes = read(State->Port.FileDescriptor, Buffer, 4);
        
        if(NumBytes < 0)
        {
            log_error("Error reading analog %d (%s): %s", State->Port.Index, State->Port.Label, strerror(errno));
#if DEBUG
            FlushGpioLog(Io->LogFileFD, &Io->GpioLogBuffer);
            State->Port.LastReadVoltage = 0.0f;
            log_set_level(LOG_TRACE);
            log_trace("Set Loglevel to TRACE");
#endif
        }
        if(NumBytes == 0)
        {
            log_warn("Did not read data in analog %d, %s.", State->Port.Index, State->Port.Label);
            State->Port.LastReadVoltage = 0.0f;
        }
        else
        {
            Buffer[NumBytes] = 0;
            
            s32 CurrentValue = atoi(Buffer);
            if(CurrentValue != State->Port.LastRawVoltage)
            {
                State->Port.LastRawVoltage = CurrentValue;
                State->Port.LastReadVoltage = DIG_TO_VOLTAGE * (r32)State->Port.LastRawVoltage;
                log_trace("New Voltage Value for port %d, sensor %s: %d. Voltage: %0.2f V", State->Port.Index, State->Port.Label, CurrentValue, State->Port.LastReadVoltage);
            }
            Result = true;
        }
        
        log_trace("Value for analog sensor %d: %0.1f", State->Port.Index, State->Port.LastReadVoltage);
        *ValueOut = State->Port.LastReadVoltage;
    }
    else
    {
        log_error("Attempting to read an invalid Port. Port %d", State->Port.Index);
    }
    
    return Result;
} // ReadAin


#endif