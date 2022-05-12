include "tools/premake/premake-compilationunit/compilationunit.lua"

workspace "AmosLibraries"
	startproject "AmosLibraryTests"
	configurations {"Debug", "Release"}
	platforms { "Linux64", "Linux32", "Win64", "Win32", "Arm" }

	outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
	workspacepath = "%{wks.abspath}"

	targetdir ("%{wks.location}/bin/" .. outputdir)
	objdir ("%{wks.location}/obj/" .. outputdir)

	includedirs
	{
		"%{wks.location}/include",
	}
		
	links
	{}

	libdirs 
	{}

	filter "platforms:Linux"
		system "linux"
		architecture "x86_64"
		defines { "_LINUX", "COMPILER_LLVM" }
		toolset "clang"

	filter "platforms:Win64"
		system "windows"
		architecture "x86_64"
		defines { "_WINDOWS", "COMPILER_MSVC" }

	filter "configurations:Debug"
		defines { "_DEBUG" }
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		defines { "_RELEASE" }
		runtime "Release"
		symbols "Off"
		optimize "On"

group "Dependencies"
group ""

include "src_tests"
