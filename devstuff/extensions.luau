-- // Extra environment that I can't do in C++ will appear here.

local _getgenv = getgenv();
local _getrenv = getrenv();

local _cheatname = identifyexecutor();
local _gettenv = clonefunction(gettenv);
local _getreg = clonefunction(getreg);
local _setidentity = clonefunction(setidentity);
local _cloneref = clonefunction(cloneref);
local _loadstring = clonefunction(loadstring);

-- // local _require = clonefunction(_getrenv.require);
-- // local _pcall = clonefunction(_getrenv.pcall);

-- // Function
_getgenv.getsenv = newcclosure(function(scr)
    for _, v in pairs(_getreg()) do
        if type(v) == "function" then
            local env = getfenv(v)
            if env and env.script == scr then
                return env
            end
        end
    end
end)

--[[
_getgenv.require = newcclosure(function(script)
    local old_identity = _setidentity(2)
    local success, result = _pcall(_require, script)
    _setidentity(old_identity)
    assert(success, result)

    return result
end)
]]--

_getgenv.getscripthash = function(instance)
    assert(typeof(instance) == "Instance", "invalid argument #1 to 'getscripthash' (Instance expected, got " .. typeof(instance) .. ")", 2)
    assert(instance:IsA("LuaSourceContainer"), "invalid argument #1 to 'getscripthash' (LuaSourceContainer expected, got " .. instance.ClassName .. ")", 2)
    return instance:GetHash()
end

-- // rconsole library
_getgenv.rconsolename = function()
    return nil
end

_getgenv.rconsoleclear = function()
    return nil
end

_getgenv.rconsoleinput = function()
    return nil
end

_getgenv.rconsoledestroy = function()
    return nil
end

_getgenv.rconsolecreate = function()
    return nil
end

_getgenv.rconsoleprint = function()
    return nil
end

-- // aliases
_getgenv.dumpstring = _getgenv.getscripthash

consoleprint = _getgenv.rconsoleprint
consoleclear = _getgenv.rconsoleclear
consoledestroy = _getgenv.rconsoledestroy 
consolecreate = _getgenv.rconsolecreate
consoleinput = _getgenv.rconsoleinput
consolesettitle = _getgenv.rconsolename
