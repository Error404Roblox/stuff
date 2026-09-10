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
    Content = "Hiii! Anon is writing it. So I decided to combine these two scripts, with addition of my own features, into one script! And it has to be op."
})

AnnouncementsTab:CreateSection("Changelog")
AnnouncementsTab:CreateParagraph({
    Title = "Updates",
    Content = "Sorting Updates 1.0\n\nAwesome epik sauce addition of Anti Boss, Life Quality Features, and Settings... Yeah."
})
AnnouncementsTab:CreateParagraph({
    Title = "Update 1.1",
    Content = "Health and Status bars are added! Also BoostFPS now should work properly."
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
    Title = "PLAYER:",
    Content = "HOW TO COUNTER DEPRIVER !!!!!!!!"
})

-- Settings Tab
local SettingsTab = Window:CreateTab("Settings", 4483362458)
SettingsTab:CreateSection("Settings")

-- Services & Folders
local Workspace, RunService = game:GetService("Workspace"), game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local FriendlyFolder = Workspace:WaitForChild("NPCFolders"):WaitForChild("FriendlyFolder")
local EnemyFolder = Workspace:WaitForChild("NPCFolders"):WaitForChild("EnemyFolder")
local ProjectileFolder = Workspace:WaitForChild("Projectile")
local BaseFolder = Workspace:WaitForChild("NPCFolders"):WaitForChild("BaseFolder")

local trackedProjectiles, deletionProjectiles, neutralProjectiles = {}, {}, {}
local activeProjectileToggles = {}
local activeDeletionToggles = {}
local activeNeutralToggles = {}
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
            Content = "Slot Spamming is now " .. (state and "ON" or "OFF"),
            Duration = 2,
            Image = 4483362458
        })
    end
})

AutomationTab:CreateToggle({
    Name = "Auto Bank (+ Smart Detonator)",
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
        Name = "Spam Slot " .. i,
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
	end

	if activeNeutralToggles[p.Name] then
		p.Anchored = true
		neutralProjectiles[p] = true
	end
end
-- Setting up for a specific projectile
local function Setup(p)
    p.CanCollide, p.CanTouch, p.Massless, p.Transparency = false, true, true, 1
    p.AssemblyLinearVelocity = Vector3.zero
end

ProjectileFolder.ChildAdded:Connect(function(c)
    if not c:IsA("BasePart") then return end
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
    if v:IsA("BasePart") then 
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
    local base = BaseFolder:FindFirstChild("Blue Base")
    if base then
        local timerValue = base:GetAttribute("Timer")
        local playerSpawnEvent = ReplicatedStorage.Events.RemoteFunction.PlayerSpawn
        
        if autoBankEnabled and timerValue == nil then
            pcall(function()
                task.spawn(function()
                    playerSpawnEvent:InvokeServer("Bank")
                end)
            end)
        elseif autoBankEnabled and timerValue then
            if timerValue == 0 then
                pcall(function()
                    playerSpawnEvent:InvokeServer("Bank")
                end)
            end
        end
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
    -- Auto Delete NeutralProjectiles
    for p, _ in pairs(neutralProjectiles) do
        if p and p.Parent then
            if activeNeutralToggles[p.Name] then
                pcall(function()
                    p.CFrame += Vector3.new(0, -100, 0)
                end)
            else
                neutralProjectiles[p] = nil
            end
        else
            neutralProjectiles[p] = nil
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
    "Bacon", "Basketball", "Beer", "Bigfireball", "BigFireball", "BigIceball", "BigRocket", "BigStunpellet", "Brew", "CesusBomb", "Cesuspot", "Cola", "CrimsonBall", "Duck", "ElectricFist", "ElectricRock", "EvilDuck", "Fireball", "Goala", "Goobab", "Grenade", "Iceball", "Kunai", "LabTable", "LilCesuspot", "MagicBall", "Molotov", "NeonEvilDuck", "Noir", "NoirBiograft", "Paintball", "Pellet", "Puck", "Rocket", "Shuriken", "Soccerball", "SorcusBlade", "SorcusEgg", "Stunpellet", "Superball", "SuperSorcusBlade", "TumorePellet", "Volleyball", "WoodArrow"
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
                if v:IsA("BasePart") and v.Name == projName then
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
                Image = 14030922776
            })
        end
    })
end

-- Populate Toggles inside DeletEneProj Tab (Sorted A to Z)
local deletionProjectilesList = {
    "Arrow", "BigGhostwalker", "BigHellBall", "BigHellball", "Biggerrocket", "BiggerRocket", "EpicKatana", "EpicKunai", "Execnade", "ExplodeCannonBall", "Flashbang", "FreedomRocket", "Ghostwalker", "GlowBoxingGlove", "GrandPiano", "Hand", "HellHand", "Hellhand", "HellRocket", "Hellball", "Hellrocket", "HyperBomb", "Hyperlaser", "Ipecac", "LabTable", "Landmine", "LightBomb", "MisterSkull", "Paintnade", "Piano", "PirateJuice", "RainbowBomb", "Rock", "RottenEgg", "SmallStar", "SuperExplodeCannonBall", "SuperStar", "SuperSpam", "ThrowingAxe", "TinyBomb", "TNT", "ZetaRocket", "ZombieBomb"
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
                if v:IsA("BasePart") and v.Name == delName then
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
                Image = 8275803737
            })
        end
    })
end

-- DeleteProjectile but now they're neutral
local NdeletionProjectilesList = {
    "BloodStone", "BloodCrystal", "Teapot", "FireTeapot", "Spam", "TrollPie"
}

table.sort(NdeletionProjectilesList)

