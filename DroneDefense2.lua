if game.PlaceId ~= 138884751515999 then return end

-- Rayfield UI Setup (Moved to top so windows/tabs exist before listeners register)
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    name = "Codename: Script",
    subtitle = "by Anon",
    sidebarLayout = true,
    theme = "cobalt",
    ConfigurationSaving =  {
                             Enabled = true,
                             FileName = "TBBConfigs"}
})
_G.AutoUseSD = false

-- Content itself; Announcement tab
local AnnouncementsTab = Window:CreateTab(name = "Announcements", icon = 4483362458)
AnnouncementsTab:CreateSection("Project Information")
AnnouncementsTab:CreateParagraph({
    Title = "General Information",
    Content = "First time doing it..."
})

local MainTab=Windows:CreateTab(name = "Main Functions", icon = 4483362458)
MainTab:CreateSection("Main features")
MainTab:CreateToggle({
    Name = "Auto Use Supply Drop",
    CurrentValue = false,
    Flag = "AutoUseSD", 
    Callback = function(Value)
        _G.AutoUseSD = Value 
       
        local Input = Tab:CreateInput({
            Name = "Use Supply Drop in ...",
            CurrentValue = "150",
            PlaceholderText = "<x> second(s)",
            RemoveTextAfterFocusLost = false,
            Flag = "SDinput",
            Callback = function(Text)
            -- The function that takes place when the input is changed
            -- The variable (Text) is a string for the value in the text box
            if _G.AutoUseSD then
                -- Looping
                task.spawn(function()
                    while _G.AutoUseSD do
                        local Event = game:GetService("ReplicatedStorage").Functions.UsePerk
                        if Event then
                            Event:InvokeServer("Supply Drop")
                        end
                    task.wait(Text) 
                    end
                end)
            end
        end,
        })
    end,
})

local SettingsTab=Window:CreateTab(name = "Settings", icon = 4483362458)
SettingsTab:CreateButton({
    Name = "Dex++",
    Callback = function()
    loadstring(Game:HttpGet("https://github.com/AZYsGithub/DexPlusPlus/releases/latest/download/out.lua"))()
    end,
})
