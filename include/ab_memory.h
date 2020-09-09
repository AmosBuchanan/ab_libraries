/** @file
@brief Memory handling.
@author Amos Buchanan
@version 1.0
@date 2020
@copyright [MIT Public License](https://opensource.org/licenses/MIT)

Getting and using blocks of memory, as oppossed to malloc/free anytime memory is desired. Works with Windows and Linux, with the OS specific implementation broken out into separate files. Generally, you grab a chunk of memory from the OS and use that chunk rather than constantly going out to the OS to get more when needed. To pull in for the appropriate OS, define either `_LINUX` or `_WINDOWS` in your build string or early in your project. (NOTE: Visual Studio adds a `_WINDOWS` define by default to C++ projects.

This is a single-file library. You may include it as a header just as any other. Add the following define to include the source *once* per project:

~~~c
#define AB_MEMORY_SRC
#include "ab_memory.h"
~~~

It is not advised to use the arena structs directly; the functions should be used to manipulate the memory.

The code here is heavily influenced by Casey Muratori and [Handmade Hero](https://handmadehero.org/). 

Example Usage:
~~~c
const size_t MemorySize = Kilobytes(150);
void *OsMemory = abm_AllocateOsMemory(NULL, MemorySize);
memory_arena MainMemory = abm_InitMemory(OsMemory, MemorySize);

// Begin initialization code here.
my_struct *MyStruct = abm_PushStruct(&MainMemory, my_struct);

const u32 MyStructArrayLength = 50;
my_struct *MyStructArray = abm_PushArray(&MainMemory, my_struct, MyStructArrayLength);

const size_t EmptyMemorySize = Kilobytes(1);
void *EmptyMemory = abm_PushSize(&MainMemory, EmptyMemorySize);

memory_arena VolatileMemory = abm_CreateSubArena(&MainMemory, Kilobytes(50));

// End initialization.

while(isRunning)
{
    abm_ResetMemory(&VolatileMemory);

    volatile_struct *VolatileStruct = PushStruct(&VolatileMemory, volatile_struct);
    // Do Stuff Here.

    temporary_memory ScratchMemory = abm_BeginTemporaryMemory(&VolatileMemory);

    // Use the ScratchMemory for something here.

    abm_EndTemporaryMemory(ScratchMemory);
}

abm_DeallocateOsMemory(OsMemory, MemorySize);
~~~

See also:
- @ref ab_memory_linux.h
- @ref ab_memory_win32.h

# MIT License

 [MIT Public License](https://opensource.org/licenses/MIT)

Copyright 2020 Amos Buchanan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
**/

#if !defined(AB_MEMORY_H)
#define AB_MEMORY_H

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
void *abm_AllocateOsMemory(void *Address, size_t Size);

/** @brief Return memory to the OS.

@param Address of the memory from the OS, the return value of @ref abm_AllocateOsMemory().
@param Size Size of the memory to return (Some OS's need this.), should be the same as the  parameter from `abm_AllocateOsMemory()`.
                                          **/
void abm_DeallocateOsMemory(void *Address, size_t Size);

/** @brief Get memory for the type or struct and return a pointer to the struct type.

This will clear the memory to 0.

@param Arena A pointer to the memory arena.
@param Type The struct type to allocate.
@return A pointer to the struct type.
**/
#define abm_PushStruct(Arena, Type) (Type*)abm_PushSize_(Arena, sizeof(Type))

/** @brief Get memory of given size and return a pointer to memory. 

This will clear the memory to 0.

@param Arena A pointer to the memory_arena.
@param Size `size_t` amount of memory to create.
@return 'void*` pointer to the start of the memory.
**/
#define abm_PushSize(Arena, Size) abm_PushSize_(Arena, Size)

/** @brief Get memory for an array of types specified. 

This will clear the memory to 0.

@param Arena A pointer to a `memory_arena` to hold the array.
@param Count Number of array elements to allocate.
@param Type The type of array to allocate. Can be any type.
@return A pointer to the first element in the array.
**/
#define abm_PushArray(Arena, Count, Type) (Type*)abm_PushSize_(Arena, (Count)*sizeof(Type))

/** @private */
void *abm_PushSize_(memory_arena *Memory, size_t Size, b8 ClearMemory = true);

/** @brief Initialize a memory_arena.

Create a new `memory_arena` object from the memory block in the OS. This may be the entire block requested, or part 
of one. 

@param Start The start of the memory block.
@param Size The size of the memory arena.
@return A new memory_arena.
**/
memory_arena abm_InitMemory(void *Start, size_t Size);

/** @brief Delete everything in a `memory_arena` and set the amount of memory used to 0. 

This is used to wipe out everything in a memory arena. This is usually used at the beginning of a control
loop to clear the volatile memory.

@param Memory The `memory_arena` to wipe.
**/
void abm_ResetMemory(memory_arena *Memory);

/** @brief Get the amount of memory left in an arena.

@param Memory A pointer to the `memory_arena` to check.
@return The amount of unused memory in the arena.
**/
inline size_t abm_GetMemoryLeft(memory_arena *Memory);

/** @brief Indicates the next section of memory is scratch, and will be cleared quickly.

This must be paired with `abm_EndTemporaryMemory()`. Memory used between `abm_BeginTemporyMemory()` and 
`abm_EndTemporaryMemory()` will be wiped. This is generally used for brief scratch memory that's needed within 
a single function, but is not otherwise needed.

Example Usage:
~~~c
temporary_memory TempMem = abm_BeginTemporaryMemory(&MemoryArena);

my_struct *MyStruct = abm_PushStruct(&MemoryArena, my_struct);
// Do some scratch work here, using the memory as normal.

// Any memory used since abm_BeginTemporaryMemory() will be wiped out here.
abm_EndTemporaryMemory(TempMem);
~~~

@param Memory A pointer to the `memory_arena` to use.
@return A `temporary_memory` struct that is used again to end the memory.
**/
temporary_memory abm_BeginTemporaryMemory(memory_arena *Memory);

/** @brief Ends the section of temporary memory.

This will free all the memory used since `abm_BeginTemporaryMemory()`. See @ref abm_BeginTemporaryMemory() for more 
details on usage.

@param TempMem The `temporary_memory` struct created with `abm_BeginTemporaryMemory()`.
**/
void abm_EndTemporaryMemory(temporary_memory TempMem);

/** @brief Create a `memory_arena` inside an existing arena.

@param Memory A pointer to the existing `memory_arena` within which to create a new arena.
@param Size The amount of memory to use for the arena.
@return A new `memory_arena` that may be used just as the parent arena.
**/
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
