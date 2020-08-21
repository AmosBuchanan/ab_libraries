/* date = May 18th 2020 3:11 pm */

#ifndef _AB_FILE_WIN32_H
#define _AB_FILE_WIN32_H

#define WIN32_LEAN_AND_MEAN             // Exclude rarely-used stuff from Windows headers
#include <windows.h>
#include <malloc.h>

#include "ab_common.h"
#include "ab_memory.h"
#include "ab_string.h"

struct file_list
{
    HANDLE FileSearchHandle;
    file_data *CurrentFile;
    
    char Path[MAX_PATH];
};
#endif //_AB_FILE_WIN32_H

#if defined(AB_FILE_SRC)

file_list *
abf_InitializeFileList(memory_arena *Memory, const char *Path)
{
    file_list *Result = abm_PushStruct(Memory, file_list);
    Result->FileSearchHandle = INVALID_HANDLE_VALUE;
    snprintf(Result->Path, MAX_PATH, Path);
    
    return Result;
}

b8
abf_GetNextFile(file_list *FileList, file_data *FileDataOut)
{
    if(FileList->CurrentFile)
    {
        if(FileList->CurrentFile->FileData)
        {
            free(FileList->CurrentFile->FileData);
            FileList->CurrentFile->FileData = 0;
        }
    }
    
    
    WIN32_FIND_DATAA FindData;
    
    b8 isDataValid = false;
    b8 isFileValid = false;
    
    auto VerifyValidFile = [](WIN32_FIND_DATAA FindData) -> b8
    {
        b8 isFileValid = ((FindData.dwFileAttributes & FILE_ATTRIBUTE_ARCHIVE ||
                           FindData.dwFileAttributes & FILE_ATTRIBUTE_NORMAL) &&
                          !(FindData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY));
        
        return isFileValid;
    };
    
    if(!FileList->FileSearchHandle ||
       FileList->FileSearchHandle == INVALID_HANDLE_VALUE)
    {
        char Path[MAX_PATH];
        snprintf(Path, MAX_PATH, "%s/*", FileList->Path);
        FileList->FileSearchHandle = FindFirstFileA(Path, &FindData);
        
        if(FileList->FileSearchHandle == INVALID_HANDLE_VALUE)
        {
            printf("Unable to find specified files in %s\n", FileList->Path);
            LPVOID lpMsgBuf;
            DWORD dw = GetLastError();
            FormatMessage(
                          FORMAT_MESSAGE_ALLOCATE_BUFFER |
                          FORMAT_MESSAGE_FROM_SYSTEM |
                          FORMAT_MESSAGE_IGNORE_INSERTS,
                          NULL,
                          dw,
                          MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
                          (LPTSTR) &lpMsgBuf,
                          0, NULL );
            
            printf("Error: %s\n", (LPSTR)&lpMsgBuf);
            LocalFree(lpMsgBuf);
            
            isFileValid = VerifyValidFile(FindData);
        }
        else
        {
            isFileValid = false;
        }
        
        
    }
    else
    {
        isFileValid = false;
    }
    
    while(!isFileValid &&
          FileList->FileSearchHandle != INVALID_HANDLE_VALUE)
    {
        if (FindNextFileA(FileList->FileSearchHandle, &FindData))
        {
            isFileValid = VerifyValidFile(FindData);
        }
        else
        {
            isFileValid = false;
            break;
        }
        
    }
    if (isFileValid)
    {
        FILE *File;
        char FullPath[MAX_PATH];
        snprintf(FullPath, ArrayCount(FullPath), "%s/%s", FileList->Path, FindData.cFileName);
        
        if (fopen_s(&File, FullPath, "rb") == 0)
        {
            if (File)
            {
                fseek(File, 0, SEEK_END);
                FileDataOut->Size = ftell(File);
                fseek(File, 0, SEEK_SET);
                
                FileDataOut->FileData = (char*)malloc(FileDataOut->Size + 1);
                FileDataOut->FileData[FileDataOut->Size] = 0;
                
                fread(FileDataOut->FileData, 1, FileDataOut->Size, File);
                FileDataOut->FileData[FileDataOut->Size] = 0;
                strncpy(FileDataOut->FileName, FindData.cFileName, ArrayCount(FileDataOut->FileName));
                isFileValid = true;
                fclose(File);
                
                FileList->CurrentFile = FileDataOut;
            }
            else
            {
                isFileValid = false;
            }
            
        }
    }
    else
    {
        FileList->CurrentFile = 0;
    }
    
    
    return isFileValid;
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
    }
}

#endif

