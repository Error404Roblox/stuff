-- [[ The Battle Bricks Combined Made by Anon (inspired by JKG and its team) ]] --
if game.PlaceId ~= 10834586502 then return end

getgenv().ProjectileAuraConfig = getgenv().ProjectileAuraConfig or {}
local Config = getgenv().ProjectileAuraConfig
Config.IHATEYOUSOMUCH = Config.IHATEYOUSOMUCH or { Enabled = true, Betty = true, Warhead = true }
Config.Theseshouldntbetargettedimo = Config.Theseshouldntbetargettedimo or { Enabled = true, Punishment = true, Bloodhorn = true }
Config.RandomizedProjectiles = { Enabled = true, List = {} }

if getgenv().ProjectileAuraLoaded then return end
getgenv().ProjectileAuraLoaded = true

-- Rayfield UI Setup (Moved to top so windows/tabs exist before listeners register)
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "The Battle Bricks Combined",
    LoadingTitle = ".......",
    LoadingSubtitle = "by Anon",
    ConfigurationSaving = { Enabled = false }
})







-- Content itself; Announcement tab
local AnnouncementsTab = Window:CreateTab("Announcements", 4483362458)
AnnouncementsTab:CreateSection("Project Information")
AnnouncementsTab:CreateParagraph({
    Title = "General Information",
    Content = "This project includes every single projectile in the TBB (The Battle Bricks) game. The UI has been streamlined to focus on performance and cleaner user preferences. Huge credit and regards to AbsolutelyNoldea for the inspiration, while the rest of the script and projectile remodeling work was proudly engineered by me and the team!"
})
AnnouncementsTab:CreateParagraph({
    Title = "Additional Information",
    Content = "Hiii! Anon is writing it. So I decided to combine these two scripts, with addition of my own features, into one script! YAY!"
})

AnnouncementsTab:CreateSection("Changelog")
AnnouncementsTab:CreateParagraph({
    Title = "Updates",
    Content = "Sorting Updates 1.0\n\nAwesome epik sauce addition of Anti Boss, Life Quality Features, and Settings... Yeah."
})

-- New Tab for Main Projectiles
local MainProjectilesTab = Window:CreateTab("Main projectiles", 4483362458)
MainProjectilesTab:CreateSection("Projectile Auras")

-- New Tab for Deleting Enemy Projectiles
local DeletEneProjTab = Window:CreateTab("DeleteEnemyProjectile", 4483362458)
DeletEneProjTab:CreateSection("Delete Enemy Projectiles")

local NeutralProjectilesTab = Window:CreateTab("Neutral Projectiles", 4483362458)
NeutralProjectilesTab:CreateSection("Neutral Projectiles")
NeutralProjectilesTab:CreateParagraph({
    Title = "Information",
    Content = "Heh. So, this is the part, where units and enemies use same type of projectiles. Example: Newell Battler."
})

-- New Automation Tab
local AutomationTab = Window:CreateTab("Automation", 4483362458)
AutomationTab:CreateSection("Slot & Economy Automation")

-- Anti Boss Tab
local AntiBossTab = Window:CreateTab("Anti Boss", 4483362458)
AntiBossTab:CreateParagraph({
    Title = "Information",
    Content = "This tab contains certain counters to the boss, so that you don't have to suffer. Subchapters are not included."
})

--Life Quality Features
local LQFTab = Window:CreateTab("Life Quality Features", 4483362458)
LQFTab:CreateParagraph({
    Title = "Information",
    Content = "'HOW TO COUNTER DEPRIVER BE LIKE:'"
})

-- Settings Tab
local SettingsTab = Window:CreateTab("Settings", 4483362458)
SettingsTab:CreateSection("Settings")

-- Services & Folders
local Workspace, RunService = game:GetService("Workspace"), game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local EnemyFolder = Workspace:WaitForChild("NPCFolders"):WaitForChild("EnemyFolder")
local ProjectileFolder = Workspace:WaitForChild("Projectile")

local trackedProjectiles, deletionProjectiles = {}, {}
local activeProjectileToggles = {}
local activeDeletionToggles = {}
local block, timerRemaining, isActive = nil, 0, false

