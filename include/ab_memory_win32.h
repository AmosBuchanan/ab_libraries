/* date = May 18th 2020 5:34 pm */

#ifndef AB_MEMORY_WIN32_H
#define AB_MEMORY_WIN32_H

#endif //AB_MEMORY_WIN32_H

#if defined(AB_MEMORY_SRC)

#define WIN32_LEAN_AND_MEAN             // Exclude rarely-used stuff from Windows headers
#include <windows.h>


void *abm_AllocateOsMemory(void *Address, size_t Size)
{
    LPVOID MemoryStart= VirtualAlloc(Address, Size,
                                     MEM_COMMIT|MEM_RESERVE,
                                     PAGE_READWRITE);
    
    return MemoryStart;
    
}

void abm_DeallocateOsMemory(void *Address, size_t Size)
{
    VirtualFree(Address, 0, MEM_RELEASE);
}


#endif

