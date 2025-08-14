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

local _players = cloneref(game:GetService("Players"))

if _cheatname:find("Frostware Gen X") then
    -- # I will add sum codes here incase something bad happened
elseif _cheatname:find("Hybrid") then
    -- # Hybrid is so cool
end

-- # function
-- # FUCK I BROKE THIS IN C++
_getgenv.getloadedmodules = newcclosure(function()
    local t = {}
    for _, v in pairs(getinstances()) do
        if v:IsA("ModuleScript") then
            table.insert(t, v)
        end
    end
    return t
end)

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

-- # will this work?.. ( will convert to c++ later )
-- # functions below are from ballistic
-- # credits to ballistic <3
_getgenv.gethiddenproperty = newcclosure(function(inst, idx)
    assert(typeof(inst) == "Instance", "invalid argument #1 to 'gethiddenproperty' [Instance expected]", 2)
    local was = isscriptable(inst, idx)
    setscriptable(inst, idx, true)

    local val = inst[idx]
    setscriptable(inst, idx, was)

    return val, not was
end)

_getgenv.sethiddenproperty = newcclosure(function(inst, idx, val)
    assert(typeof(inst) == "Instance", "invalid argument #1 to 'sethiddenproperty' [Instance expected]", 2)
    local was = isscriptable(inst, idx)
    setscriptable(inst, idx, true)

    inst[idx] = val

    setscriptable(inst, idx, was)

    return not was
end)

_getgenv.getrunningscripts = newcclosure(function()
    local t = {}
    for _, v in ipairs(_players.LocalPlayer:GetDescendants()) do
        if v:IsA("LocalScript") or v:IsA("ModuleScript") then
            table.insert(t, v)
        end
    end
    return t
end)

-- # aliases
_getgenv.getscripts = _getgenv.getrunningscripts
_getgenv.set_hidden_property = _getgenv.sethiddenproperty
_getgenv.get_hidden_property = _getgenv.gethiddenproperty
_getgenv.dumpstring = _getgenv.getscripthash
_getgenv.getscriptfunction = _getgenv.getscriptclosure
