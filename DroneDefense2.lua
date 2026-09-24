if game.PlaceId ~= 138884751515999 then return end

-- Rayfield UI Setup (Moved to top so windows/tabs exist before listeners register)
---@diagnostic disable-next-line: deprecated
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "Drone Defense 2",
    LoadingTitle = ".......",
    LoadingSubtitle = "by Anon",
    ConfigurationSaving =  {
                             Enabled = true,
                             FileName = "DD2Configs"}
})
-- Folders
local Workspace, RunService = game:GetService("Workspace"), game:GetService("RunService")
local RS = game:GetService("ReplicatedStorage")
local Functions = RS:FindFirstChild("Functions")
local Events = RS:FindFirstChild("Events")

--Flags
_G.AutoUseSD = false
_G.SDinput = 150

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
            print("Supply Drop delay set to:", number)
        else
            warn("Invalid Supply Drop delay:", Text)
        end
    end
})

-- Auto Supply Drop
MainTab:CreateToggle({
    Name = "Auto Use Supply Drop",
    CurrentValue = false,
    Flag = "AutoUseSD",

    Callback = function(Value)
        _G.AutoUseSD = Value

        if not Value then
            print("Auto Supply Drop disabled.")
            return
        end

        print("Auto Supply Drop enabled.")

        task.spawn(function()
            while _G.AutoUseSD do
                local Event = Functions:FindFirstChild("UsePerk")

                if Event then
                    local success, err = pcall(function()
                        Event:InvokeServer("Supply Drop")
                    end)

                    if success then
                        print("Supply Drop was used.")
                    else
                        warn("Supply Drop error:", err)
                    end
                else
                    warn("UsePerk RemoteFunction not found.")
                end

                task.wait(_G.SDinput or 150)
            end

            print("Auto Supply Drop loop stopped.")
        end)
    end,
})

-- Settings Tab
local SettingsTab = Window:CreateTab({"Settings", 4483362458})

SettingsTab:CreateButton({
    Name = "Dex++",
    Callback = function()
        ---@diagnostic disable-next-line: deprecated
        loadstring(game:HttpGet("https://github.com/AZYsGithub/DexPlusPlus/releases/latest/download/out.lua"))()
    end,
})
