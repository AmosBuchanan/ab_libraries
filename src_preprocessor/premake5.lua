project "AmosPreprocessor"
	kind "ConsoleApp"
	targetname "preprocessor"
	language "C++"	
	cppdialect "C++17"
	staticruntime "on"
	compilationunitenabled ( true )

	files
	{ 
		workspacepath .. "%{prj.location}/ab_preprocessor.cpp",
	}

	defines
	{}

	includedirs 
	{
		"%{wks.location}/include",
		"%{wks.location}/tools/stb"
    }

	links
	{	}

	filter "platforms:Linux64"
		system "Linux"
		systemversion "latest"
		architecture "x86_64"
		defines { "_LINUX" }

	filter "platforms:Linux32"
		system "Linux"
		systemversion "latest"
		architecture "x86"
		defines { "_LINUX" }

	filter "platforms:Arm"
		system "Linux"
		systemversion "latest"
		architecture "x86"
		defines { "_LINUX" }

	filter "platforms:Win32"
		system "Windows"
		architecture "x86"
		systemversion "latest"
		defines { "_WINDOWS" }

	filter "platforms:Win64"
		system "Windows"
		architecture "x86_64"
		systemversion "latest"
		defines { "_WINDOWS" }

	filter "configurations:Debug"
		defines { "DEBUG" }
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		defines { "NDEBUG" }
		runtime "Release"
		optimize "On"