-- Automation States
local spamSlotsEnabled = false
local autoBankEnabled = false
local slotList = {"Slot1", "Slot2", "Slot3", "Slot4", "Slot5", "Slot6", "Slot7", "Slot8"}
local individualSlotStates = {
    Slot1 = false,
    Slot2 = false,
    Slot3 = false,
    Slot4 = false,
    Slot5 = false,
    Slot6 = false,
    Slot7 = false,
    Slot8 = false
}

AutomationTab:CreateToggle({
    Name = "Spam All Slots",
    CurrentValue = false,
    Callback = function(state)
        spamSlotsEnabled = state
        Rayfield:Notify({
            Title = state and "Spam Enabled" or "Spam Disabled",
            Content = "Slot spamming is now " .. (state and "ON" or "OFF"),
            Duration = 2,
            Image = 4483362458
        })
    end
})

AutomationTab:CreateToggle({
    Name = "Auto Bank",
    CurrentValue = false,
    Callback = function(state)
        autoBankEnabled = state
        Rayfield:Notify({
            Title = state and "Auto Bank Enabled" or "Auto Bank Disabled",
            Content = "Auto bank upgrading is now " .. (state and "ON" or "OFF"),
            Duration = 2,
            Image = 4483362458
        })
    end
})

AutomationTab:CreateSection("--slot choice--")

for i = 1, 8 do
    local slotName = "Slot" .. i
    AutomationTab:CreateToggle({
        Name = "Spam slot " .. i,
        CurrentValue = false,
        Callback = function(state)
            individualSlotStates[slotName] = state
            Rayfield:Notify({
                Title = state and "Slot Enabled" or "Slot Disabled",
                Content = slotName .." spam is now " .. (state and "ON" or "OFF"),
                Duration = 2,
                Image = 4483362458
            })
        end
    })
end

local function GetValidEnemies()
    local list = {}
    for _, e in ipairs(EnemyFolder:GetChildren()) do
        local h, r = e:FindFirstChild("Humanoid"), e:FindFirstChild("HumanoidRootPart")
        if h and h.Health > 0 and r and not (Config.Theseshouldntbetargettedimo.Enabled and Config.Theseshouldntbetargettedimo[e.Name]) then table.insert(list, e) end
    end
    return list
end
-- Gets the enemy with the highest total health (MaxHealth + Health)
local function GetStrongestEnemy()
    local list = GetValidEnemies()
    if #list == 0 then return nil end

    local strongestEnemy = nil
    local maxHealth = -1

    for _, enemy in ipairs(list) do
        local humanoid = enemy:FindFirstChild("Humanoid")
        if humanoid then
            local totalHealth = humanoid.MaxHealth + humanoid.Health
            if totalHealth > maxHealth then
                maxHealth = totalHealth
                strongestEnemy = enemy
            end
        end
    end

    return strongestEnemy or list[1]
end
-- Gets the enemy with the lowest total health (MaxHealth + Health)
local function GetWeakestEnemy()
    local list = GetValidEnemies()
    if #list == 0 then return nil end

    local weakestEnemy = nil
    local minHealth = math.huge

    for _, enemy in ipairs(list) do
        local humanoid = enemy:FindFirstChild("Humanoid")
        if humanoid then
            local totalHealth = humanoid.MaxHealth + humanoid.Health
            if totalHealth < minHealth then
                minHealth = totalHealth
                weakestEnemy = enemy
            end
        end
    end

    return weakestEnemy or list[1]
end
-- Target on specific enemy if enabled, otherwise target strongest enemy
local function GetMainTarget()
    if Config.IHATEYOUSOMUCH.Enabled then
        for _, e in ipairs(EnemyFolder:GetChildren()) do
            if Config.IHATEYOUSOMUCH[e.Name] and e:FindFirstChild("Humanoid") and e.Humanoid.Health > 0 then return e end
        end
    end
    return GetStrongestEnemy()
end

local function IsTracked(p)
    return activeProjectileToggles[p.Name] or false
end

local function checkDeletion(p)
    if activeDeletionToggles[p.Name] then
        p.Anchored = true
        deletionProjectiles[p] = true
        return
    end
end
-- Setting up for a specific projectile
local function Setup(p)
    p.CanCollide, p.CanTouch, p.Massless, p.Transparency = false, true, true, 1
    p.AssemblyLinearVelocity = Vector3.zero
end