for _, dellName in ipairs(NdeletionProjectilesList) do
    activeNeutralToggles[dellName] = true
    
    NeutralProjectilesTab:CreateToggle({
        Name = dellName,
        CurrentValue = true,
        Callback = function(state)
            activeNeutralToggles[dellName] = state
            
            for _, v in ipairs(ProjectileFolder:GetChildren()) do
                if (v:IsA("BasePart") or v:IsA("MeshPart")) and v.Name == dellName then
                    if state then
                        v.Anchored = true
                        neutralProjectiles[v] = true
                    else
                        neutralProjectiles[v] = nil
                    end
                end
            end
            
            Rayfield:Notify({
                Title = state and "Neutral Projectiles Enabled" or "Neutral Projectiles Disabled",
                Content = dellName .. " neutral projectiles is now " .. (state and "ON" or "OFF"),
                Duration = 2,
                Image = 8275803737
            })
        end
    })
end

-- Anti Boss Tab
AntiBossTab:CreateSection("CHAPTER 4")
AntiBossTab:CreateParagraph({
    Title = "Chronos; Projectiles",
    Content = "Teapot, FireTeapot, CesusBomb, Cesuspot"
})
-- Chronos
--- Answer The Clock
AntiBossTab:CreateButton({
    Name = "Answer Clock",
    Callback = function()
    game:GetService("Players").LocalPlayer.PlayerGui.ClockQuiz.Answer:FireServer(true)
    end,
})
AntiBossTab:CreateKeybind({
    Name = "Answer Clock Keybind",
    CurrentKeybind = "T",
    HoldToInteract = false,
    Flag = "Keybind1",
    Callback = function(Keybind)
    game:GetService("Players").LocalPlayer.PlayerGui.ClockQuiz.Answer:FireServer(true)
    end,
})

AntiBossTab:CreateSection("CHAPTER 5")
AntiBossTab:CreateParagraph({
    Title = "FUNK1D; Projectiles",
    Content = "TBA"
})
_G.AutoShoot=false
_G.AutoShootK1d = false
_G.AutoShootFunK1d = false

