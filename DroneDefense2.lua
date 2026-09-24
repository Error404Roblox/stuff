if game.PlaceId ~= 138884751515999 then return end

-- Rayfield UI Setup (Moved to top so windows/tabs exist before listeners register)
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    name = "Drone Defense 2",
    subtitle = "by Anon",
    sidebarLayout = true,
    theme = "cobalt",
    ConfigurationSaving =  {
                             Enabled = true,
                             FileName = "DD2Configs"}
})
-- Folders
local Workspace, RunService = game:GetService("Workspace"), game:GetService("RunService")
local RS = game:GetService("ReplicatedStorage")
local Functions = RS:WaitForChild("Functions")
local Events = RS:WaitForChild("Events")

--Flags
_G.AutoUseSD = false
_G.SDinput = nil

-- Content itself; Announcement tab
local AnnouncementsTab = Window:CreateTab("Announcements", 4483362458)
AnnouncementsTab:CreateSection("Project Information")
AnnouncementsTab:CreateParagraph({
    Title = "General Information",
    Content = "First time doing it..."
})

-- Main Tab
local MainTab = Window:CreateTab({"Main Functions", 4483362458})

MainTab:CreateSection("Main Features")

-- Supply Drop delay input
--[[MainTab:CreateInput({
    Name = "Use Supply Drop every...",
    CurrentValue = "150",
    PlaceholderText = "<x> second(s)",
    RemoveTextAfterFocusLost = false,
    Flag = "SDinput",

    Callback = function(Text)
        local number = tonumber(Text)

        if number and number > 0 then
            _G.SupplyDropDelay = number
        end
    end
})]]--

-- Auto Supply Drop
MainTab:CreateToggle({
    Name = "Auto Use Supply Drop",
    CurrentValue = false,
    Flag = "AutoUseSD",

    Callback = function(Value)
        _G.AutoUseSD = Value
        --_G.SupplyDropDelay = nil

        MainTab:CreateInput({
            Name = "Use Supply Drop every...",
            CurrentValue = "150",
            PlaceholderText = "<x> second(s)",
            RemoveTextAfterFocusLost = false,
            Flag = "SDinput",

            Callback = function(Text)
                local number = tonumber(Text)

                if number and number > 0 then
                    _G.SDinput = number
                end
            end,
        })
        if not Value then
            return
        end

        task.spawn(function()
            while _G.AutoUseSD do
                local Event = Functions:WaitForChild("UsePerk")

                pcall(function()
                    Event:InvokeServer("Supply Drop")
                    print("Supply Drop was used.")
                end)
                task.wait(_G.SDinput)
            end
        end)
        print("AutoUseSD is ready.")
    end,
})

-- Settings Tab
local SettingsTab = Window:CreateTab({"Settings", 4483362458})

SettingsTab:CreateButton({
    Name = "Dex++",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/AZYsGithub/DexPlusPlus/releases/latest/download/out.lua"))()
    end,
})