ProjectileFolder.ChildAdded:Connect(function(c)
    if not c:IsA("BasePart") and not c:IsA("MeshPart") then return end
    checkDeletion(c)
    if c.Name == "StoneFist" or c.Name == "Teapot" or c.Name == "FireTeapot" then
        if not block then block = Instance.new("Part", Workspace); block.Anchored, block.Transparency, block.Size, block.CFrame = true, 1, Vector3.new(6,6,6), CFrame.new(0, -0.25, 1.23) end
        timerRemaining, isActive = 0.8, true
    elseif IsTracked(c) then 
        Setup(c)
        trackedProjectiles[c] = true 
    end
end)
-- Populate trackedProjectiles and deletionProjectiles on script load
for _, v in ipairs(ProjectileFolder:GetChildren()) do 
    if v:IsA("BasePart") or v:IsA("MeshPart") then 
        checkDeletion(v)
        if IsTracked(v) then 
            Setup(v)
            trackedProjectiles[v] = true 
        end 
    end 
end

RunService.Heartbeat:Connect(function(dt)
    -- Spam Slots
    if spamSlotsEnabled then
        pcall(function()
            local playerSpawnEvent = ReplicatedStorage.Events.RemoteFunction.PlayerSpawn
            for _, slotName in ipairs(slotList) do
                task.spawn(function()
                    playerSpawnEvent:InvokeServer(slotName)
                end)
            end
        end)
    else
        pcall(function()
            local playerSpawnEvent = ReplicatedStorage.Events.RemoteFunction.PlayerSpawn
            for slotName, enabled in pairs(individualSlotStates) do
                if enabled then
                    task.spawn(function()
                        playerSpawnEvent:InvokeServer(slotName)
                    end)
                end
            end
        end)
    end
    -- Auto Bank
    if autoBankEnabled then
        pcall(function()
            local playerSpawnEvent = ReplicatedStorage.Events.RemoteFunction.PlayerSpawn
            task.spawn(function()
                playerSpawnEvent:InvokeServer("Bank")
            end)
        end)
    end
    -- Auto Delete EnemyProjectiles
    for p, _ in pairs(deletionProjectiles) do
        if p and p.Parent then
            if activeDeletionToggles[p.Name] then
                pcall(function()
                    p.CFrame += Vector3.new(0, -100, 0)
                end)
            else
                deletionProjectiles[p] = nil
            end
        else
            deletionProjectiles[p] = nil
        end
    end
    
    if isActive then timerRemaining -= dt; isActive = timerRemaining > 0 end
    -- Unit Projectiles tp to Enemy
    for obj, _ in pairs(trackedProjectiles) do
        if not obj or not obj.Parent then 
            trackedProjectiles[obj] = nil
        else
            if not activeProjectileToggles[obj.Name] then
                trackedProjectiles[obj] = nil
            else
                local target = GetMainTarget()
                if target and target:FindFirstChild("HumanoidRootPart") then 
                    obj.CFrame = target.HumanoidRootPart.CFrame 
                end
            end
        end
    end
end)

-- Populate Toggles inside Main Projectiles Tab (Sorted A to Z)
local projectileNamesList = {
    "Bacon", "Basketball", "Beer", "Bigfireball", "BigFireball", "BigIceball", "BigRocket", "BigStunpellet", "Brew", "CesusBomb", "Cesuspot", "Cola", "CrimsonBall", "Duck", "ElectricFist", "EvilDuck", "Fireball", "Goala", "Goobab", "Grenade", "Iceball", "Kunai", "LabTable", "LilCesuspot", "MagicBall", "Molotov", "NeonEvilDuck", "Noir", "NoirBiograft", "Paintball", "Pellet", "Puck", "Rocket", "Shuriken", "Soccerball", "SorcusBlade", "SorcusEgg", "Stunpellet", "Superball", "SuperSorcusBlade", "TumorePellet", "Volleyball", "WoodArrow"
}

table.sort(projectileNamesList)

for _, projName in ipairs(projectileNamesList) do
    activeProjectileToggles[projName] = true
    Config.RandomizedProjectiles.List[projName] = true
    
    MainProjectilesTab:CreateToggle({
        Name = projName,
        CurrentValue = true,
        Callback = function(state)
            activeProjectileToggles[projName] = state
            Config.RandomizedProjectiles.List[projName] = state
            
            for _, v in ipairs(ProjectileFolder:GetChildren()) do
                if (v:IsA("BasePart") or v:IsA("MeshPart")) and v.Name == projName then
                    if state then
                        Setup(v)
                        trackedProjectiles[v] = true
                    else
                        trackedProjectiles[v] = nil
                    end
                end
            end
            
            Rayfield:Notify({
                Title = state and "Projectile Enabled" or "Projectile Disabled",
                Content = projName .. " tracking is now " .. (state and "ON" or "OFF"),
                Duration = 2,
                Image = 4483362458
            })
        end
    })
