/** @file
@brief Linux specific implementation of some memory functions.
@author Amos Buchanan
@version 1.0
@date 2020
@copyright [MIT Public License](https://opensource.org/licenses/MIT)

Linux specific implementation of functions. See @ref ab_memory.h for function usage.

# MIT License

 [MIT Public License](https://opensource.org/licenses/MIT)

Copyright 2020 Amos Buchanan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
**/


#ifndef AB_MEMORY_LINUX_H
#define AB_MEMORY_LINUX_H

#endif //AB_MEMORY_LINUX_H

#if defined(AB_MEMORY_SRC)

#include <sys/mman.h>
#include <errno.h>

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

