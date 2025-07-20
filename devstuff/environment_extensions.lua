-- // Extra environment that I can't do in C++ will appear here.
local _getgenv = getgenv();
local _getrenv = getrenv();

local _cheatname = identifyexecutor();
local _gettenv = clonefunction(gettenv);
local _getreg = clonefunction(getreg);
local _setidentity = clonefunction(setidentity);
local _cloneref = clonefunction(cloneref);
local _loadstring = clonefunction(loadstring);

local _require = clonefunction(_getrenv.require);
local _pcall = clonefunction(_getrenv.pcall);

if _cheatname:find("Frostware Gen X") then
    -- // I will add sum codes here incase something bad happened
elseif _cheatname:find("Hybrid") then
    -- // Hybrid is so cool
end

-- // function
_getgenv.getscriptclosure = newcclosure(function(_targetScript)
    for _, _regEntry in pairs(_getreg()) do
        if type(_regEntry) == "table" then
            for _, _funcEntry in pairs(_regEntry) do
                if type(_funcEntry) == "function" then
                    local _env = getfenv(_funcEntry)
                    if _env and rawget(_env, "script") == _targetScript then
                        return _funcEntry
                    end
                end
            end
        end
    end
end)

_getgenv.getscripthash = newcclosure(function(instance)
    assert(typeof(instance) == "Instance", "invalid argument #1 to 'getscripthash' (Instance expected, got " .. typeof(instance) .. ")", 2)
    assert(instance:IsA("LuaSourceContainer"), "invalid argument #1 to 'getscripthash' (LuaSourceContainer expected, got " .. instance.ClassName .. ")", 2)
    return instance:GetHash()
end)

-- // aliases
_getgenv.dumpstring = _getgenv.getscripthash
_getgenv.getscriptfunction = _getgenv.getscriptclosure
