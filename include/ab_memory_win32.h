/** @file
 @brief Windows specific implementation of some memory functions.
@author Amos Buchanan
@version 1.0
@date 2020

Windows specific implementation of functions. See @ref ab_memory.h for function usage. Do not include this file directly; it's included from @ref ab_memory.h automatically.
**/

#ifndef MEMORY_WIN32_H
#define MEMORY_WIN32_H

#endif //MEMORY_WIN32_H

#if defined(MEMORY_SRC)

#define WIN32_LEAN_AND_MEAN             // Exclude rarely-used stuff from Windows headers
#include <windows.h>


void *mem_AllocateOsMemory(void *Address, size_t Size)
{
    LPVOID MemoryStart= VirtualAlloc(Address, Size,
                                     MEM_COMMIT|MEM_RESERVE,
                                     PAGE_READWRITE);
    
    return MemoryStart;
    
}

void mem_DeallocateOsMemory(void *Address, size_t Size)
{
    VirtualFree(Address, 0, MEM_RELEASE);
}


#endif

