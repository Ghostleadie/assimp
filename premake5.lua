project "Assimp"
	kind "StaticLib"
	location "build/"
	defines {
		"ASSIMP_BUILD_NO_C4D_IMPORTER", -- Cinema4D is MSVC only and needs some weird headers to work
		"OPENDDL_STATIC_LIBARY",
	}
	files {
		"assimp/code/**.cpp",
		"assimp/code/**.h",
		"assimp/contrib/irrXML/*.cpp",
		"assimp/contrib/irrXML/*.h",
		"assimp/contrib/unzip/*.c",
		"assimp/contrib/unzip/*.h",
		"assimp/contrib/zlib/*.c",
		"assimp/contrib/openddlparser/code/*.cpp",
		"assimp/contrib/poly2tri/poly2tri/**.cc",
		"assimp/contrib/clipper/*.cpp",
	}
	includedirs {
		"assimp/include/",
		"assimp/contrib/irrXML/",
		"assimp/contrib/rapidjson/include/",
		"assimp/contrib/openddlparser/include/",
		"assimp/contrib/unzip/",
		"assimp/",
		"zlib/",
	}
	removefiles {
		"assimp/code/Importer/IFC/IFCReaderGen_4.*",
	}

	filter "system:windows"
		buildoptions {
			"/bigobj",
		}
		defines {
			"_CRT_SECURE_NO_WARNINGS",
		}
		disablewarnings {
			"4065",
		}
		