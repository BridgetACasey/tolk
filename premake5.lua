project "Tolk"
    kind "StaticLib"
    language "C++"

	targetdir ("build/" .. outputdir .. "/%{prj.name}")
    objdir ("build-int/" .. outputdir .. "/%{prj.name}")

	filter "system:windows"
        systemversion "latest"
        staticruntime "on"
 
    libdirs
	{
		"libs/x64",
		"libs/x86"
	}

    defines
    {
        "_EXPORTING"
    }

	files
	{
        "src/**.h",
        "src/**.cpp",
        "src/**.c"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"