end

-- Populate Toggles inside DeletEneProj Tab (Sorted A to Z)
local deletionProjectilesList = {
    "Arrow", "BloodStone", "BloodCrystal", "BigGhostwalker", "BigHellBall", "BigHellball", "Biggerrocket", "BiggerRocket", "ElectricRock", "EpicKatana", "EpicKunai", "Execnade", "ExplodeCannonBall", "Flashbang", "FreedomRocket", "Ghostwalker", "GlowBoxingGlove", "GrandPiano", "Hand", "HellHand", "Hellhand", "HellRocket", "Hellball", "Hellrocket", "HyperBomb", "Hyperlaser", "Ipecac", "LabTable", "Landmine", "LightBomb", "MisterSkull", "Paintnade", "Piano", "PirateJuice", "RainbowBomb", "Rock", "RottenEgg", "SmallStar", "SuperExplodeCannonBall", "SuperStar", "ThrowingAxe", "TinyBomb", "TNT", "TrollPie", "ZetaRocket", "ZombieBomb"
}

table.sort(deletionProjectilesList)

for _, delName in ipairs(deletionProjectilesList) do
    activeDeletionToggles[delName] = true
    
    DeletEneProjTab:CreateToggle({
        Name = delName,
        CurrentValue = true,
        Callback = function(state)
            activeDeletionToggles[delName] = state
            
            for _, v in ipairs(ProjectileFolder:GetChildren()) do
                if v:IsA("BasePart") or v:IsA("MeshPart") and v.Name == delName then
                    if state then
                        v.Anchored = true
                        deletionProjectiles[v] = true
                    else
                        deletionProjectiles[v] = nil
                    end
                end
            end
            
            Rayfield:Notify({
                Title = state and "Deletion Enabled" or "Deletion Disabled",
                Content = delName .. " auto-delete is now " .. (state and "ON" or "OFF"),
                Duration = 2,
                Image = 4483362458
            })
        end
    })
end
-- Anti Boss Tab
AntiBoss:CreateSection("CHRONOS")
AntiBoss:CreateParagraph({
    Title = "Projectiles",
    Content = "Teapot, FireTeapot, ...(TBA)"
})
-- Chronos
AntiBoss:CreateButton({
    Name = "Answer Clock",
    Callback = function()
    game:GetService("Players").LocalPlayer.PlayerGui.ClockQuiz.Answer:FireServer(true)
    end,
})
AntiBoss:CreateKeybind({
    Name = "Answer Clock Keybind",
    CurrentKeybind = "T",
    HoldToInteract = false,
    Flag = "Keybind1",
    Callback = function(Keybind)
    game:GetService("Players").LocalPlayer.PlayerGui.ClockQuiz.Answer:FireServer(true)
    end,
})

AntiBoss:CreateSection("FUNK1D")
AntiBoss:CreateParagraph({
    Title = "Projectiles",
    Content = "TBA"
})
_G.AutoShoot=false
_G.AutoShootK1d = false
_G.AutoShootFunK1d = false

