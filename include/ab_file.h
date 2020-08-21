/* date = May 18th 2020 3:12 pm */

#ifndef _AB_FILE_H
#define _AB_FILE_H

#ifndef MAX_PATH
#define MAX_PATH 255
#endif

#include "stb_sprintf.h"
#include "ab_memory.h"

struct file_data
{
    size_t Size;
    u32 FileIndex;
    char FileName[50];
    char *FileData;
};


// OS Defined
struct file_list;

file_list *abf_InitializeFileList(memory_arena *Memory, const char *Path);
b8 abf_GetNextFile(file_list *FileList, file_data *FileDataOut);
void abf_ReleaseFileList(file_list *FileList);

// 

#endif //_AB_FILE_H

#if defined(WINDOWS)
#include "ab_file_win32.h"
#elif defined(LINUX)
#include "ab_file_linux.h"
#endif

#if defined(AB_FILE_SRC)

#undef AB_FILE_SRC
#endif
