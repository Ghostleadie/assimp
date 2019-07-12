project "assimp"
    kind "StaticLib"
    language "C++"
	cppdialect "C++17"
    staticruntime "On"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "include/assimp/**.h",
		"include/assimp/**.h.in",
		"include/assimp/**.cpp",
		"include/assimp/Compiler/**.h",
		"code/Obj/**.h",
		"code/Obj/**.cpp",
		"code/CApi/**.h",
		"code/CApi/**.cpp",
		"code/Common/**.h",
		"code/Common/**.cpp"
    }
    
	includedirs
	{
		"include"
	}
	
	filter "system:windows"
        systemversion "latest"
		
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
		