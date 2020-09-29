/** @file
@brief Memory handling.
@author Amos Buchanan
@version 1.0
@date 2020

Getting and using blocks of memory, as oppossed to malloc/free anytime memory is desired. Works with Windows and Linux, with the OS specific implementation broken out into separate files. Generally, you grab a chunk of memory from the OS and use that chunk rather than constantly going out to the OS to get more when needed. To pull in for the appropriate OS, define either `_LINUX` or `_WINDOWS` in your build string or early in your project. (NOTE: Visual Studio adds a `_WINDOWS` define by default to C++ projects.

The use case for this library fits with the two methods of memory used in my projects:
- An initial block of memory that is initialized during setup, and not added to afterwards.
- Scratch memory that is wiped out at the beginning of each control loop.

At this time, there isn't really functionality for freeing and re-using memory. It's generally not necessary in the use cases I current have, though if this changes that functionality will be added.

This is a single-file library. You may include it as a header just as any other. Add the following define to include the source *once* per project:

~~~c
#define MEMORY_SRC
#include "ab_memory.h"
~~~

It is not advised to use the arena structs directly; the functions should be used to manipulate the memory.

The code here is heavily influenced by Casey Muratori and [Handmade Hero](https://handmadehero.org/). 

Example Usage:
~~~c
const size_t MemorySize = Kilobytes(150);
void *OsMemory = mem_AllocateOsMemory(NULL, MemorySize);
memory_arena MainMemory = mem_InitMemory(OsMemory, MemorySize);

// Begin initialization code here.
my_struct *MyStruct = mem_PushStruct(&MainMemory, my_struct);

const u32 MyStructArrayLength = 50;
my_struct *MyStructArray = mem_PushArray(&MainMemory, my_struct, MyStructArrayLength);

const size_t EmptyMemorySize = Kilobytes(1);
void *EmptyMemory = mem_PushSize(&MainMemory, EmptyMemorySize);

memory_arena VolatileMemory = mem_CreateSubArena(&MainMemory, Kilobytes(50));

// End initialization.

while(isRunning)
{
    mem_ResetMemory(&VolatileMemory);

    volatile_struct *VolatileStruct = PushStruct(&VolatileMemory, volatile_struct);
    // Do Stuff Here.

    temporary_memory ScratchMemory = mem_BeginTemporaryMemory(&VolatileMemory);

    // Use the ScratchMemory for something here.

    mem_EndTemporaryMemory(ScratchMemory);
}

mem_DeallocateOsMemory(OsMemory, MemorySize);
~~~

See also:
- @ref ab_memory_linux.h
- @ref ab_memory_win32.h

**/

#if !defined(MEM_MEMORY_H)
#define MEM_MEMORY_H

#include "ab_common.h"

/** @private **/
struct memory_arena
{
	void *Start;
	size_t Size;
	size_t Used;
};

/** @private **/
struct temporary_memory
{
	memory_arena* Arena;
	size_t Used;
};

/** @brief Get memory from the OS. 

@param Address The start address of the memory. Generally used for debugging.
@param Size Amount of memory you want from the OS.
@return A void* pointer to the start of the memory; 0 if memory allocation failed.
**/
void *mem_AllocateOsMemory(void *Address, size_t Size);

/** @brief Return memory to the OS.

@param Address of the memory from the OS, the return value of @ref mem_AllocateOsMemory().
@param Size Size of the memory to return (Some OS's need this.), should be the same as the  parameter from `mem_AllocateOsMemory()`.
                                          **/
void mem_DeallocateOsMemory(void *Address, size_t Size);

/** @brief Get memory for the type or struct and return a pointer to the struct type.

This will clear the memory to 0.

@param Arena A pointer to the memory arena.
@param Type The struct type to allocate.
@return A pointer to the struct type.
**/
#define mem_PushStruct(Arena, Type) (Type*)mem_PushSize_(Arena, sizeof(Type))

/** @brief Get memory of given size and return a pointer to memory. 

This will clear the memory to 0.

@param Arena A pointer to the memory_arena.
@param Size `size_t` amount of memory to create.
@return 'void*` pointer to the start of the memory.
**/
#define mem_PushSize(Arena, Size) mem_PushSize_(Arena, Size)

