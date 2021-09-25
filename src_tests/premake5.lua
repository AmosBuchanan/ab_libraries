project "TestPreprocessor"
	kind "ConsoleApp"
	targetname "testpreprocessor"
	language "C++"	
	cppdialect "C++17"
	staticruntime "on"

	files 
	{ 
		workspacepath .. "{%prj.location}/test_preprocessor.cpp",
	}

	defines
	{
	}

	includedirs 
	{ 
		"%{prj.location}/include/", 
	 }

	links
	{}

	filter "platforms:Linux64"
		system "Linux"
		systemversion "latest"
		architecture "x86_64"
		defines { "_LINUX" }
		prebuildcommands { "rm %{prj.location}/*Generated*", "%{cfg.targetdir}/preprocessor %{prj.location} Generatedtest_preprocessor" }

	filter "platforms:Linux32"
		system "Linux"
		systemversion "latest"
		architecture "x86"
		defines { "_LINUX" }
		prebuildcommands { "%{cfg.targetdir}/preprocessor %{prj.location} Generatedtest_preprocessor" }

	filter "platforms:Arm"
		system "Linux"
		systemversion "latest"
		architecture "x86"
		defines { "_LINUX" }
		prebuildcommands { "%{cfg.targetdir}/preprocessor %{prj.location} Generatedtest_preprocessor" }

	filter "platforms:Win64"
		system "Windows"
		systemversion "latest"
		architecture "x86_64"
		defines { "_WINDOWS" }
		prebuildcommands { "%{cfg.targetdir}\\preprocessor.exe %{prj.location} Generatedtest_preprocessor" }

	filter "platforms:Win32"
		system "Windows"
		systemversion "latest"
		architecture "x86"
		defines { "_WINDOWS" }
		prebuildcommands { "%{cfg.targetdir}\\preprocessor.exe %{prj.location} Generatedtest_preprocessor" }

	filter "configurations:Debug"
		defines { "DEBUG" }
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		defines { "NDEBUG" }
		runtime "Release"
		optimize "On"

