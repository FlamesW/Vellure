-- // ~YBA Anti Cheat~
local cloneref = (cloneref or clonereference or function(instance: any)
    return instance
end)

local Players = cloneref(game:GetService("Players"));
local LocalPlayer = Players.LocalPlayer

local Required = {
    hookmetamethod,
    hookfunction,
    getrawmetatable,
    newcclosure,
    getnamecallmethod,
}

for i, v in ipairs(Required) do
    if type(v) ~= "function" then
		LocalPlayer:Kick("Sorry, Your executor does not support Anti Cheat Bypass, Try a diffrent one");
        return
    end
end

if not shared.AntiCheatBypass then shared.AntiCheatBypass = true;
    local OldNamecallTP;
    OldNamecallTP = hookmetamethod(game, '__namecall', newcclosure(function(self, ...)
        local Arguments = { ... }
        local Method = getnamecallmethod()

        if Method == "InvokeServer" and Arguments[1] == "idklolbrah2de" then
            return "  ___XP DE KEY"
        end

        if (Method == "FireServer" or Method == "InvokeServer" or Method == "InvokeClient") and Arguments[1] == "Reset" then
            return task.wait(9e9);
        end

        return OldNamecallTP(self, ...)
    end))

    local Modified =  LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position
    local OldItemIndex

    OldItemIndex = hookfunction(getrawmetatable(Modified).__index, function(self, key)
        if self == Modified then
            if getcallingscript().Name == "ItemSpawn" and key:lower() == "magnitude" then
                return 0
            end
        end

        return OldItemIndex(self, key)
    end)
 
    local OldClockIndex
    OldClockIndex = hookmetamethod(game, "__index", newcclosure(function(self, Key, ...)
        if shared.AntiVampireBurn == true and Key == "ClockTime" then
            return 0
        end
        return OldClockIndex(self, Key, ...)
    end))

	-- // Vellure Instance Detector~
	if (Library and Library:InstanceExist()) then
        Library:Notify("✓ Anti Cheat Loaded Successfully~", 1);
	else
		warn("✓ Anti Cheat Loaded Successfully~");
	end
end
