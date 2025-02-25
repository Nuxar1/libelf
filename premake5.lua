project "libelf"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
    {
        "lib/32.fsize.c",
        "lib/32.getehdr.c",
        "lib/32.getphdr.c",
        "lib/32.getshdr.c",
        "lib/32.newehdr.c",
        "lib/32.newphdr.c",
        "lib/32.xlatetof.c",
        "lib/64.xlatetof.c",
        "lib/assert.c",
        "lib/begin.c",
        "lib/checksum.c",
        "lib/cntl.c",
        "lib/cook.c",
        "lib/data.c",
        "lib/end.c",
        "lib/errmsg.c",
        "lib/errno.c",
        "lib/fill.c",
        "lib/flag.c",
        "lib/gelfehdr.c",
        "lib/gelfphdr.c",
        "lib/gelfshdr.c",
        "lib/gelftrans.c",
        "lib/getarhdr.c",
        "lib/getarsym.c",
        "lib/getbase.c",
        "lib/getdata.c",
        "lib/getident.c",
        "lib/getscn.c",
        "lib/hash.c",
        "lib/input.c",
        "lib/kind.c",
        "lib/memset.c",
        "lib/ndxscn.c",
        "lib/newdata.c",
        "lib/newscn.c",
        "lib/next.c",
        "lib/nextscn.c",
        "lib/nlist.c",
        "lib/opt.delscn.c",
        "lib/rand.c",
        "lib/rawdata.c",
        "lib/rawfile.c",
        "lib/strptr.c",
        "lib/swap64.c",
        "lib/update.c",
        "lib/verdef_32_tof.c",
        "lib/verdef_32_tom.c",
        "lib/verdef_64_tof.c",
        "lib/verdef_64_tom.c",
        "lib/version.c",
        "lib/x.elfext.c",
        "lib/x.movscn.c",
        "lib/x.remscn.c",
	}

	includedirs 
	{
		"lib/",
	}
	externalincludedirs 
	{
		"lib/",
	}

    defines
    {
        "__LIBELF_INTERNAL__",
        "HAVE_CONFIG_H",
    }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