/** @brief Get memory for an array of types specified. 

This will clear the memory to 0.

@param Arena A pointer to a `memory_arena` to hold the array.
@param Count Number of array elements to allocate.
@param Type The type of array to allocate. Can be any type.
@return A pointer to the first element in the array.
**/
#define mem_PushArray(Arena, Count, Type) (Type*)mem_PushSize_(Arena, (Count)*sizeof(Type))

/** @private */
void *mem_PushSize_(memory_arena *Memory, size_t Size, b8 ClearMemory = true);

/** @brief Initialize a memory_arena.

Create a new `memory_arena` object from the memory block in the OS. This may be the entire block requested, or part 
of one. 

@param Start The start of the memory block.
@param Size The size of the memory arena.
@return A new memory_arena.
**/
memory_arena mem_InitMemory(void *Start, size_t Size);

/** @brief Delete everything in a `memory_arena` and set the amount of memory used to 0. 

This is used to wipe out everything in a memory arena. This is usually used at the beginning of a control
loop to clear the volatile memory.

@param Memory The `memory_arena` to wipe.
**/
void mem_ResetMemory(memory_arena *Memory);

/** @brief Get the amount of memory left in an arena.

@param Memory A pointer to the `memory_arena` to check.
@return The amount of unused memory in the arena.
**/
inline size_t mem_GetMemoryLeft(memory_arena *Memory);

/** @brief Indicates the next section of memory is scratch, and will be cleared quickly.

This must be paired with `mem_EndTemporaryMemory()`. Memory used between `mem_BeginTemporyMemory()` and 
`mem_EndTemporaryMemory()` will be wiped. This is generally used for brief scratch memory that's needed within 
a single function, but is not otherwise needed.

Example Usage:
~~~c
temporary_memory TempMem = mem_BeginTemporaryMemory(&MemoryArena);

my_struct *MyStruct = mem_PushStruct(&MemoryArena, my_struct);
// Do some scratch work here, using the memory as normal.

// Any memory used since mem_BeginTemporaryMemory() will be wiped out here.
mem_EndTemporaryMemory(TempMem);
~~~

@param Memory A pointer to the `memory_arena` to use.
@return A `temporary_memory` struct that is used again to end the memory.
**/
temporary_memory mem_BeginTemporaryMemory(memory_arena *Memory);

/** @brief Ends the section of temporary memory.

This will free all the memory used since `mem_BeginTemporaryMemory()`. See @ref mem_BeginTemporaryMemory() for more 
details on usage.

@param TempMem The `temporary_memory` struct created with `mem_BeginTemporaryMemory()`.
**/
void mem_EndTemporaryMemory(temporary_memory TempMem);

/** @brief Create a `memory_arena` inside an existing arena.

@param Memory A pointer to the existing `memory_arena` within which to create a new arena.
@param Size The amount of memory to use for the arena.
@return A new `memory_arena` that may be used just as the parent arena.
**/
memory_arena
mem_CreateSubArena(memory_arena *Memory, size_t Size);
#endif

#if _WINDOWS
#include "ab_memory_win32.h"
#elif _LINUX
#include "ab_memory_linux.h"
#endif


#if defined(MEMORY_SRC)

memory_arena
mem_InitMemory(void *Start, size_t Size)
{
    Assert(Start);
    
    memory_arena Memory = {};
    Memory.Start = Start;
    Memory.Size = Size;
    Memory.Used = 0;
    
    return Memory;
}

memory_arena
mem_CreateSubArena(memory_arena *Memory, size_t Size)
{
    memory_arena SubArena = {};
    SubArena.Start = mem_PushSize(Memory, Size);
    SubArena.Size = Size;
    SubArena.Used = 0;
    
    return SubArena;
}

void *
mem_PushSize_(memory_arena *Memory, size_t Size, b8 ClearMemory)
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
mem_BeginTemporaryMemory(memory_arena *Memory)
{
    temporary_memory Result = {};
    Result.Arena = Memory;
    Result.Used = Memory->Used;
    
    return Result;
}

void
mem_EndTemporaryMemory(temporary_memory TempMem)
{
    TempMem.Arena->Used = TempMem.Used;
}


void
mem_ResetMemory(memory_arena *Memory)
{
    Memory->Used = 0;
}

inline size_t
mem_GetMemoryLeft(memory_arena *Memory)
{
    size_t Result = Memory->Size - Memory->Used;
    
    return Result;
}


#undef MEMORY_SRC
#endif