--FUNK1D
--- Auto shoot Target
AntiBossTab:CreateToggle({
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
--- Auto Shoot Target K1D
AntiBossTab:CreateToggle({
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
--- Auto shoot FUNK1D
AntiBossTab:CreateToggle({
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

AntiBossTab:CreateParagraph({
    Title = "GAMERK1D; Projectiles",
    Content = "Hyperlaser, Ghostwalker, BigGhostwalker, BloodStone, NeonEvilDuck (last doesnt works)"
})
-- GamerK1d
AntiBossTab:CreateButton({
    Name = "Anti GameOver (i think you should do this during last heart. idk.)",
    Callback = function()
    game:GetService("Players").LocalPlayer.PlayerGui.FunGui.SuccessEvent:FireServer(true)
    end,
})
AntiBossTab:CreateKeybind({
    Name = "Anti GameOver Keybind",
    CurrentKeybind = "Y",
    HoldToInteract = false,
    Flag = "Keybind1", -- A flag is the identifier for the configuration file. Make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Keybind)
    game:GetService("Players").LocalPlayer.PlayerGui.FunGui.SuccessEvent:FireServer(true)
    end,
})
--- Anti GameOver
AntiBossTab:CreateToggle({
   Name = "Anti GameOver",
   CurrentValue = false,
   Flag = "AntiGameOverToggle", 
   Callback = function(Value)
       _G.AntiGameOver = Value
       
       if _G.AntiGameOver then
           task.spawn(function()
               while _G.AntiGameOver do
                   local funGui = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("FunGui")
                   if funGui and funGui:FindFirstChild("SuccessEvent") then
                       funGui.SuccessEvent:FireServer(true)
                   end
                   task.wait(0.5) 
               end
           end)
       end
   end,
})

AntiBossTab:CreateParagraph({
    Title = "Lichen; Projectiles",
    Content = "Spam, ...(TBA)"
})
_G.AutoShootBush = false

-- Lichen
--- Auto Shoot TreeBush
AntiBossTab:CreateToggle({
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

AntiBossTab:CreateParagraph({
    Title = "MORTIS; Information",
    Content = "Look. You'd better have 60 FPS to counter EVERY single projectiles of Mortis, because task.wait() depends on your FPS. Another thing: DO NOT 3* MORTIS. Otherwise everyone will think about you as exploiter. Just letting you know about common sense, but you can ignore this warning."
})
AntiBossTab:CreateParagraph({
    Title = "Projectiles",
    Content = "ZombieBomb, SorcusEgg, SuperSpam, SorcusBlade, SuperSorcusBlade, BigStar, SuperStar(Maybe will conflict with Ivory's projectile)"
})
_G.AutoCounterSorcusBlades = false
_G.AutoCounterStarBalls = false
_G.AutoCounterCores = false
_G.AutoCounterMonitors = false

-- Mortis
--- Anti Sorcus Blades
AntiBossTab:CreateToggle({
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
                        local sorcusBlade = shootable:FindFirstChild("SorcusBlade")
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
--- Anti Star Balls
AntiBossTab:CreateToggle({
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
--- Counter Cores
AntiBossTab:CreateToggle({
    Name = "Auto Counter Cores (doesnt works)",
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
                            local shield = core:FindFirstChild("Shield")
                            if shield then
                                game:GetService("Players").LocalPlayer.PlayerGui.CrosshairUI.ShootEvent:FireServer(shield)
                            end
                        end
                    end
                    task.wait(0.05)
                end
            end)
        end
    end,
})
--- Anti Monitors
AntiBossTab:CreateToggle({
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
_G.AutoBoostFPS=false;
_G.BlockRemoteOnly = false 
_G.Healthbar=false
_G.Status=false

local decorationConnection

--[[LQFTab:CreateButton({
    Name = "Boost FPS",
    Callback = function()
        -- Remove previous connection
		if decorationConnection then
			decorationConnection:Disconnect()
			decorationConnection = nil
		end

		if not Value then
			return
		end

		local map = workspace:WaitForChild("Map")

		local function checkObject(obj)
			if obj.Name == "Decoration" and obj:IsA("Folder") then
				obj:Destroy()
			end
		end

		-- Remove existing Decorations
		for _, obj in ipairs(map:GetDescendants()) do
			checkObject(obj)
		end

		-- Remove Decorations added later
		decorationConnection = map.DescendantAdded:Connect(checkObject)
    end,
})]]--

--[[LQFTab:CreateToggle({
	Name = "Auto BoostFPS (Removes Decorations)",
	CurrentValue = false,
	Flag = "AutoBoostFPSFlag",

	Callback = function(Value)
		_G.AutoBoostFPS = Value

		-- Remove previous connection
		if decorationConnection then
			decorationConnection:Disconnect()
			decorationConnection = nil
		end

		if not Value then
			return
		end

		local map = workspace:WaitForChild("Map")

		local function checkObject(obj)
			if obj.Name == "Decoration" and obj:IsA("Folder") then
				obj:Destroy()
			end
		end

		-- Remove existing Decorations
		for _, obj in ipairs(map:GetDescendants()) do
			checkObject(obj)
		end

		-- Remove Decorations added later
		decorationConnection = map.DescendantAdded:Connect(checkObject)
        taskSpawn(function()
            while _G.AutoBoostFPS do
                for _, obj in ipairs(map:GetDescendants()) do
                    checkObject(obj)
                end
                task.wait(1) -- Check every second
            end
        end)
	end,
})
]]--
-- Auto BoostFPS
LQFTab:CreateToggle({
    Name = "Auto BoostFPS (Removes Decorations)",
    CurrentValue = false,
    Flag = "AutoBoostFPSFlag",

    Callback = function(Value)
        _G.AutoBoostFPS = Value

        if not Value then
            return
        end

        task.spawn(function()
            local map = workspace:WaitForChild("Map")

            while _G.AutoBoostFPS do
                for _, obj in ipairs(map:GetDescendants()) do
                    if obj.Name == "Decoration" and obj:IsA("Folder") then
                        obj:Destroy()
                    end
                end
                task.wait(1)
            end
        end)
    end,
})

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
-- Anti Depriver
LQFTab:CreateToggle({
    Name = "Anti Depriver (Block ChustUI RemoteEvent)",
    CurrentValue = false,
    Flag = "BlockChustUIDelta", 
    Callback = function(Value)
        _G.BlockRemoteOnly = Value
        print(_G.BlockRemoteOnly and "🚫 Enable Remote Blocking" or "🟢 Disable Remote Blocking")
        Rayfield:Notify({
            Title = Value and "Enabled" or "Disabled",
            Content = "Anti-Raigbaiter has been " .. (Value and "enabled" or "disabled") .. ".",
            Duration = 5,
            Image = 133168476746555
        })
    end,
})
-- Healthbar
LQFTab:CreateToggle({
    Name = "Healthbar",
    CurrentValue = false,
    Flag = "HealthbarFlag",
    Callback = function(Value)
    _G.Healthbar = Value

    Rayfield:Notify({
        Title = Value and "Enabled" or "Disabled",
        Content = "Healthbar has been " .. (Value and "enabled" or "disabled") .. ".",
        Duration = 5,
        Image = 10850711054
    })
    --Healthbar itself
    local Players = game:GetService("Players")

    _G.HealthbarData = _G.HealthbarData or {
        tracked = {},
        connections = {}
    }

    local data = _G.HealthbarData
    local tracked = data.tracked
    local connections = data.connections

    local BAR_WIDTH_PX = 130
    local BAR_HEIGHT_PX = 14
    local BAR_Y_OFFSET = 2.2

    local COLOR_BG = Color3.fromRGB(15, 15, 20)
    local COLOR_HP = Color3.fromRGB(0, 220, 220)
    local COLOR_ENEMYHP = Color3.fromRGB(224, 162, 99)
    local COLOR_DAMAGE = Color3.fromRGB(255, 70, 70)
    local COLOR_TEXT = Color3.fromRGB(255, 255, 255)

    --cleanup
    local function cleanup()
            -- Disconnect all global connections
            for _, connection in ipairs(connections) do
                if connection then
                    connection:Disconnect()
                end
            end

            table.clear(connections)

            -- Destroy all health bars
            for model, info in pairs(tracked) do
                if info.gui then
                    info.gui:Destroy()
                end

                tracked[model] = nil
            end
        end

        -- If disabling, clean everything and stop here
        if not Value then
            cleanup()
            return
        end
        -- New healthbar
        local function makeBar(model)
            if not Value then
                return
            end

            if tracked[model] then
                return
            end

            local root = model:FindFirstChild("HumanoidRootPart")
            local humanoid = model:FindFirstChildOfClass("Humanoid")

            if not root or not humanoid then
                return
            end

            local bb = Instance.new("BillboardGui")
            bb.Name = "SF2HealthBar"
            bb.Adornee = root
            bb.Size = UDim2.fromOffset(BAR_WIDTH_PX, BAR_HEIGHT_PX)
            bb.StudsOffset = Vector3.new(0, BAR_Y_OFFSET, 0)
            bb.AlwaysOnTop = true
            bb.LightInfluence = 0
            bb.MaxDistance = 100
            bb.Parent = root

            local bg = Instance.new("Frame")
            bg.Size = UDim2.fromScale(1, 1)
            bg.BackgroundColor3 = COLOR_BG
            bg.BorderSizePixel = 0
            bg.Parent = bb

            local bgCorner = Instance.new("UICorner")
            bgCorner.CornerRadius = UDim.new(0, 5)
            bgCorner.Parent = bg

            local clip = Instance.new("Frame")
            clip.Size = UDim2.fromScale(1, 1)
            clip.BackgroundTransparency = 1
            clip.BorderSizePixel = 0
            clip.ClipsDescendants = true
            clip.Parent = bg

            local clipCorner = Instance.new("UICorner")
            clipCorner.CornerRadius = UDim.new(0, 5)
            clipCorner.Parent = clip

            -- Red "damage" bar
            local damageFill = Instance.new("Frame")
            damageFill.Size = UDim2.fromScale(1, 1)
            damageFill.BackgroundColor3 = COLOR_DAMAGE
            damageFill.BorderSizePixel = 0
            damageFill.Parent = clip

            -- Current HP bar
            local parentFolder = model.Parent

            local hpFill = Instance.new("Frame")
            hpFill.Size = UDim2.fromScale(1, 1)
            --hpFill.BackgroundColor3 = COLOR_HP
            if parentFolder == FriendlyFolder then
                hpFill.BackgroundColor3 = COLOR_HP
            elseif parentFolder == EnemyFolder then
                hpFill.BackgroundColor3 = COLOR_ENEMYHP
            end
            hpFill.BorderSizePixel = 0
            hpFill.Parent = clip

            local shine = Instance.new("Frame")
            shine.Size = UDim2.new(1, 0, 0, 2)
            shine.BackgroundColor3 = Color3.new(1, 1, 1)
            shine.BackgroundTransparency = 0.75
            shine.BorderSizePixel = 0
            shine.Parent = hpFill

            local txt = Instance.new("TextLabel")
            txt.Size = UDim2.fromScale(1, 1)
            txt.BackgroundTransparency = 1
            txt.Font = Enum.Font.GothamBold
            txt.TextScaled = true
            txt.TextColor3 = COLOR_TEXT
            txt.TextStrokeTransparency = 0
            txt.ZIndex = 5
            txt.Parent = bb

            local lastHealth = humanoid.Health

            local DAMAGE_DELAY = 1.2
            local DAMAGE_DRAIN_TIME = 0.9
            local damageToken = 0

            tracked[model] = {
                gui = bb,
                humanoid = humanoid
            }

            local function update()
                if not Value then
                    return
                end

                if not model.Parent or not humanoid.Parent then
                    return
                end

                local maxHealth = math.max(humanoid.MaxHealth, 1)
                local health = math.max(humanoid.Health, 0)
                local ratio = math.clamp(health / maxHealth, 0, 1)

                txt.Text = string.format(
                    "%d / %d",
                    math.floor(health),
                    math.floor(maxHealth)
                )

                hpFill.Size = UDim2.new(ratio, 0, 1, 0)

                -- Health decreased
                if health < lastHealth then
                    damageToken += 1

                    local myToken = damageToken
                    local targetRatio = ratio

                    task.spawn(function()
                        task.wait(DAMAGE_DELAY)

                        if not Value then
                            return
                        end

                        if myToken ~= damageToken then
                            return
                        end

                        if damageFill.Parent then
                            damageFill:TweenSize(
                                UDim2.new(targetRatio, 0, 1, 0),
                                Enum.EasingDirection.Out,
                                Enum.EasingStyle.Quint,
                                DAMAGE_DRAIN_TIME,
                                true
                            )
                        end
                    end)

                -- Health increased
                elseif health > lastHealth then
                    damageToken += 1

                    hpFill.Size = UDim2.new(ratio, 0, 1, 0)
                    damageFill.Size = UDim2.new(ratio, 0, 1, 0)
                end

                lastHealth = health
            end

            update()

            local healthConnection = humanoid.HealthChanged:Connect(update)

            local ancestryConnection = model.AncestryChanged:Connect(function()
                if not model.Parent then
                    if tracked[model] then
                        if tracked[model].gui then
                            tracked[model].gui:Destroy()
                        end

                        tracked[model] = nil
                    end

                    healthConnection:Disconnect()
                    ancestryConnection:Disconnect()
                end
            end)
        end
        -- Find models
        local function scanModel(model)
            if not Value then
                return
            end

            if tracked[model] then
                return
            end

            if not model:IsA("Model") then
                return
            end

            local humanoid = model:FindFirstChildOfClass("Humanoid")
            local root = model:FindFirstChild("HumanoidRootPart")

            if humanoid and root then
                makeBar(model)
            end
        end
        -- Check for existing NPCs
        for _, obj in ipairs(workspace:GetDescendants()) do
            if obj:IsA("Model")
                and obj:FindFirstChildOfClass("Humanoid")
                and obj:FindFirstChild("HumanoidRootPart") then

                -- Don't put healthbars on player characters here
                if not Players:GetPlayerFromCharacter(obj) then
                    scanModel(obj)
                end
            end
        end
        -- New npcs
        table.insert(
            connections,
            workspace.DescendantAdded:Connect(function(obj)
                if not Value then
                    return
                end

                if not obj:IsA("Model") then
                    return
                end

                task.delay(0.5, function()
                    if not Value or not obj.Parent then
                        return
                    end

                    local humanoid = obj:FindFirstChildOfClass("Humanoid")
                    local root = obj:FindFirstChild("HumanoidRootPart")

                    if humanoid and root then
                        if not Players:GetPlayerFromCharacter(obj) then
                            scanModel(obj)
                        end
                    end
                end)
            end)
        )
    end
})
-- Status Bar
LQFTab:CreateToggle({
    Name = "Status Bar",
    CurrentValue = false,
    Flag = "StatusFlag",

    Callback = function(Value)
        _G.Status = Value

        Rayfield:Notify({
            Title = Value and "Enabled" or "Disabled",
            Content = "Status Bar has been " .. (Value and "enabled" or "disabled") .. ".",
            Duration = 5,
            Image = 10850711054
        })

        local Players = game:GetService("Players")

        -- data
        _G.StatusData = _G.StatusData or {
            tracked = {},
            connections = {}
        }

        local data = _G.StatusData
        local tracked = data.tracked
        local connections = data.connections

        -- settings
        local STATUS_WIDTH = 130
        local STATUS_HEIGHT = 18
        local STATUS_BAR_HEIGHT = 32

        -- This is the important part:
        -- Healthbar has its own BillboardGui.
        -- Statusbar gets its own BillboardGui.
        --
        -- A larger Y offset puts Statusbar ABOVE Healthbar.
        local STATUS_Y_OFFSET = 3.4
        local STATUS_GAP = 3

        local STATUS_BG = Color3.fromRGB(15, 15, 20)

        -- Colors
        local RESISTANCE_COLOR = Color3.fromRGB(171, 255, 35)
        local ARMOR_COLOR = Color3.fromRGB(255, 255, 255)

        local FIRERATE_COLOR = Color3.fromRGB(255, 220, 0)
        local DAMAGE_COLOR = Color3.fromRGB(255, 60, 60)
        local RANGE_COLOR = Color3.fromRGB(0, 255, 255)
        local REGEN_COLOR = Color3.fromRGB(0, 255, 0)
        local FIRE_COLOR = Color3.fromRGB(255, 99, 0)
        local HELLFIRE_COLOR = Color3.fromRGB(166, 0, 0)
        local BLIND_COLOR = Color3.fromRGB(255, 255, 255)
        local STUN_COLOR = Color3.fromRGB(0, 132, 255)
        local TRIP_COLOR = Color3.fromRGB(222, 215, 0)
        local BOUNTY_COLOR = Color3.fromRGB(255, 255, 255)

        local COLAs_COLOR = Color3.fromRGB(176, 101, 9)
        local ICEs_COLOR = Color3.fromRGB(55, 172, 250)
        local BREW_COLOR = Color3.fromRGB(34, 150, 1)

        -- Textures
        local SHIELD_TEXTURE = "rbxassetid://11322093465"

        local FIRERATE_TEXTURE = "rbxassetid://483225199"
        local DAMAGE_TEXTURE = "rbxassetid://8897806060"
        local RANGE_TEXTURE = "rbxassetid://10164277616"
        local REGEN_TEXTURE = "rbxassetid://104560409730225"
        local FIRE_TEXTURE = "rbxassetid://14502433595"
        local HELLFIRE_TEXTURE = "rbxassetid://18255006123"
        local BLIND_TEXTURE = "rbxassetid://13492317602"
        local STUN_TEXTURE = "rbxassetid://78228042889080"
        local SUPERSTUN_TEXTURE = "rbxassetid://90612620710655"
        local TRIP_TEXTURE = "rbxassetid://9657499712"
        local BOUNTY_TEXTURE = "rbxassetid://12771100740"

        local SLOWNESS_TEXTURE = "rbxassetid://13492313545"
        local VULNERABLE_TEXTURE = "rbxassetid://90784857801052"
        

        -- cleaning
        local function cleanup()
            -- Disconnect global connections
            for _, connection in ipairs(connections) do
                if connection then
                    connection:Disconnect()
                end
            end

            table.clear(connections)

            -- Destroy status bars
            for model, info in pairs(tracked) do
                if info.gui then
                    info.gui:Destroy()
                end

                tracked[model] = nil
            end
        end

        if not Value then
            cleanup()
            return
        end


        -- Creation of status bar
        local function makeStatusBar(model)

            if not Value then
                return
            end

            if tracked[model] then
                return
            end

            local root = model:FindFirstChild("HumanoidRootPart")
            local torso = model:FindFirstChild("Torso")

            if not root or not torso then
                return
            end



            local bb = Instance.new("BillboardGui")
            bb.Name = "SF2StatusBar"
            bb.Adornee = root
            bb.Size = UDim2.fromOffset(
                STATUS_WIDTH,
                STATUS_BAR_HEIGHT
            )
            bb.StudsOffset = Vector3.new(
                0,
                STATUS_Y_OFFSET,
                0
            )

            bb.AlwaysOnTop = true
            bb.LightInfluence = 0
            bb.MaxDistance = 100

            bb.Parent = root


            -- Forcing statuses into one row
            local statusRow = Instance.new("Frame")
            statusRow.Name = "StatusRow"
            statusRow.Size = UDim2.fromScale(1, 1)
            statusRow.BackgroundTransparency = 1
            statusRow.BorderSizePixel = 0
            statusRow.Parent = bb


            local layout = Instance.new("UIListLayout")

            layout.FillDirection = Enum.FillDirection.Horizontal
            layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            layout.VerticalAlignment = Enum.VerticalAlignment.Center
            layout.Padding = UDim.new(
                0,
                STATUS_GAP
            )
            layout.Parent = statusRow

            -- Process of creating separate status
            local function createStatus(name, texture, color)

                local holder = Instance.new("Frame")
                holder.Name = name
                holder.Size = UDim2.fromOffset(
                    STATUS_HEIGHT,
                    STATUS_HEIGHT
                )
                holder.BackgroundColor3 = STATUS_BG
                holder.BackgroundTransparency = 0
                holder.BorderSizePixel = 0
                holder.Visible = false
                holder.Parent = statusRow

                local corner = Instance.new("UICorner")
                corner.CornerRadius = UDim.new(
                    0,
                    4
                )
                corner.Parent = holder

                local icon = Instance.new("ImageLabel")
                icon.Name = "Icon"
                icon.Size = UDim2.new(
                    1,
                    -2,
                    1,
                    -2
                )
                icon.Position = UDim2.fromOffset(
                    1,
                    1
                )
                icon.BackgroundTransparency = 1
                icon.Image = texture
                icon.ImageColor3 = color
                icon.ImageTransparency = 0
                icon.ScaleType = Enum.ScaleType.Fit
                icon.ZIndex = 2
                icon.Parent = holder

                return holder
            end

            -- Statuses
            local fireRateStatus = createStatus(
                "FIRERATE",
                FIRERATE_TEXTURE,
                FIRERATE_COLOR
            )
            local damageStatus = createStatus(
                "DAMAGE",
                DAMAGE_TEXTURE,
                DAMAGE_COLOR
            )
            local rangeStatus = createStatus(
                "RANGE",
                RANGE_TEXTURE,
                RANGE_COLOR
            )

            local regenStatus = createStatus(
                "REGEN",
                REGEN_TEXTURE,
                REGEN_COLOR
            )
            local fireStatus = createStatus(
                "FIRE",
                FIRE_TEXTURE,
                FIRE_COLOR
            )
            local hellFireStatus = createStatus(
                "HELLFIRE",
                HELLFIRE_TEXTURE,
                HELLFIRE_COLOR
            )
            local blindStatus = createStatus(
                "BLIND",
                BLIND_TEXTURE,
                BLIND_COLOR
            )
            local stunStatus = createStatus(
                "STUN",
                STUN_TEXTURE,
                STUN_COLOR
            )
            local superStunStatus = createStatus(
                "SUPERSTUN",
                SUPERSTUN_TEXTURE,
                STUN_COLOR
            )
            local tripStatus = createStatus(
                "TRIP",
                TRIP_TEXTURE,
                TRIP_COLOR
            )
            local _humanoid = model:FindFirstChildOfClass("Humanoid")

            local bountyStatus = createStatus(
                "BOUNTY",
                BOUNTY_TEXTURE,
                BOUNTY_COLOR
            )

            local colaStatus = createStatus(
                "COLA",
                SLOWNESS_TEXTURE,
                COLAs_COLOR
            )
            local iceStatus = createStatus(
                "ICE",
                SLOWNESS_TEXTURE,
                ICEs_COLOR
            )
            local brewStatus = createStatus(
                "BREW",
                VULNERABLE_TEXTURE,
                BREW_COLOR
            )
            -- ARMOR STATUS
            local armorHolder = Instance.new("Frame")
            armorHolder.Name = "ARMOR"
            armorHolder.Size = UDim2.fromOffset( STATUS_HEIGHT, STATUS_HEIGHT + 15 )
            armorHolder.BackgroundColor3 = STATUS_BG
            armorHolder.BackgroundTransparency = 0
            armorHolder.BorderSizePixel = 0
            armorHolder.Visible = false
            armorHolder.Parent = statusRow

            local armorCorner = Instance.new("UICorner")
            armorCorner.CornerRadius = UDim.new(0, 4)
            armorCorner.Parent = armorHolder

            local armorIcon = Instance.new("ImageLabel")
            armorIcon.Name = "Icon"
            armorIcon.Size = UDim2.new( 1, -2, 0, STATUS_HEIGHT )
            armorIcon.Position = UDim2.fromOffset(1, 1)
            armorIcon.BackgroundTransparency = 1
            armorIcon.Image = SHIELD_TEXTURE
            armorIcon.ImageColor3 = ARMOR_COLOR
            armorIcon.ImageTransparency = 0
            armorIcon.ScaleType = Enum.ScaleType.Fit
            armorIcon.ZIndex = 2
            armorIcon.Parent = armorHolder

            local armorText = Instance.new("TextLabel")
            armorText.Name = "ArmorText"
            armorText.Size = UDim2.new( 1, 0, 0, 11 )
            armorText.Position = UDim2.new( 0, 0, 1, -11 )
            armorText.BackgroundTransparency = 1
            armorText.TextColor3 = Color3.fromRGB(255, 255, 255)
            armorText.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
            armorText.TextStrokeTransparency = 0
            armorText.Font = Enum.Font.GothamBold
            armorText.TextScaled = true
            armorText.Text = ""
            armorText.ZIndex = 3
            armorText.Parent = armorHolder

            -- RESISTANCE
            local resistanceHolder = Instance.new("Frame")
            resistanceHolder.Name = "RESISTANCE"
            resistanceHolder.Size = UDim2.fromOffset(STATUS_HEIGHT, STATUS_HEIGHT + 15)
            resistanceHolder.BackgroundColor3 = STATUS_BG
            resistanceHolder.BorderSizePixel = 0
            resistanceHolder.Visible = false
            resistanceHolder.Parent = statusRow

            local corner = Instance.new("UICorner")
            corner.CornerRadius = UDim.new(0, 4)
            corner.Parent = resistanceHolder

            local resistanceIcon = Instance.new("ImageLabel")
            resistanceIcon.Name = "Icon"
            resistanceIcon.Size = UDim2.new(1, -4, 0, STATUS_HEIGHT)
            resistanceIcon.Position = UDim2.fromOffset(2, 2)
            resistanceIcon.BackgroundTransparency = 1
            resistanceIcon.Image = SHIELD_TEXTURE
            resistanceIcon.ImageColor3 = RESISTANCE_COLOR
            resistanceIcon.ScaleType = Enum.ScaleType.Fit
            resistanceIcon.Parent = resistanceHolder

            local resistanceText = Instance.new("TextLabel")
            resistanceText.Name = "Percentage"
            resistanceText.Size = UDim2.new(1, 0, 0, 12)
            resistanceText.Position = UDim2.new(0, 0, 1, -12)
            resistanceText.BackgroundTransparency = 1
            resistanceText.TextColor3 = Color3.fromRGB(255, 255, 255)
            resistanceText.TextStrokeTransparency = 0
            resistanceText.TextScaled = true
            resistanceText.Font = Enum.Font.GothamBold
            resistanceText.Text = "0%"
            resistanceText.Parent = resistanceHolder


            -- Detecting status

            local function updateStatuses()

                local _humanoid = model:FindFirstChildOfClass("Humanoid")
                if not Value then
                    return
                end

                if not torso or not torso.Parent then
                    return
                end

                -- Status Naming part
                fireRateStatus.Visible =
                    torso:FindFirstChild("Speed") ~= nil
                damageStatus.Visible =
                    torso:FindFirstChild("Strength") ~= nil
                rangeStatus.Visible =
                    torso:FindFirstChild("Sight") ~= nil
                regenStatus.Visible =
                    torso:FindFirstChild("Regen") ~= nil
                fireStatus.Visible =
                    torso:FindFirstChild("Fire") ~= nil
                hellFireStatus.Visible =
                    torso:FindFirstChild("Hellfire") ~= nil
                blindStatus.Visible =
                    torso:FindFirstChild("Blind") ~= nil
                stunStatus.Visible =
                    torso:FindFirstChild("Stun") ~= nil
                superStunStatus.Visible =
                    torso:FindFirstChild("SuperStun") ~= nil
                tripStatus.Visible =
                    _humanoid ~= nil and _humanoid.Sit == true
                bountyStatus.Visible =
                    torso:FindFirstChild("Gold") ~= nil
                colaStatus.Visible =
                    torso:FindFirstChild("Slow") ~= nil
                iceStatus.Visible =
                    torso:FindFirstChild("Cold") ~= nil
                brewStatus.Visible =
                    torso:FindFirstChild("Weaken") ~= nil
                -- FIND ARMOR
                local armor = model:GetAttribute("Armor")
                local armorTime = model:GetAttribute("ArmorTime")

                if typeof(armor) == "number" and armor ~= 0 then
                    armorHolder.Visible = true

                    if typeof(armorTime) == "number" then
                        armorIcon.ImageColor3 = Color3.fromRGB(222, 151, 44)
                        armorText.Text = tostring(armor) .. "; " .. tostring(armorTime) .. "s"
                    else
                        armorIcon.ImageColor3 = Color3.fromRGB(133, 249, 255)
                        armorText.Text = tostring(armor)
                    end
                else
                    armorHolder.Visible = false
                    armorText.Text = ""
                end
                -- FIND RESISTANCE
                local resistance = model:GetAttribute("Resistance")

                if typeof(resistance) == "number" then
                    resistanceHolder.Visible = resistance ~= 0
                    resistanceText.Text = tostring(resistance) .. "%"
                else
                    resistanceHolder.Visible = false
                end
            end


            -- Initial update
            updateStatuses()

            -- new particle
            local childAddedConnection =
                torso.ChildAdded:Connect(function(child)

                    if not Value then
                        return
                    end

                    updateStatuses()
                end)
            
            -- deletion particle
            local childRemovedConnection =
                torso.ChildRemoved:Connect(function(child)

                    if not Value then
                        return
                    end

                    updateStatuses()
                end)
            
            local resistanceConnection = model:GetAttributeChangedSignal("Resistance"):Connect(function()
                if not Value then return end
                updateStatuses()
            end)
            local armorConnection = model:GetAttributeChangedSignal("Armor"):Connect(function()
                if not Value then
                    return
                end

                updateStatuses()
            end)

            local armorTimeConnection = model:GetAttributeChangedSignal("ArmorTime"):Connect(function()
                if not Value then
                    return
                end

                updateStatuses()
            end)
            local humanoidConnection

            if _humanoid then
                humanoidConnection =
                    _humanoid:GetPropertyChangedSignal("Sit"):Connect(function()
                        if not Value then
                            return
                        end

                        if not tripStatus.Parent then
                            return
                        end

                        tripStatus.Visible = _humanoid.Sit == true
                    end)
            end

            -- model cleanup
            local ancestryConnection

            ancestryConnection =
                model.AncestryChanged:Connect(function()

                    if not model.Parent then

                        if tracked[model] then

                            local info = tracked[model]

                            if info.gui then
                                info.gui:Destroy()
                            end

                            if info.childAddedConnection then
                                info.childAddedConnection:Disconnect()
                            end

                            if info.childRemovedConnection then
                                info.childRemovedConnection:Disconnect()
                            end
                            if info.resistanceConnection then
                                info.resistanceConnection:Disconnect()
                            end
                            if info.armorConnection then
                                info.armorConnection:Disconnect()
                            end
                            if info.armorTimeConnection then
                                info.armorTimeConnection:Disconnect()
                            end
                            if info.humanoidConnection then
                                info.humanoidConnection:Disconnect()
                            end
                            tracked[model] = nil
                        end

                        ancestryConnection:Disconnect()
                    end
                end)
            -- tracking
            tracked[model] = {
                gui = bb,
                torso = torso,

                childAddedConnection =
                    childAddedConnection,

                childRemovedConnection =
                    childRemovedConnection,

                resistanceConnection =
                    resistanceConnection,
                armorConnection =
                    armorConnection,
                armorTimeConnection =
                    armorTimeConnection,
                humanoidConnection =
                    humanoidConnection,
                ancestryConnection =
                    ancestryConnection
            }
        end

        -- scanning
        local function scanModel(model)

            if not Value then
                return
            end

            if tracked[model] then
                return
            end

            if not model:IsA("Model") then
                return
            end

            local root =
                model:FindFirstChild("HumanoidRootPart")

            local torso =
                model:FindFirstChild("Torso")

            if root and torso then

                -- Don't put status bars on players
                if not Players:GetPlayerFromCharacter(model) then
                    makeStatusBar(model)
                end
            end
        end

        -- do smth for existing npcs
        for _, obj in ipairs(workspace:GetDescendants()) do

            if obj:IsA("Model")
                and obj:FindFirstChild("HumanoidRootPart")
                and obj:FindFirstChild("Torso") then

                if not Players:GetPlayerFromCharacter(obj) then
                    scanModel(obj)
                end
            end
        end


        -- triggers with new npc
        table.insert(
            connections,

            workspace.DescendantAdded:Connect(function(obj)

                if not Value then
                    return
                end

                if not obj:IsA("Model") then
                    return
                end

                task.delay(0.5, function()

                    if not Value or not obj.Parent then
                        return
                    end

                    local root =
                        obj:FindFirstChild("HumanoidRootPart")

                    local torso =
                        obj:FindFirstChild("Torso")

                    if root and torso then

                        if not Players:GetPlayerFromCharacter(obj) then
                            scanModel(obj)
                        end
                    end
                end)
            end)
        )
    end
})
-- Delete Gloom
LQFTab:CreateButton({
	Name = "Delete Gloom hazard",
	Callback = function()
		local playerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
		local gloom = playerGui:FindFirstChild("Gloom")

		if gloom then
			gloom:Destroy()
		else
			warn("Gloom was not found.")
		end
	end,
})

--SETTINGS
_G.BrickTracker=true
_G.StatsTracker=false
--- Brick Tracker
SettingsTab:CreateToggle({
    Name = "Brick Tracker",
    CurrentValue = false,
    Flag = "BrickTrackerFlag",

    Callback = function(Value)
        _G.BrickTracker = Value

        print(
            _G.BrickTracker
                and "🟢 Brick Tracker Enabled"
                or "🚫 Brick Tracker Disabled"
        )

        Rayfield:Notify({
            Title = Value and "Enabled" or "Disabled",
            Content = "Brick Tracker has been " .. (Value and "enabled" or "disabled") .. ".",
            Duration = 2,
            Image = "toy-brick"
        })
        -- Stop previous loop 
        if _G.BrickTrackerConnection then
            _G.BrickTrackerConnection:Disconnect()
            _G.BrickTrackerConnection = nil
        end
        if _G.BrickTrackerText then
            _G.BrickTrackerText:Destroy() 
            _G.BrickTrackerText = nil
        end
        if not Value then return end

        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")

        local player = Players.LocalPlayer
        local playerGui = player:WaitForChild("PlayerGui")

        -- Original timer text
        local mainMenu = playerGui:WaitForChild("MainMenu")
        local selection = mainMenu:WaitForChild("Lobby"):WaitForChild("Selection")
        local streakFrame = selection:WaitForChild("StreakFrame")
        local originalTimeText = playerGui:WaitForChild("MainMenu"):WaitForChild("Lobby"):WaitForChild("Selection"):WaitForChild("StreakFrame"):WaitForChild("Standard"):WaitForChild("Time")

        -- Custom offset for EndGameBar position
        local BAR_OFFSET_X = -5
        local BAR_OFFSET_Y = 15
        -- Current BattleScreen references
        local currentBattleScreen = nil
        local currentEndGameBar = nil
        local brickTrackText = nil

        local function createTracker(endGameBar)
            -- Destroy previous tracker
            if brickTrackText then
                brickTrackText:Destroy()
                brickTrackText = nil
            end
            if not endGameBar or not endGameBar.Parent then
                return
            end
            -- Clone original timer
            brickTrackText = originalTimeText:Clone()
            brickTrackText.Name = "BrickTrackText"
            -- Red-ish color
            brickTrackText.TextColor3 = Color3.fromRGB(255, 80, 80)
            -- Put it alongside EndGame.Bar
            brickTrackText.Parent = endGameBar.Parent
            -- Size
            brickTrackText.Size = UDim2.new(
                4, 100, -- Scale, Offscale of X
                1, 5 -- Scale, Offscale of Y
            )
            brickTrackText.TextXAlignment = Enum.TextXAlignment.Left
            _G.BrickTrackerText = brickTrackText
        end
        -- Updates position of the tracker
        local function updatePosition()
            if not brickTrackText or not brickTrackText.Parent or not currentEndGameBar or not currentEndGameBar.Parent then
                return
            end
            local barPosition = currentEndGameBar.Position
            local barSize = currentEndGameBar.Size
            brickTrackText.AnchorPoint = Vector2.new(0.5, 0)
            brickTrackText.Position = UDim2.new(
                barPosition.X.Scale + (barSize.X.Scale / 2),
                barPosition.X.Offset + (barSize.X.Offset / 2) + BAR_OFFSET_X,
                barPosition.Y.Scale + barSize.Y.Scale,
                barPosition.Y.Offset + barSize.Y.Offset + BAR_OFFSET_Y
            )
        end
        -- Check for BattleScreen every second
        task.spawn(function()
            while _G.BrickTracker do
                local battleScreen = playerGui:FindFirstChild("BattleScreen")
                if battleScreen then
                    local endGame = battleScreen:FindFirstChild("EndGame")
                    local endGameBar = endGame and endGame:FindFirstChild("Bar")
                    if endGameBar then
                        -- New BattleScreen/Bar detected
                        if currentEndGameBar ~= endGameBar then
                            currentBattleScreen = battleScreen
                            currentEndGameBar = endGameBar
                            createTracker(endGameBar)
                        end
                        -- Update text
                        if brickTrackText and brickTrackText.Parent then
                            brickTrackText.Text = originalTimeText.Text .. " left to claim Bricks."
                            updatePosition()
                        end
                    else
                        -- EndGame or Bar doesn't exist
                        currentEndGameBar = nil
                        currentBattleScreen = nil
                        if brickTrackText then
                            brickTrackText:Destroy()
                            brickTrackText = nil
                            _G.BrickTrackerText = nil
                        end
                    end
                else
                    -- BattleScreen doesn't exist
                    currentBattleScreen = nil
                    currentEndGameBar = nil
                    if brickTrackText then
                        brickTrackText:Destroy()
                        brickTrackText = nil
                        _G.BrickTrackerText = nil
                    end
                end
                task.wait(1)
            end
        end)

    end,
})
SettingsTab:CreateToggle({
    Name = "Stats Tracker",
    CurrentValue = false,
    Flag = "StatsTrackerFlag",

    Callback = function(Value)
        _G.StatsTracker = Value

        print(
            _G.StatsTracker
                and "🟢 Stats Tracker Enabled"
                or "🚫 Stats Tracker Disabled"
        )

        Rayfield:Notify({
            Title = Value and "Enabled" or "Disabled",
            Content = "Stats Tracker has been " .. (Value and "enabled" or "disabled") .. ".",
            Duration = 2,
            Image = "toy-brick"
        })
        -- Stop previous loop 
        if _G.StatsTrackerConnection then
            _G.StatsTrackerConnection:Disconnect()
            _G.StatsTrackerConnection = nil
        end
        if _G.StatsTrackerText then
            _G.StatsTrackerText:Destroy() 
            _G.StatsTrackerText = nil
        end
        if not Value then return end
    end
})


--[[ ideas:
- try to finally utilize WEAKEST enemy
- do every list of final bosses with their projectile naming
- add a feature for Auto Bank of upgrading a Detonator, so it would upgrade when timer hits 0:00; solution: workspace.NPCFolders.BaseFolder["Blue Base"]:GetAttribute("Timer"); --* ADDED
- make a text next to unit slot so it was tracking the amount of npcs you've got; each slot has only image, and not attribute, which makes things harder
- show up the XPToken, Bricks and Experience during the battle; path: game:GetService("Players").LocalPlayer.PlayerData.Currency    game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("BattleScreen"):WaitForChild("Info") --! In proccess
]]--
