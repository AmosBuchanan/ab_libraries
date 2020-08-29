/* date = May 18th 2020 3:15 pm */

#ifndef _AB_FILE_LINUX_H
#define _AB_FILE_LINUX_H

#include <glob.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <malloc.h>

struct file_list
{
    glob_t GlobData;
    
    size_t FileCount;
    u32 FileIndex;
    file_data *CurrentFile;
    char Path[MAX_PATH];
};

#endif //_AB_FILE_LINUX_H

#if defined(AB_FILE_SRC)
file_list *
abf_InitializeFileList(memory_arena *Memory, const char *Path)
{
    file_list *Result = 0;
    if(isDirExists(Path))
    {
        Result = abm_PushStruct(Memory, file_list);
        
        const u32 WildCardSize = (MAX_PATH) + 10;
        char WildCard[WildCardSize];
        stbsp_snprintf(WildCard, WildCardSize, "%s/*.c*", Path);
        s32 ReturnC = glob(WildCard, 0, 0, &Result->GlobData);
        
        stbsp_snprintf(WildCard, WildCardSize, "%s/*.h*", Path);
        s32 ReturnH = glob(WildCard, GLOB_APPEND, 0, &Result->GlobData);
        //s32 ReturnH = -1;
        
        if( (ReturnC == 0) || (ReturnH == 0))
        {
            Result->FileCount = Result->GlobData.gl_pathc;
        }
        else
        {
            Result->FileCount = 0;
        }
        
        Result->FileIndex = 0;
    }
    return Result;
}

b8 
abf_GetNextFile(file_list *FileList, file_data *FileDataOut)
{
    b8 Result = false;
    
    if(FileList->CurrentFile)
    {
        if(FileList->CurrentFile->FileData)
        {
            free(FileList->CurrentFile->FileData);
            FileList->CurrentFile->FileData = 0;
        }
    }
    
    if(FileList->FileIndex < FileList->GlobData.gl_pathc)
    {
        
        char* FileName = FileList->GlobData.gl_pathv[FileList->FileIndex];
        ++FileList->FileIndex;
        
        int FileHandle = open(FileName, O_RDONLY);
        if(FileHandle != -1)
        {
            struct stat FileStatus;
            if(fstat(FileHandle, &FileStatus) != -1)
            {
                FileDataOut->Size = FileStatus.st_size;
                
                FileDataOut->FileData = (char *)malloc(FileDataOut->Size+1);
                FileDataOut->FileData[FileDataOut->Size] = 0;
                if(FileDataOut->FileData)
                {
                    u32 BytesToRead = FileDataOut->Size;
                    u8* NextByteLocation = (u8*)FileDataOut->FileData;
                    while (BytesToRead)
                    {
                        s32 BytesRead = read(FileHandle, NextByteLocation, BytesToRead);
                        if(BytesRead == -1)
                        {
                            free(FileDataOut->FileData);
                            FileDataOut->FileData= 0;
                            FileDataOut->Size = 0;
                            Result = false;
                            break;
                        }
                        else
                        {
                            BytesToRead -= (uint32_t)BytesRead;
                            NextByteLocation += BytesRead;
                            Result = true;
                        }
                    }
                    FileList->CurrentFile = FileDataOut;
                }
                else
                {
                    FileDataOut->Size = 0;
                    FileList->CurrentFile = 0;
                }
                
            }
            close(FileHandle);
        }
    }
    else 
    {
        FileList->CurrentFile = {};
    }
    
    
    return Result;
    
}

void 
abf_ReleaseFileList(file_list *FileList)
{
    if(FileList)
    {
        if(FileList->CurrentFile)
        {
            if(FileList->CurrentFile->FileData)
            {
                free(FileList->CurrentFile->FileData);
            }
        }
        
        globfree(&FileList->GlobData);
    }
    
}
#endif
