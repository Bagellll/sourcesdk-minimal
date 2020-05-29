local current_dir = _SCRIPT_DIR

function IncludeSDKMathlib()
	local refcount = IncludePackage("sdkmathlib")

	local _project = project()

	sysincludedirs(current_dir .. "/../public/mathlib")
	links("mathlib")

	if refcount == 1 then
		include(current_dir .. "/premake5_create_project.lua")
		project(_project.name)
	end
end