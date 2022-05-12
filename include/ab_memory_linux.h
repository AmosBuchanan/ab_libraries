/** @file
@brief Linux specific implementation of some memory functions.
@author Amos Buchanan
@version 1.0
@date 2020

Linux specific implementation of functions. See @ref ab_memory.h for function usage. Do not include this file directly; it's included from @ref ab_memory.h automatically.

**/


#ifndef MEMORY_LINUX_H
#define MEMORY_LINUX_H

#endif //MEMORY_LINUX_H

#if defined(MEMORY_SRC)

#include <sys/mman.h>
#include <errno.h>

void *mem_AllocateOsMemory(void *Address, size_t Size)
{
    void* MemoryStart = mmap(Address, Size,
                             PROT_READ | PROT_WRITE,
                             MAP_ANONYMOUS | MAP_PRIVATE,
                             -1, 0);
    
    if(MemoryStart == MAP_FAILED)
    {
        // Error.
        s32 Error = errno;
        MemoryStart = 0;
    }
    
    return MemoryStart;
    
}

void 
mem_DeallocateOsMemory(void *Address, size_t Size)
{
    munmap(Address, Size);
}

#endif

