#if !defined(AB_MEMORY_H)
#define AB_MEMORY_H
/** =======================================================================
   $File: $
   $Date: $
   $Revision: $
   $Creator: Amos Buchanan $
   $Email: amos.buchanan@traxxautomation.com $
   $Notice: (C) Copyright 2015 Traxx Automation. All Rights Reserved. $
   ======================================================================== */


#include "ab_common.h"

struct memory_arena
{
	void *Start;
	size_t Size;
	size_t Used;
};

struct temporary_memory
{
	memory_arena* Arena;
	size_t Used;
};

void *abm_AllocateOsMemory(void *Address, size_t Size);
void abm_DeallocateOsMemory(void *Address, size_t Size);

#define abm_PushStruct(Arena, Type) (Type*)abm_PushSize_(Arena, sizeof(Type))
#define abm_PushSize(Arena, Size) abm_PushSize_(Arena, Size)
#define abm_PushArray(Arena, Count, Type) (Type*)abm_PushSize_(Arena, (Count)*sizeof(Type))
void *abm_PushSize_(memory_arena *Memory, size_t Size, b8 ClearMemory = true);
memory_arena abm_InitMemory(void *Start, size_t Size);
void abm_ResetMemory(memory_arena *Memory);
inline size_t abm_GetMemoryLeft(memory_arena *Memory);

temporary_memory abm_BeginTemporaryMemory(memory_arena *Memory);
void abm_EndTemporaryMemory(temporary_memory TempMem);

memory_arena
abm_CreateSubArena(memory_arena *Memory, size_t Size);

#endif

#if _WINDOWS
#include "ab_memory_win32.h"
#elif _LINUX
#include "ab_memory_linux.h"
#endif


#if defined(AB_MEMORY_SRC)

memory_arena
abm_InitMemory(void *Start, size_t Size)
{
    Assert(Start);
    
    memory_arena Memory = {};
    Memory.Start = Start;
    Memory.Size = Size;
    Memory.Used = 0;
    
    return Memory;
}

memory_arena
abm_CreateSubArena(memory_arena *Memory, size_t Size)
{
    memory_arena SubArena = {};
    SubArena.Start = abm_PushSize(Memory, Size);
    SubArena.Size = Size;
    SubArena.Used = 0;
    
    return SubArena;
}

void *
abm_PushSize_(memory_arena *Memory, size_t Size, b8 ClearMemory)
{
    void* Result = 0;
    
    Assert((Memory->Size - Memory->Used) > Size);
    Result = (((u8*)Memory->Start) + Memory->Used);
    Memory->Used += Size;
    
    if(ClearMemory)
    {
        for(size_t Index = 0; Index < Size; ++Index)
        {
            ((u8*)Result)[Index] = 0;
        }
    }
    
    return Result;
}

temporary_memory
abm_BeginTemporaryMemory(memory_arena *Memory)
{
    temporary_memory Result = {};
    Result.Arena = Memory;
    Result.Used = Memory->Used;
    
    return Result;
}

void
abm_EndTemporaryMemory(temporary_memory TempMem)
{
    TempMem.Arena->Used = TempMem.Used;
}


void
abm_ResetMemory(memory_arena *Memory)
{
    Memory->Used = 0;
}

inline size_t
abm_GetMemoryLeft(memory_arena *Memory)
{
    size_t Result = Memory->Size - Memory->Used;
    
    return Result;
}


#undef AB_MEMORY_SRC
#endif
