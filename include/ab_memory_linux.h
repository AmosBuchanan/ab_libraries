/* date = May 18th 2020 5:35 pm */

#ifndef AB_MEMORY_LINUX_H
#define AB_MEMORY_LINUX_H

#endif //AB_MEMORY_LINUX_H

#if defined(AB_MEMORY_SRC)

#include <sys/mman.h>
#include <sys/errno.h>

void *abm_AllocateOsMemory(void *Address, size_t Size)
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
abm_DeallocateOsMemory(void *Address, size_t Size)
{
    munmap(Address, Size);
}

#endif

