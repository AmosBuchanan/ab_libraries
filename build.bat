@echo off
set OUTPUTDIR=bin\Debug
set BUILDDIR=obj

call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvars64.bat"

del /S /Q %OUTPUTDIR% >NUL
del /S /Q %BUILDDIR% >NUL
mkdir %OUTPUTDIR% >NUL
mkdir %BUILDDIR% >NUL

.\AmsPreprocessor\bin\AmsPreprocessor.exe

rem  cl /c /ZI /JMC /nologo /W3 /WX- /diagnostics:classic /sdl /Od /D _DEBUG /D _LIB /D _UNICODE /D UNICODE /Gm- /EHsc /RTC1 /MDd /GS /fp:precise /permissive- /Zc:wchar_t /Zc:forScope /Zc:inline /Yc"pch.h" /Fp"%BUILDDIR%\AMSCONTROLLIBRARY.PCH" /Fo"%BUILDDIR%\\" /Fd"%BUILDDIR%\AMSCONTROLLIBRARY.PDB" /Gd /TP /FC AMSCONTROLLIBRARY\PCH.CPP

set WARNOPTIONS=/W3 /WX
set COMMONCOMPILEROPTIONS=/c /ZI /JMC /nologo %WARNOPTIONS%  /diagnostics:classic /sdl /Od /D _DEBUG /D _LIB /D _UNICODE /D UNICODE /D INTEGRATED_SUIT /Gm- /EHsc /RTC1 /MDd /GS /fp:precise /permissive- /Zc:wchar_t /Zc:forScope /Zc:inline /Gd /TP /FC /I"common" /I"include"
cl %COMMONCOMPILEROPTIONS% /I"include" /Fp"%BUILDDIR%\AMSCONTROLLIBRARY.PCH" /Fo"%BUILDDIR%\\" /Fd"%BUILDDIR%\AMSCONTROLLIBRARY.PDB" AMSCONTROLLIBRARY\src\AmsControl.cpp
lib /OUT:"%OUTPUTDIR%\AmsControlLibrary.lib" /NOLOGO /MACHINE:X64 %BUILDDIR%\AmsControl.obj

cl %COMMONCOMPILEROPTIONS% /Fo"%BUILDDIR%\\" /Fd"%BUILDDIR%\VC141.PDB" AMSSIMPLEWRAPPER\AMSSIMPLEWRAPPER.CPP

rem link.exe /ERRORREPORT:PROMPT /OUT:"%OUTPUTDIR%\AmsSimpleWrapper.exe" /NOLOGO /LIBPATH:"lib" /LTCG libczmq.lib libzmq-mt-s-4_3_3.lib Iphlpapi.lib Ws2_32.lib Rpcrt4.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /MANIFEST /MANIFESTUAC:"level='asInvoker' uiAccess='false'" /manifest:embed /DEBUG:FASTLINK /PDB:"%OUTPUTDIR%\AmsSimpleWrapper.pdb" /SUBSYSTEM:CONSOLE /TLBID:1 /DYNAMICBASE /NXCOMPAT /NODEFAULTLIB:"libcmt.lib" /IMPLIB:"%OUTPUTDIR%\AmsSimpleWrapper.lib" /MACHINE:X64 %BUILDDIR%\AmsSimpleWrapper.obj "%OUTPUTDIR%\AmsControlLibrary.lib"

rem Test Console Interface needs fixing for use in further testing.
rem cl %COMMONCOMPILEROPTIONS%  /Fo"%BUILDDIR%\\" /Fd"%BUILDDIR%\\amsconsoleinterface.PDB" AMSCONSOLEINTERFACE\AMSCONSOLEINTERFACE.CPP

rem link.exe /ERRORREPORT:PROMPT /OUT:"%OUTPUTDIR%\Amsconsoleinterface.exe" /NOLOGO /LIBPATH:"lib" /LTCG libczmq.lib libzmq-mt-s-4_3_3.lib Iphlpapi.lib Ws2_32.lib Rpcrt4.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /MANIFEST /MANIFESTUAC:"level='asInvoker' uiAccess='false'" /manifest:embed /DEBUG:FASTLINK /PDB:"%OUTPUTDIR%\Amsconsoleinterface.pdb" /SUBSYSTEM:CONSOLE /TLBID:1 /DYNAMICBASE /NXCOMPAT /NODEFAULTLIB:"libcmt.lib" /IMPLIB:"%OUTPUTDIR%\Amsconsoleinterface.lib" /MACHINE:X64 %BUILDDIR%\Amsconsoleinterface.obj

rem cl /permissive- /GS /GL /W3 /Gy %WARNOPTIONS% /Zc:wchar_t /Zi /Gm- /O2 /sdl /Fd"%BUILDDIR%\adsmockhardware.pdb" /Zc:inline /fp:precise /D "NDEBUG" /D "MOCKHARDWARE_EXPORTS" /D "_WINDOWS" /D "_USRDLL" /D "_WINDLL" /D "_UNICODE" /D "UNICODE" /errorReport:prompt /Zc:forScope /Gd /Oi /LDd /MDd /FC /Fa"%BUILDDIR%/" /EHsc /nologo /Fo"%BUILDDIR%/" /DLL /Fp"%BUILDDIR%\AdsMockHardware.pch" /diagnostics:classic AdsMockHardware\AdsMockHardware.cpp
cl %COMMONCOMPILEROPTIONS% /Fo"%BUILDDIR%\\" /Fd"%BUILDDIR%\\AdsMockHardware.pdb" /Fp"%BUILDDIR%\AdsMockHardware.pch" /D "_USRDLL" /D "_WINDLL" /DLL  AdsMockHardware\AdsMockHardware.cpp

