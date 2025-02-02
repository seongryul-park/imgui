project "ImGui"
  kind "StaticLib"
  language "C++"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "imconfig.h",
        "imgui_tables.h",
        "imgui_tables.cpp",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }
    
	filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
        
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

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
