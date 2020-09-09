/** @file
 @brief Windows specific implementation of some memory functions.
@author Amos Buchanan
@version 1.0
@date 2020
@copyright [MIT Public License](https://opensource.org/licenses/MIT)

Windows specific implementation of functions. See @ref ab_memory.h for function usage. Do not include this file directly; it's included from @ref ab_memory.h automatically.

# MIT License

 [MIT Public License](https://opensource.org/licenses/MIT)

Copyright 2020 Amos Buchanan

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
**/

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

