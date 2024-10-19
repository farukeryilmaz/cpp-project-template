workspace "MyProject"
    configurations { "Debug", "Release" }
    architecture "x86_64"
    flags { "MultiProcessorCompile" }
    location "MyProject"
	
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "MyProject"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"
    location "MyProject/MyProject"
	
    targetdir ("bin/%{outputdir}")
    objdir ("bin-int/%{outputdir}")
	
    files {
        "src/**.hpp",
        "src/**.cpp"
    }
	
    includedirs {
        "vendor/asio/asio/include",
        "vendor/spdlog/include"
    }
	
    defines { "ASIO_STANDALONE" }
	
    filter "configurations:Debug"
        defines { "SV_DEBUG" }
        symbols "On"
    
    filter "configurations:Release"
        defines { "SV_RELEASE" }
        optimize "On"
    
    filter "system:windows"
        systemversion "latest"
        defines { "_WIN32_WINNT=0x0601" }
		
    filter "system:linux"
        links { "pthread" }
		
    filter "system:macosx"
        defines { "_DARWIN_C_SOURCE" }
		
project "MyProjectTests"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"
    location "MyProject/MyProjectTests"
	
    targetdir ("bin/%{outputdir}")
    objdir ("bin-int/%{outputdir}")
	
    files {
        "tests/**.hpp",
        "tests/**.cpp",
        "vendor/googletest/googletest/src/gtest-all.cc",
        "vendor/googletest/googletest/src/gtest_main.cc"
    }
	
    includedirs {
        "vendor/googletest/googletest/include",
		"vendor/googletest/googletest",
        "vendor/asio/asio/include",
        "vendor/spdlog/include",
        "src"
    }
	
    links {
        "MyProject"
    }
	
    filter "configurations:Debug"
        defines { "SV_DEBUG" }
        symbols "On"
    
    filter "configurations:Release"
        defines { "SV_RELEASE" }
        optimize "On"
    
    filter "system:windows"
        systemversion "latest"
        defines { "_WIN32_WINNT=0x0601" }
		
    filter "system:linux"
        links { "pthread" }
		
    filter "system:macosx"
        defines { "_DARWIN_C_SOURCE" }