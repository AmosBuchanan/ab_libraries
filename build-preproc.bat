call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvars64.bat"

del /S /Q bin

pushd preprocessor
del /S /Q obj
mkdir bin
mkdir obj

set WARNOPTIONS=/W3 /WX
set COMMONCOMPILEROPTIONS=/c /std:c++latest /ZI /JMC /nologo %WARNOPTIONS%  /diagnostics:classic /sdl /Od /D _DEBUG /D _LIB /D _UNICODE /D UNICODE /D INTEGRATED_SUIT /D _CRT_SECURE_NO_WARNINGS /Gm- /EHsc /RTC1 /MDd /GS /fp:precise /permissive- /Zc:wchar_t /Zc:forScope /Zc:inline /Gd /TP /FC /I"../common" /I"../include"

cl %COMMONCOMPILEROPTIONS% /Fo"obj\\" /Fd"obj\AmsPreprocessor.PDB" src/AmsPreprocessor.cpp

IF %ERRORLEVEL% NEQ 0 (
   exit /B 1
)

link.exe /ERRORREPORT:PROMPT /OUT:"bin\AmsPreprocessor.exe" /NOLOGO /LIBPATH:"lib" Ws2_32.lib kernel32.lib /MANIFEST /MANIFESTUAC:"level='asInvoker' uiAccess='false'" /manifest:embed /DEBUG:FASTLINK /PDB:"bin\AmsPreprocessor.pdb" /SUBSYSTEM:CONSOLE /TLBID:1 /DYNAMICBASE /NXCOMPAT /NODEFAULTLIB:"libcmt.lib" /MACHINE:X64 obj/AmsPreprocessor

IF %ERRORLEVEL% NEQ 0 (
   exit /B 1
)

popd

.\bin\AmosPreprocessor.exe