--FUNK1D
AntiBoss:CreateToggle({
    Name = "Auto Shoot Target",
    CurrentValue = false,
    Flag = "AutoShoot1", 
    Callback = function(Value)
        _G.AutoShoot = Value 
       
        if _G.AutoShoot then
            -- Looping
            task.spawn(function()
                while _G.AutoShoot do
                    if workspace:FindFirstChild("Shootable") and workspace.Shootable:FindFirstChild("Target") then
                        game:GetService("Players").LocalPlayer.PlayerGui.CrosshairUI.ShootEvent:FireServer(workspace.Shootable.Target)
                    end
                   task.wait(0.1) 
                end
            end)
        end
    end,
})
AntiBoss:CreateToggle({
    Name = "Auto Shoot Target K1d",
    CurrentValue = false,
    Flag = "AutoShootK1dFlag", 
    Callback = function(Value)
        _G.AutoShootK1d = Value
       
        if _G.AutoShootK1d then
            task.spawn(function()
                while _G.AutoShootK1d do
                    local shootable = workspace:FindFirstChild("Shootable")
                    if shootable then
                        local targetK1d = shootable:FindFirstChild("TargetK1d")
                        if targetK1d and targetK1d:FindFirstChild("Target") then
                            game:GetService("Players").LocalPlayer.PlayerGui.CrosshairUI.ShootEvent:FireServer(targetK1d.Target)
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end,
})
AntiBoss:CreateToggle({
    Name = "Auto Shoot FunK1d",
    CurrentValue = false,
    Flag = "AutoShootFunK1dFlag", 
    Callback = function(Value)
        _G.AutoShootFunK1d = Value
       
        if _G.AutoShootFunK1d then
            task.spawn(function()
                while _G.AutoShootFunK1d do
                    local shootable = workspace:FindFirstChild("Shootable")
                    if shootable then
                        local funK1d = shootable:FindFirstChild("FunK1d")
                        if funK1d and funK1d:FindFirstChild("HumanoidRootPart") then
                            game:GetService("Players").LocalPlayer.PlayerGui.CrosshairUI.ShootEvent:FireServer(funK1d.HumanoidRootPart)
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end,
})

AntiBoss:CreateSection("GAMERK1D")
AntiBoss:CreateParagraph({
    Title = "Projectiles",
    Content = "Hyperlaser, Ghostwalker, BigGhostwalker, Duck, EvilDuck, NeonEvilDuck (last 3 doesnt works)"
})
-- GamerK1d
AntiBoss:CreateButton({
    Name = "Anti GameOver (i think you should do this during last heart. idk.)",
    Callback = function()
    game:GetService("Players").LocalPlayer.PlayerGui.FunGui.SuccessEvent:FireServer(true)
    end,
})
AntiBoss:CreateKeybind({
    Name = "Anti GameOver Keybind",
    CurrentKeybind = "Y",
    HoldToInteract = false,
    Flag = "Keybind1", -- A flag is the identifier for the configuration file. Make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Keybind)
    game:GetService("Players").LocalPlayer.PlayerGui.FunGui.SuccessEvent:FireServer(true)
    end,
})

AntiBoss:CreateSection("Lichen")
AntiBoss:CreateParagraph({
    Title = "Projectiles",
    Content = "TBA"
})
_G.AutoShootBush = false

-- Lichen
AntiBoss:CreateToggle({
    Name = "Auto Shoot Tree Bush",
    CurrentValue = false,
    Flag = "AutoShootBushFlag", 
    Callback = function(Value)
        _G.AutoShootBush = Value
       
        if _G.AutoShootBush then
            task.spawn(function()
                while _G.AutoShootBush do
                    local shootable = workspace:FindFirstChild("Shootable")
                    if shootable then
                        local tree = shootable:FindFirstChild("Tree")
                        if tree and tree:FindFirstChild("Bush") then
                            game:GetService("Players").LocalPlayer.PlayerGui.CrosshairUI.ShootEvent:FireServer(tree.Bush)
                        end
                    end
                   
                    task.wait(0.1)
                end
            end)
        end
    end,
})

AntiBoss:CreateSection("MORTIS")
AntiBoss:CreateParagraph({
    Title = "Information",
    Content = "Look. You'd better have 60 FPS to counter EVERY single projectiles of Mortis, because task.wait() depends on your FPS."
})
AntiBoss:CreateParagraph({
    Title = "Projectiles",
    Content = "ZombieBomb, SorcusEgg, SorcusBlade(Not Recommended To Enable), SuperSorcusBlade, BigStar, SuperStar(Maybe will conflict with Ivory's projectile)"
})
_G.AutoCounterSorcusBlades = false
_G.AutoCounterStarBalls = false
_G.AutoCounterCores = false
_G.AutoCounterMonitors = false

-- Mortis
AntiBoss:CreateToggle({
    Name = "Auto Counter Sorcus Blades",
    CurrentValue = false,
    Flag = "AutoCounterBladesFlag", 
    Callback = function(Value)
        _G.AutoCounterSorcusBlades = Value
       
        if _G.AutoCounterSorcusBlades then
            task.spawn(function()
                while _G.AutoCounterSorcusBlades do
                    local shootable = workspace:FindFirstChild("Shootable")
                    if shootable then
                        --local sorcusBlade = shootable:FindFirstChild("SorcusBlade")
                        --if sorcusBlade then
                            -- Click on the projectile
                        --    game:GetService("Players").LocalPlayer.PlayerGui.CrosshairUI.ShootEvent:FireServer(sorcusBlade)
                        --end
                        local sorcusBlade = shootable:WaitForChild("SorcusBlade")
                        if sorcusBlade then
                            -- Click on the projectile
                            game:GetService("Players").LocalPlayer.PlayerGui.CrosshairUI.ShootEvent:FireServer(sorcusBlade)
                        end
                    end
                    
                    task.wait(0.05)
                end
            end)
        end
    end,
})
AntiBoss:CreateToggle({
    Name = "Auto Counter Star Balls (Big + Super)",
    CurrentValue = false,
    Flag = "AutoCounterStarsFlag", 
    Callback = function(Value)
        _G.AutoCounterStarBalls = Value
       
        if _G.AutoCounterStarBalls then
            task.spawn(function()
                while _G.AutoCounterStarBalls do
                    local shootable = workspace:FindFirstChild("Shootable")
                    if shootable then
                        local big = shootable:FindFirstChild("BigStar")
                        local super = shootable:FindFirstChild("SuperStar")
                        if big then
                            -- Click on the projectile
                            game:GetService("Players").LocalPlayer.PlayerGui.CrosshairUI.ShootEvent:FireServer(big)
                        end
                        if super then
                            -- Click on the projectile
                            game:GetService("Players").LocalPlayer.PlayerGui.CrosshairUI.ShootEvent:FireServer(super)
                        end
                    end
                    task.wait(0.1)
                end
            end)
        end
    end,
})
AntiBoss:CreateToggle({
    Name = "Auto Counter Cores (maybe works)",
    CurrentValue = false,
    Flag = "AutoCounterCoresFlag", 
    Callback = function(Value)
        _G.AutoCounterCores = Value
       
        if _G.AutoCounterCores then
            task.spawn(function()
                while _G.AutoCounterCores do
                    local shootable = workspace:FindFirstChild("Shootable")
                    if shootable then
                        local core = shootable.Core:FindFirstChild("CoreInside")
                        if core then
                            -- Click on the projectile
                            game:GetService("Players").LocalPlayer.PlayerGui.CrosshairUI.ShootEvent:FireServer(core)
                        end
                    end
                    task.wait(0.05)
                end
            end)
        end
    end,
})
AntiBoss:CreateToggle({
    Name = "Auto Counter Monitors",
    CurrentValue = false,
    Flag = "AutoCounterMonitorsFlag", 
    Callback = function(Value)
        _G.AutoCounterMonitors = Value
       
        if _G.AutoCounterMonitors then
            task.spawn(function()
                while _G.AutoCounterMonitors do
                    local shootable = workspace:FindFirstChild("Shootable")
                    if shootable then
                        local monitor = shootable:FindFirstChild("Monitor")
                        if monitor then
                            -- Click on the projectile
                            game:GetService("Players").LocalPlayer.PlayerGui.CrosshairUI.ShootEvent:FireServer(monitor)
                        end
                    end
                    task.wait(0.05)
                end
            end)
        end
    end,
})


LQFTab:CreateSection("Miscellaneous")
LQFTab:CreateButton({
    Name = "Boost FPS on the current stage (deletes decorations)",
    Callback = function()
    workspace.Map.Battle_AllanHQ.Decoration:Destroy()
    end,
})

_G.BlockRemoteOnly = false 
-- Delta Block
if not hookmetamethod then
    return warn("❌ Executor don't have hook method")
end

local oldNamecall
if not oldNamecall then
    oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()
        
        if method == "FireServer" and self.Name == "RemoteEvent" then
            if self.Parent and self.Parent.Name == "ChustUI" then
                if _G.BlockRemoteOnly then
                    return nil
                end
            end
        end
        
        return oldNamecall(self, ...)
    end)
end
LQFTab:CreateToggle({
    Name = "Anti Depriver (Block ChustUI RemoteEvent)",
    CurrentValue = false,
    Flag = "BlockChustUIDelta", 
    Callback = function(Value)
        _G.BlockRemoteOnly = Value
        print(_G.BlockRemoteOnly and "🚫 Enable Remote Blocking" or "🟢 Disable Remote Blocking")
    end,
})

