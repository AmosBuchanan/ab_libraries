/* date = May 18th 2020 3:12 pm */

#ifndef _AB_FILE_H
#define _AB_FILE_H

#ifndef MAX_PATH
#define MAX_PATH 255
#endif

#include <sys/stat.h>

#include "stb_sprintf.h"
#include "ab_memory.h"

enum class enFileType
{
    Unknown,
    Header, 
    Cpp,
};

struct file_data
{
    size_t Size;
    u32 FileIndex;;
    char FileName[MAX_PATH];
    char *FileData;
    enFileType Type;
};


// OS Defined
struct file_list;

b8 
isDirExists(const char* const path);
file_list *abf_InitializeFileList(memory_arena *Memory, const char *Path);
b8 abf_GetNextFile(file_list *FileList, file_data *FileDataOut);
void abf_ReleaseFileList(file_list *FileList);

//

#endif //_AB_FILE_H

#if defined(_WINDOWS)
#include "ab_file_win32.h"
#elif defined(_LINUX)
#include "ab_file_linux.h"
#endif

#if defined(AB_FILE_SRC)


b8
isDirExists(const char* const path)
{
    struct stat info;
    b8 isDir = false;
    
    int statRC = stat( path, &info );
    if( statRC == 0 )
    {
        isDir = (info.st_mode & S_IFDIR) > 0;
    }
    
    return isDir;
}

#undef AB_FILE_SRC
#endif
