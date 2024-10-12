local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("TITLE", "GrapeTheme")


local Gun = Window:NewTab("Gun Modded")
local GunmodsSection = Gun:NewSection("> Overpower Gun <")

GunmodsSection:NewToggle("Infinite Ammo v1", "?", function(v)
    game:GetService("ReplicatedStorage").wkspc.CurrentCurse.Value = v and "Infinite Ammo" or ""
end)

local SettingsInfinite = false
GunmodsSection:NewToggle("Infinite Ammo v2", "?", function(K)
    SettingsInfinite = K
    if SettingsInfinite then
        game:GetService("RunService").Stepped:connect(function()
            pcall(function()
                if SettingsInfinite then
                    local playerGui = game:GetService("Players").LocalPlayer.PlayerGui
                    playerGui.GUI.Client.Variables.ammocount.Value = 99
                    playerGui.GUI.Client.Variables.ammocount2.Value = 99
                end
            end)
        end)
    end
end)

local originalValues = { -- saves/stores the original Values of the gun value :3
    FireRate = {},
    ReloadTime = {},
    EReloadTime = {},
    Auto = {},
    Spread = {},
    Recoil = {}
}

GunmodsSection:NewToggle("Fast Reload", "?", function(x)
    for _, v in pairs(game.ReplicatedStorage.Weapons:GetChildren()) do
        if v:FindFirstChild("ReloadTime") then
            if x then
                if not originalValues.ReloadTime[v] then
                    originalValues.ReloadTime[v] = v.ReloadTime.Value
                end
                v.ReloadTime.Value = 0.01
            else
                if originalValues.ReloadTime[v] then
                    v.ReloadTime.Value = originalValues.ReloadTime[v]
                else
                    v.ReloadTime.Value = 0.8 
                end
            end
        end
        if v:FindFirstChild("EReloadTime") then
            if x then
                if not originalValues.EReloadTime[v] then
                    originalValues.EReloadTime[v] = v.EReloadTime.Value
                end
                v.EReloadTime.Value = 0.01
            else
                if originalValues.EReloadTime[v] then
                    v.EReloadTime.Value = originalValues.EReloadTime[v]
                else
                    v.EReloadTime.Value = 0.8 
                end
            end
        end
    end
end)

GunmodsSection:NewToggle("Fast Fire Rate", "?", function(state)
    for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
        if v.Name == "FireRate" or v.Name == "BFireRate" then
            if state then
                if not originalValues.FireRate[v] then
                    originalValues.FireRate[v] = v.Value
                end
                v.Value = 0.02
            else
                if originalValues.FireRate[v] then
                    v.Value = originalValues.FireRate[v]
                else
                    v.Value = 0.8 
                end
            end
        end
    end
end)

GunmodsSection:NewToggle("Always Auto", "?", function(state)
    for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do
        if v.Name == "Auto" or v.Name == "AutoFire" or v.Name == "Automatic" or v.Name == "AutoShoot" or v.Name == "AutoGun" then
            if state then
                if not originalValues.Auto[v] then
                    originalValues.Auto[v] = v.Value
                end
                v.Value = true
            else
                if originalValues.Auto[v] then
                    v.Value = originalValues.Auto[v]
                else
                    v.Value = false 
                end
            end
        end
    end
end)

GunmodsSection:NewToggle("No Spread", "?", function(state)
    for _, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetDescendants()) do
        if v.Name == "MaxSpread" or v.Name == "Spread" or v.Name == "SpreadControl" then
            if state then
                if not originalValues.Spread[v] then
                    originalValues.Spread[v] = v.Value
                end
                v.Value = 0
            else
                if originalValues.Spread[v] then
                    v.Value = originalValues.Spread[v]
                else
                    v.Value = 1 
                end
            end
        end
    end
end)

GunmodsSection:NewToggle("No Recoil", "?", function(state)
    for _, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetDescendants()) do
        if v.Name == "RecoilControl" or v.Name == "Recoil" then
            if state then
                if not originalValues.Recoil[v] then
                    originalValues.Recoil[v] = v.Value
                end
                v.Value = 0
            else
                if originalValues.Recoil[v] then
                    v.Value = originalValues.Recoil[v]
                else
                    v.Value = 1 
                end
            end
        end
    end
end)

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.P, function()
	Library:ToggleUI()
end)
