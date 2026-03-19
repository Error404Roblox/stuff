-- Gui to Lua
-- Version: 3.2

-- Instances:

local GUT2Script = Instance.new("ScreenGui")
local ScriptNameText = Instance.new("TextLabel")
local MainUI = Instance.new("Frame")
local Frames = Instance.new("Folder")
local Automatizaion = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
local Buttons = Instance.new("Folder")
local SGbutton = Instance.new("TextButton")
local UIGradient_2 = Instance.new("UIGradient")
local EHbutton = Instance.new("TextButton")
local UIGradient_3 = Instance.new("UIGradient")
local UIPadding = Instance.new("UIPadding")
local PBBbutton = Instance.new("TextButton")
local UIGradient_4 = Instance.new("UIGradient")
local MainButton = Instance.new("TextButton")
local UIGradient_5 = Instance.new("UIGradient")
local UIListLayout = Instance.new("UIListLayout")
local Frames_2 = Instance.new("Folder")
local StarryGround = Instance.new("ScrollingFrame")
local AutoCollect = Instance.new("Frame")
local AutoCollectSGText = Instance.new("TextLabel")
local AutoCollectSG = Instance.new("TextButton")
local EventHorizon = Instance.new("ScrollingFrame")
local AutoCollect_2 = Instance.new("Frame")
local EHacText = Instance.new("TextLabel")
local EHacButton = Instance.new("TextButton")
local PostBigBang = Instance.new("ScrollingFrame")
local ADHD = Instance.new("Frame")
local AutoADHD = Instance.new("Frame")
local AutoADHDText = Instance.new("TextLabel")
local AutoADHDButton = Instance.new("TextButton")
local AutoADHDwarningText = Instance.new("TextLabel")
local ADHDnameText = Instance.new("TextLabel")
local Stats = Instance.new("Frame")
local AmountOfClicks = Instance.new("TextLabel")
local TotalAmountOfGoldCubes = Instance.new("TextLabel")
local TotalAmountOfDiamondCubes = Instance.new("TextLabel")
local TotalAmountOfUnobtaniumCubes = Instance.new("TextLabel")
local MainSection = Instance.new("ScrollingFrame")
local CosmicDust = Instance.new("Frame")
local UIGradient_6 = Instance.new("UIGradient")
local NameText = Instance.new("TextLabel")
local awaitText = Instance.new("TextLabel")
local Terraforium = Instance.new("Frame")
local UIGradient_7 = Instance.new("UIGradient")
local NameText_2 = Instance.new("TextLabel")
local awaitText_2 = Instance.new("TextLabel")
local UIPadding_2 = Instance.new("UIPadding")
local UIListLayout_2 = Instance.new("UIListLayout")
local TreeTiers = Instance.new("Frame")
local UIGradient_8 = Instance.new("UIGradient")
local TTnameText = Instance.new("TextLabel")
local _110 = Instance.new("TextLabel")
local AutoTreeStage = Instance.new("Frame")
local ATStext = Instance.new("TextLabel")
local ATSbutton = Instance.new("TextButton")
local TTcurrentTiersText = Instance.new("TextLabel")
local Astrofy = Instance.new("Frame")
local UIGradient_9 = Instance.new("UIGradient")
local NameText_3 = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local Stellarify = Instance.new("Frame")
local UIGradient_10 = Instance.new("UIGradient")
local SnameText = Instance.new("TextLabel")
local UIGradient_11 = Instance.new("UIGradient")
local StarFormationText = Instance.new("TextLabel")
local SamountText = Instance.new("TextLabel")
local StarFormation = Instance.new("ScrollingFrame")
local AutoStarForm = Instance.new("Frame")
local ASFbutton = Instance.new("TextButton")
local UIGradient_12 = Instance.new("UIGradient")
local ASFtext = Instance.new("TextLabel")
local UIStroke = Instance.new("UIStroke")
local UIGradient_13 = Instance.new("UIGradient")
local UIGridLayout = Instance.new("UIGridLayout")
local UIPadding_3 = Instance.new("UIPadding")
local Supernova = Instance.new("Frame")
local UIGradient_14 = Instance.new("UIGradient")
local SNnameText = Instance.new("TextLabel")
local _111 = Instance.new("TextLabel")
local SNcurrentMilestone = Instance.new("TextLabel")
local Settings = Instance.new("Frame")
local UIGradient_15 = Instance.new("UIGradient")
local ExitButton = Instance.new("TextButton")
local HighlightLinusCubes = Instance.new("Frame")
local Textlinus = Instance.new("TextLabel")
local highlight = Instance.new("TextButton")
local Buttons_2 = Instance.new("ScrollingFrame")
local UIListLayout_3 = Instance.new("UIListLayout")
local UIPadding_4 = Instance.new("UIPadding")
local SettingsButton = Instance.new("TextButton")
local UIGradient_16 = Instance.new("UIGradient")
local AutomateButton = Instance.new("TextButton")
local UIGradient_17 = Instance.new("UIGradient")

--Properties:

GUT2Script.Name = "GUT2 Script"
GUT2Script.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
GUT2Script.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
GUT2Script.ResetOnSpawn = false

ScriptNameText.Name = "ScriptNameText"
ScriptNameText.Parent = GUT2Script
ScriptNameText.Active = true
ScriptNameText.BackgroundColor3 = Color3.fromRGB(70, 25, 98)
ScriptNameText.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptNameText.BorderSizePixel = 0
ScriptNameText.Position = UDim2.new(0.118066564, 0, 0.166456491, 0)
ScriptNameText.Size = UDim2.new(0, 935, 0, 66)
ScriptNameText.ZIndex = 2
ScriptNameText.Font = Enum.Font.Bodoni
ScriptNameText.LineHeight = 3.000
ScriptNameText.Text = "The Galaxy Upgrade Tree 2 Script"
ScriptNameText.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptNameText.TextScaled = true
ScriptNameText.TextSize = 14.000
ScriptNameText.TextStrokeTransparency = 0.500
ScriptNameText.TextWrapped = true
ScriptNameText.Draggable = true

MainUI.Name = "MainUI"
MainUI.Parent = ScriptNameText
MainUI.BackgroundColor3 = Color3.fromRGB(35, 26, 53)
MainUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainUI.BorderSizePixel = 0
MainUI.Position = UDim2.new(-0.000435405876, 0, 0.998581886, 0)
MainUI.Size = UDim2.new(0, 935, 0, 577)

Frames.Name = "Frames"
Frames.Parent = MainUI

Automatizaion.Name = "Automatizaion"
Automatizaion.Parent = Frames
Automatizaion.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Automatizaion.BorderColor3 = Color3.fromRGB(0, 0, 0)
Automatizaion.BorderSizePixel = 0
Automatizaion.Position = UDim2.new(0.0495867878, 0, 0.20229885, 0)
Automatizaion.Size = UDim2.new(0, 261, 0, 428)
Automatizaion.Visible = false

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(54, 41, 83)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(17, 27, 115)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(110, 25, 134))}
UIGradient.Parent = Automatizaion

UICorner.Parent = Automatizaion

Buttons.Name = "Buttons"
Buttons.Parent = Automatizaion

SGbutton.Name = "SGbutton"
SGbutton.Parent = Buttons
SGbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SGbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SGbutton.BorderSizePixel = 0
SGbutton.LayoutOrder = 1
SGbutton.Position = UDim2.new(0.114942528, 0, 0.18224299, 0)
SGbutton.Size = UDim2.new(0, 200, 0, 50)
SGbutton.Visible = false
SGbutton.Font = Enum.Font.JosefinSans
SGbutton.Text = "Starry Ground"
SGbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
SGbutton.TextScaled = true
SGbutton.TextSize = 14.000
SGbutton.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(157, 37, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(246, 212, 255))}
UIGradient_2.Parent = SGbutton

EHbutton.Name = "EHbutton"
EHbutton.Parent = Buttons
EHbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EHbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
EHbutton.BorderSizePixel = 0
EHbutton.LayoutOrder = 2
EHbutton.Position = UDim2.new(0.114942528, 0, 0.314999998, 0)
EHbutton.Size = UDim2.new(0, 200, 0, 50)
EHbutton.Font = Enum.Font.Highway
EHbutton.Text = "Event Horizon"
EHbutton.TextColor3 = Color3.fromRGB(255, 0, 4)
EHbutton.TextScaled = true
EHbutton.TextSize = 14.000
EHbutton.TextStrokeColor3 = Color3.fromRGB(156, 0, 234)
EHbutton.TextStrokeTransparency = 0.000
EHbutton.TextWrapped = true

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(20, 57, 89)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(24, 30, 143))}
UIGradient_3.Parent = EHbutton

UIPadding.Parent = EHbutton

PBBbutton.Name = "PBBbutton"
PBBbutton.Parent = Buttons
PBBbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PBBbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
PBBbutton.BorderSizePixel = 0
PBBbutton.LayoutOrder = 3
PBBbutton.Position = UDim2.new(0.114942528, 0, 0.456999987, 0)
PBBbutton.Size = UDim2.new(0, 200, 0, 50)
PBBbutton.Font = Enum.Font.Highway
PBBbutton.Text = "Post Big Bang"
PBBbutton.TextColor3 = Color3.fromRGB(255, 179, 0)
PBBbutton.TextScaled = true
PBBbutton.TextSize = 14.000
PBBbutton.TextStrokeColor3 = Color3.fromRGB(138, 138, 30)
PBBbutton.TextStrokeTransparency = 0.000
PBBbutton.TextWrapped = true

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 238, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 243, 0))}
UIGradient_4.Parent = PBBbutton

MainButton.Name = "MainButton"
MainButton.Parent = Buttons
MainButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainButton.BorderSizePixel = 0
MainButton.Position = UDim2.new(0.114942528, 0, 0.0450000018, 0)
MainButton.Size = UDim2.new(0, 200, 0, 50)
MainButton.Font = Enum.Font.JosefinSans
MainButton.Text = "Main Section"
MainButton.TextColor3 = Color3.fromRGB(0, 0, 0)
MainButton.TextScaled = true
MainButton.TextSize = 14.000
MainButton.TextWrapped = true

UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(157, 37, 255)), ColorSequenceKeypoint.new(0.15, Color3.fromRGB(0, 255, 51)), ColorSequenceKeypoint.new(0.30, Color3.fromRGB(154, 0, 3)), ColorSequenceKeypoint.new(0.43, Color3.fromRGB(255, 234, 0)), ColorSequenceKeypoint.new(0.55, Color3.fromRGB(88, 14, 141)), ColorSequenceKeypoint.new(0.61, Color3.fromRGB(99, 97, 97)), ColorSequenceKeypoint.new(0.65, Color3.fromRGB(10, 255, 26)), ColorSequenceKeypoint.new(0.70, Color3.fromRGB(149, 89, 16)), ColorSequenceKeypoint.new(0.82, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.86, Color3.fromRGB(254, 254, 254)), ColorSequenceKeypoint.new(0.91, Color3.fromRGB(30, 0, 254)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(141, 75, 255))}
UIGradient_5.Parent = MainButton

UIListLayout.Parent = Buttons
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 15)

Frames_2.Name = "Frames"
Frames_2.Parent = Automatizaion

StarryGround.Name = "StarryGround"
StarryGround.Parent = Frames_2
StarryGround.Active = true
StarryGround.BackgroundColor3 = Color3.fromRGB(22, 9, 43)
StarryGround.BorderColor3 = Color3.fromRGB(0, 0, 0)
StarryGround.BorderSizePixel = 0
StarryGround.Position = UDim2.new(1.04980838, 0, 0, 0)
StarryGround.Size = UDim2.new(0, 588, 0, 428)
StarryGround.Visible = false

AutoCollect.Name = "AutoCollect"
AutoCollect.Parent = StarryGround
AutoCollect.Active = true
AutoCollect.BackgroundColor3 = Color3.fromRGB(91, 50, 127)
AutoCollect.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoCollect.BorderSizePixel = 0
AutoCollect.Position = UDim2.new(0.0323129259, 0, 0.0268691592, 0)
AutoCollect.Size = UDim2.new(0, 210, 0, 150)
AutoCollect.Visible = false

AutoCollectSGText.Name = "AutoCollectSGText"
AutoCollectSGText.Parent = AutoCollect
AutoCollectSGText.BackgroundColor3 = Color3.fromRGB(28, 21, 62)
AutoCollectSGText.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoCollectSGText.BorderSizePixel = 0
AutoCollectSGText.Position = UDim2.new(0.0238095243, 0, 0.0466666669, 0)
AutoCollectSGText.Size = UDim2.new(0, 200, 0, 50)
AutoCollectSGText.Font = Enum.Font.SourceSans
AutoCollectSGText.Text = "Auto Collect Starries"
AutoCollectSGText.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoCollectSGText.TextScaled = true
AutoCollectSGText.TextSize = 14.000
AutoCollectSGText.TextStrokeColor3 = Color3.fromRGB(255, 124, 255)
AutoCollectSGText.TextStrokeTransparency = 0.500
AutoCollectSGText.TextWrapped = true

AutoCollectSG.Name = "AutoCollectSG"
AutoCollectSG.Parent = AutoCollect
AutoCollectSG.BackgroundColor3 = Color3.fromRGB(87, 205, 255)
AutoCollectSG.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoCollectSG.BorderSizePixel = 0
AutoCollectSG.Position = UDim2.new(0.0238095243, 0, 0.439999998, 0)
AutoCollectSG.Size = UDim2.new(0, 200, 0, 75)
AutoCollectSG.AutoButtonColor = false
AutoCollectSG.Font = Enum.Font.SourceSans
AutoCollectSG.Text = "Disabled/Enabled"
AutoCollectSG.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoCollectSG.TextScaled = true
AutoCollectSG.TextSize = 14.000
AutoCollectSG.TextWrapped = true

EventHorizon.Name = "EventHorizon"
EventHorizon.Parent = Frames_2
EventHorizon.Active = true
EventHorizon.BackgroundColor3 = Color3.fromRGB(22, 9, 43)
EventHorizon.BorderColor3 = Color3.fromRGB(0, 0, 0)
EventHorizon.BorderSizePixel = 0
EventHorizon.Position = UDim2.new(1.04980838, 0, 0, 0)
EventHorizon.Size = UDim2.new(0, 588, 0, 428)
EventHorizon.Visible = false

AutoCollect_2.Name = "AutoCollect"
AutoCollect_2.Parent = EventHorizon
AutoCollect_2.Active = true
AutoCollect_2.BackgroundColor3 = Color3.fromRGB(29, 114, 127)
AutoCollect_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoCollect_2.BorderSizePixel = 0
AutoCollect_2.Position = UDim2.new(0.0323129259, 0, 0.0268691592, 0)
AutoCollect_2.Size = UDim2.new(0, 210, 0, 150)

EHacText.Name = "EHacText"
EHacText.Parent = AutoCollect_2
EHacText.BackgroundColor3 = Color3.fromRGB(28, 21, 62)
EHacText.BorderColor3 = Color3.fromRGB(0, 0, 0)
EHacText.BorderSizePixel = 0
EHacText.Position = UDim2.new(0.0238095243, 0, 0.0466666669, 0)
EHacText.Size = UDim2.new(0, 200, 0, 50)
EHacText.Font = Enum.Font.SourceSans
EHacText.Text = "Auto Collect Gravitons"
EHacText.TextColor3 = Color3.fromRGB(255, 255, 255)
EHacText.TextScaled = true
EHacText.TextSize = 14.000
EHacText.TextStrokeColor3 = Color3.fromRGB(0, 242, 255)
EHacText.TextStrokeTransparency = 0.500
EHacText.TextWrapped = true

EHacButton.Name = "EHacButton"
EHacButton.Parent = AutoCollect_2
EHacButton.BackgroundColor3 = Color3.fromRGB(87, 205, 255)
EHacButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
EHacButton.BorderSizePixel = 0
EHacButton.Position = UDim2.new(0.0238095243, 0, 0.439999998, 0)
EHacButton.Size = UDim2.new(0, 200, 0, 75)
EHacButton.Font = Enum.Font.SourceSans
EHacButton.Text = "Enable"
EHacButton.TextColor3 = Color3.fromRGB(0, 0, 0)
EHacButton.TextScaled = true
EHacButton.TextSize = 14.000
EHacButton.TextWrapped = true

PostBigBang.Name = "PostBigBang"
PostBigBang.Parent = Frames_2
PostBigBang.Active = true
PostBigBang.BackgroundColor3 = Color3.fromRGB(22, 9, 43)
PostBigBang.BorderColor3 = Color3.fromRGB(0, 0, 0)
PostBigBang.BorderSizePixel = 0
PostBigBang.Position = UDim2.new(1.04980838, 0, 0, 0)
PostBigBang.Size = UDim2.new(0, 588, 0, 428)
PostBigBang.Visible = false

ADHD.Name = "ADHD"
ADHD.Parent = PostBigBang
ADHD.BackgroundColor3 = Color3.fromRGB(170, 170, 170)
ADHD.BorderColor3 = Color3.fromRGB(0, 0, 0)
ADHD.BorderSizePixel = 0
ADHD.Position = UDim2.new(0, 0, 0.0747663528, 0)
ADHD.Size = UDim2.new(0, 588, 0, 373)

AutoADHD.Name = "AutoADHD"
AutoADHD.Parent = ADHD
AutoADHD.Active = true
AutoADHD.BackgroundColor3 = Color3.fromRGB(255, 204, 0)
AutoADHD.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoADHD.BorderSizePixel = 0
AutoADHD.Position = UDim2.new(0.605442166, 0, 0.0857908875, 0)
AutoADHD.Size = UDim2.new(0, 210, 0, 235)

AutoADHDText.Name = "AutoADHDText"
AutoADHDText.Parent = AutoADHD
AutoADHDText.BackgroundColor3 = Color3.fromRGB(247, 255, 93)
AutoADHDText.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoADHDText.BorderSizePixel = 0
AutoADHDText.Position = UDim2.new(0.0238095243, 0, 0.0466666669, 0)
AutoADHDText.Size = UDim2.new(0, 200, 0, 50)
AutoADHDText.Font = Enum.Font.Fantasy
AutoADHDText.Text = "Auto Click za ADHD Cube"
AutoADHDText.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoADHDText.TextScaled = true
AutoADHDText.TextSize = 14.000
AutoADHDText.TextStrokeTransparency = 0.500
AutoADHDText.TextWrapped = true

AutoADHDButton.Name = "AutoADHDButton"
AutoADHDButton.Parent = AutoADHD
AutoADHDButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoADHDButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoADHDButton.BorderSizePixel = 0
AutoADHDButton.Position = UDim2.new(0.0238095243, 0, 0.307999998, 0)
AutoADHDButton.Size = UDim2.new(0, 200, 0, 75)
AutoADHDButton.ZIndex = 3
AutoADHDButton.Font = Enum.Font.SourceSans
AutoADHDButton.Text = "Disabled"
AutoADHDButton.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoADHDButton.TextScaled = true
AutoADHDButton.TextSize = 14.000
AutoADHDButton.TextWrapped = true

AutoADHDwarningText.Name = "AutoADHDwarningText"
AutoADHDwarningText.Parent = AutoADHD
AutoADHDwarningText.BackgroundColor3 = Color3.fromRGB(255, 204, 0)
AutoADHDwarningText.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoADHDwarningText.BorderSizePixel = 0
AutoADHDwarningText.Position = UDim2.new(0.0238095243, 0, 0.65200001, 0)
AutoADHDwarningText.Size = UDim2.new(0, 200, 0, 77)
AutoADHDwarningText.Font = Enum.Font.Unknown
AutoADHDwarningText.Text = "Keep in mind, that it ONLY works within 32 studs from ADHD cube."
AutoADHDwarningText.TextColor3 = Color3.fromRGB(255, 0, 4)
AutoADHDwarningText.TextScaled = true
AutoADHDwarningText.TextSize = 14.000
AutoADHDwarningText.TextWrapped = true

ADHDnameText.Name = "ADHDnameText"
ADHDnameText.Parent = ADHD
ADHDnameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ADHDnameText.BorderColor3 = Color3.fromRGB(0, 0, 0)
ADHDnameText.BorderSizePixel = 0
ADHDnameText.Position = UDim2.new(0, 0, -0.111351199, 0)
ADHDnameText.Size = UDim2.new(0, 588, 0, 50)
ADHDnameText.Font = Enum.Font.PermanentMarker
ADHDnameText.Text = "A D H D"
ADHDnameText.TextColor3 = Color3.fromRGB(0, 0, 0)
ADHDnameText.TextScaled = true
ADHDnameText.TextSize = 14.000
ADHDnameText.TextWrapped = true

Stats.Name = "Stats"
Stats.Parent = ADHD
Stats.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stats.BorderColor3 = Color3.fromRGB(0, 0, 0)
Stats.BorderSizePixel = 0
Stats.Position = UDim2.new(0.0272108838, 0, 0.0857908875, 0)
Stats.Size = UDim2.new(0, 324, 0, 236)

AmountOfClicks.Name = "AmountOfClicks"
AmountOfClicks.Parent = Stats
AmountOfClicks.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AmountOfClicks.BorderColor3 = Color3.fromRGB(0, 0, 0)
AmountOfClicks.BorderSizePixel = 0
AmountOfClicks.Position = UDim2.new(0, 0, 0.0599999987, 0)
AmountOfClicks.Size = UDim2.new(0, 324, 0, 50)
AmountOfClicks.Font = Enum.Font.Cartoon
AmountOfClicks.Text = "Total clicks: <x>"
AmountOfClicks.TextColor3 = Color3.fromRGB(0, 0, 0)
AmountOfClicks.TextScaled = true
AmountOfClicks.TextSize = 14.000
AmountOfClicks.TextWrapped = true

TotalAmountOfGoldCubes.Name = "TotalAmountOfGoldCubes"
TotalAmountOfGoldCubes.Parent = Stats
TotalAmountOfGoldCubes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TotalAmountOfGoldCubes.BorderColor3 = Color3.fromRGB(0, 0, 0)
TotalAmountOfGoldCubes.BorderSizePixel = 0
TotalAmountOfGoldCubes.Position = UDim2.new(0, 0, 0.314237297, 0)
TotalAmountOfGoldCubes.Size = UDim2.new(0, 324, 0, 50)
TotalAmountOfGoldCubes.Font = Enum.Font.Cartoon
TotalAmountOfGoldCubes.Text = "Gold ADHDs: <x>/100"
TotalAmountOfGoldCubes.TextColor3 = Color3.fromRGB(0, 0, 0)
TotalAmountOfGoldCubes.TextScaled = true
TotalAmountOfGoldCubes.TextSize = 14.000
TotalAmountOfGoldCubes.TextStrokeColor3 = Color3.fromRGB(255, 205, 24)
TotalAmountOfGoldCubes.TextStrokeTransparency = 0.500
TotalAmountOfGoldCubes.TextWrapped = true

TotalAmountOfDiamondCubes.Name = "TotalAmountOfDiamondCubes"
TotalAmountOfDiamondCubes.Parent = Stats
TotalAmountOfDiamondCubes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TotalAmountOfDiamondCubes.BorderColor3 = Color3.fromRGB(0, 0, 0)
TotalAmountOfDiamondCubes.BorderSizePixel = 0
TotalAmountOfDiamondCubes.Position = UDim2.new(0, 0, 0.526101828, 0)
TotalAmountOfDiamondCubes.Size = UDim2.new(0, 324, 0, 50)
TotalAmountOfDiamondCubes.Font = Enum.Font.Cartoon
TotalAmountOfDiamondCubes.Text = "Diamond ADHDs: <x>"
TotalAmountOfDiamondCubes.TextColor3 = Color3.fromRGB(0, 0, 0)
TotalAmountOfDiamondCubes.TextScaled = true
TotalAmountOfDiamondCubes.TextSize = 14.000
TotalAmountOfDiamondCubes.TextStrokeColor3 = Color3.fromRGB(36, 214, 178)
TotalAmountOfDiamondCubes.TextStrokeTransparency = 0.500
TotalAmountOfDiamondCubes.TextWrapped = true

TotalAmountOfUnobtaniumCubes.Name = "TotalAmountOfUnobtaniumCubes"
TotalAmountOfUnobtaniumCubes.Parent = Stats
TotalAmountOfUnobtaniumCubes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TotalAmountOfUnobtaniumCubes.BorderColor3 = Color3.fromRGB(0, 0, 0)
TotalAmountOfUnobtaniumCubes.BorderSizePixel = 0
TotalAmountOfUnobtaniumCubes.Position = UDim2.new(0, 0, 0.737966239, 0)
TotalAmountOfUnobtaniumCubes.Size = UDim2.new(0, 324, 0, 50)
TotalAmountOfUnobtaniumCubes.Font = Enum.Font.Cartoon
TotalAmountOfUnobtaniumCubes.Text = "Unobtanium ADHDs: <x>"
TotalAmountOfUnobtaniumCubes.TextColor3 = Color3.fromRGB(0, 0, 0)
TotalAmountOfUnobtaniumCubes.TextScaled = true
TotalAmountOfUnobtaniumCubes.TextSize = 14.000
TotalAmountOfUnobtaniumCubes.TextStrokeColor3 = Color3.fromRGB(135, 55, 214)
TotalAmountOfUnobtaniumCubes.TextStrokeTransparency = 0.500
TotalAmountOfUnobtaniumCubes.TextWrapped = true

MainSection.Name = "MainSection"
MainSection.Parent = Frames_2
MainSection.Active = true
MainSection.BackgroundColor3 = Color3.fromRGB(22, 9, 43)
MainSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainSection.BorderSizePixel = 0
MainSection.Position = UDim2.new(1.04980838, 0, 0, 0)
MainSection.Size = UDim2.new(0, 588, 0, 428)
MainSection.Visible = false
MainSection.CanvasPosition = Vector2.new(0, 600)
MainSection.CanvasSize = UDim2.new(0, 0, 4, 0)

CosmicDust.Name = "CosmicDust"
CosmicDust.Parent = MainSection
CosmicDust.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CosmicDust.BorderColor3 = Color3.fromRGB(0, 0, 0)
CosmicDust.BorderSizePixel = 0
CosmicDust.Position = UDim2.new(0.0221088436, 0, 0.0221962612, 0)
CosmicDust.Size = UDim2.new(0, 550, 0, 100)

UIGradient_6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(174, 33, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(186, 35, 191))}
UIGradient_6.Parent = CosmicDust

NameText.Name = "NameText"
NameText.Parent = CosmicDust
NameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameText.BackgroundTransparency = 1.000
NameText.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameText.BorderSizePixel = 0
NameText.Position = UDim2.new(0.318181813, 0, 0, 0)
NameText.Size = UDim2.new(0, 200, 0, 50)
NameText.Font = Enum.Font.GothamBold
NameText.Text = "Cosmic Dust"
NameText.TextColor3 = Color3.fromRGB(0, 0, 0)
NameText.TextScaled = true
NameText.TextSize = 14.000
NameText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
NameText.TextStrokeTransparency = 0.500
NameText.TextWrapped = true

awaitText.Name = "awaitText"
awaitText.Parent = CosmicDust
awaitText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
awaitText.BackgroundTransparency = 1.000
awaitText.BorderColor3 = Color3.fromRGB(0, 0, 0)
awaitText.BorderSizePixel = 0
awaitText.Position = UDim2.new(0.398181826, 0, 0.589999974, 0)
awaitText.Size = UDim2.new(0, 123, 0, 24)
awaitText.Font = Enum.Font.SourceSans
awaitText.Text = "nothing for now :("
awaitText.TextColor3 = Color3.fromRGB(0, 0, 0)
awaitText.TextScaled = true
awaitText.TextSize = 14.000
awaitText.TextWrapped = true

Terraforium.Name = "Terraforium"
Terraforium.Parent = MainSection
Terraforium.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Terraforium.BorderColor3 = Color3.fromRGB(0, 0, 0)
Terraforium.BorderSizePixel = 0
Terraforium.LayoutOrder = 1
Terraforium.Position = UDim2.new(0.0221088436, 0, 0.169392526, 0)
Terraforium.Size = UDim2.new(0, 550, 0, 100)

UIGradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 17)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(78, 255, 78))}
UIGradient_7.Parent = Terraforium

NameText_2.Name = "NameText"
NameText_2.Parent = Terraforium
NameText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameText_2.BackgroundTransparency = 1.000
NameText_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameText_2.BorderSizePixel = 0
NameText_2.Position = UDim2.new(0.318181813, 0, 0, 0)
NameText_2.Size = UDim2.new(0, 200, 0, 50)
NameText_2.Font = Enum.Font.GothamBold
NameText_2.Text = "Terraforium"
NameText_2.TextColor3 = Color3.fromRGB(103, 255, 121)
NameText_2.TextScaled = true
NameText_2.TextSize = 14.000
NameText_2.TextStrokeTransparency = 0.500
NameText_2.TextWrapped = true

awaitText_2.Name = "awaitText"
awaitText_2.Parent = Terraforium
awaitText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
awaitText_2.BackgroundTransparency = 1.000
awaitText_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
awaitText_2.BorderSizePixel = 0
awaitText_2.Position = UDim2.new(0.398181826, 0, 0.589999974, 0)
awaitText_2.Size = UDim2.new(0, 123, 0, 24)
awaitText_2.Font = Enum.Font.SourceSans
awaitText_2.Text = "nothing for now :("
awaitText_2.TextColor3 = Color3.fromRGB(0, 0, 0)
awaitText_2.TextScaled = true
awaitText_2.TextSize = 14.000
awaitText_2.TextWrapped = true

UIPadding_2.Parent = MainSection
UIPadding_2.PaddingLeft = UDim.new(0, 15)
UIPadding_2.PaddingTop = UDim.new(0, 10)

UIListLayout_2.Parent = MainSection
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 15)

TreeTiers.Name = "TreeTiers"
TreeTiers.Parent = MainSection
TreeTiers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TreeTiers.BorderColor3 = Color3.fromRGB(0, 0, 0)
TreeTiers.BorderSizePixel = 0
TreeTiers.LayoutOrder = 4
TreeTiers.Position = UDim2.new(0, 0, -0.0411280841, 0)
TreeTiers.Size = UDim2.new(0, 550, 0, 465)

UIGradient_8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(65, 32, 2)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(165, 103, 16))}
UIGradient_8.Parent = TreeTiers

TTnameText.Name = "TTnameText"
TTnameText.Parent = TreeTiers
TTnameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TTnameText.BackgroundTransparency = 1.000
TTnameText.BorderColor3 = Color3.fromRGB(0, 0, 0)
TTnameText.BorderSizePixel = 0
TTnameText.Position = UDim2.new(0.318181813, 0, 0, 0)
TTnameText.Size = UDim2.new(0, 200, 0, 50)
TTnameText.Font = Enum.Font.GothamBold
TTnameText.Text = "Tree Tiers"
TTnameText.TextColor3 = Color3.fromRGB(116, 71, 15)
TTnameText.TextScaled = true
TTnameText.TextSize = 14.000
TTnameText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TTnameText.TextStrokeTransparency = 0.500
TTnameText.TextWrapped = true

_110.Name = "110"
_110.Parent = TreeTiers
_110.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_110.BackgroundTransparency = 1.000
_110.BorderColor3 = Color3.fromRGB(0, 0, 0)
_110.BorderSizePixel = 0
_110.Position = UDim2.new(0.398181826, 0, 0.589999974, 0)
_110.Size = UDim2.new(0, 123, 0, 24)
_110.Visible = false
_110.Font = Enum.Font.SourceSans
_110.Text = "nothing for now :("
_110.TextColor3 = Color3.fromRGB(0, 0, 0)
_110.TextScaled = true
_110.TextSize = 14.000
_110.TextWrapped = true

AutoTreeStage.Name = "AutoTreeStage"
AutoTreeStage.Parent = TreeTiers
AutoTreeStage.Active = true
AutoTreeStage.BackgroundColor3 = Color3.fromRGB(91, 50, 127)
AutoTreeStage.BackgroundTransparency = 1.000
AutoTreeStage.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoTreeStage.BorderSizePixel = 0
AutoTreeStage.Position = UDim2.new(0.0159492623, 0, 0.211815357, 0)
AutoTreeStage.Size = UDim2.new(0, 210, 0, 150)

ATStext.Name = "ATStext"
ATStext.Parent = AutoTreeStage
ATStext.BackgroundColor3 = Color3.fromRGB(59, 62, 11)
ATStext.BorderColor3 = Color3.fromRGB(0, 0, 0)
ATStext.BorderSizePixel = 0
ATStext.Position = UDim2.new(0.0238095243, 0, 0.0466666669, 0)
ATStext.Size = UDim2.new(0, 200, 0, 50)
ATStext.Font = Enum.Font.SourceSans
ATStext.Text = "Auto Tree Stage"
ATStext.TextColor3 = Color3.fromRGB(255, 255, 255)
ATStext.TextScaled = true
ATStext.TextSize = 14.000
ATStext.TextStrokeColor3 = Color3.fromRGB(255, 157, 19)
ATStext.TextStrokeTransparency = 0.500
ATStext.TextWrapped = true

ATSbutton.Name = "ATSbutton"
ATSbutton.Parent = AutoTreeStage
ATSbutton.BackgroundColor3 = Color3.fromRGB(255, 219, 88)
ATSbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ATSbutton.BorderSizePixel = 0
ATSbutton.Position = UDim2.new(0.0238095243, 0, 0.439999998, 0)
ATSbutton.Size = UDim2.new(0, 200, 0, 75)
ATSbutton.AutoButtonColor = false
ATSbutton.Font = Enum.Font.SourceSans
ATSbutton.Text = "Enable"
ATSbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
ATSbutton.TextScaled = true
ATSbutton.TextSize = 14.000
ATSbutton.TextWrapped = true

TTcurrentTiersText.Name = "TTcurrentTiersText"
TTcurrentTiersText.Parent = TreeTiers
TTcurrentTiersText.Active = true
TTcurrentTiersText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TTcurrentTiersText.BackgroundTransparency = 1.000
TTcurrentTiersText.BorderColor3 = Color3.fromRGB(0, 0, 0)
TTcurrentTiersText.BorderSizePixel = 0
TTcurrentTiersText.Position = UDim2.new(0, 0, 0.0946236551, 0)
TTcurrentTiersText.Size = UDim2.new(0, 550, 0, 50)
TTcurrentTiersText.ZIndex = 2
TTcurrentTiersText.Font = Enum.Font.Fantasy
TTcurrentTiersText.Text = "Current Tier: <x>"
TTcurrentTiersText.TextColor3 = Color3.fromRGB(255, 255, 255)
TTcurrentTiersText.TextScaled = true
TTcurrentTiersText.TextSize = 14.000
TTcurrentTiersText.TextWrapped = true
TTcurrentTiersText.RichText = true

Astrofy.Name = "Astrofy"
Astrofy.Parent = MainSection
Astrofy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Astrofy.BorderColor3 = Color3.fromRGB(0, 0, 0)
Astrofy.BorderSizePixel = 0
Astrofy.LayoutOrder = 2
Astrofy.Position = UDim2.new(0.0221088436, 0, 0.169392526, 0)
Astrofy.Size = UDim2.new(0, 550, 0, 100)

UIGradient_9.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(116, 2, 6)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(48, 3, 4))}
UIGradient_9.Parent = Astrofy

NameText_3.Name = "NameText"
NameText_3.Parent = Astrofy
NameText_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameText_3.BackgroundTransparency = 1.000
NameText_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameText_3.BorderSizePixel = 0
NameText_3.Position = UDim2.new(0.318181813, 0, 0, 0)
NameText_3.Size = UDim2.new(0, 200, 0, 50)
NameText_3.Font = Enum.Font.GothamBold
NameText_3.Text = "Astrofy"
NameText_3.TextColor3 = Color3.fromRGB(255, 0, 4)
NameText_3.TextScaled = true
NameText_3.TextSize = 14.000
NameText_3.TextStrokeTransparency = 0.500
NameText_3.TextWrapped = true

TextLabel.Parent = Astrofy
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.398181826, 0, 0.589999974, 0)
TextLabel.Size = UDim2.new(0, 123, 0, 24)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "nothing for now :("
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Stellarify.Name = "Stellarify"
Stellarify.Parent = MainSection
Stellarify.BackgroundColor3 = Color3.fromRGB(49, 5, 48)
Stellarify.BorderColor3 = Color3.fromRGB(200, 15, 197)
Stellarify.BorderSizePixel = 5
Stellarify.LayoutOrder = 3
Stellarify.Position = UDim2.new(0, 0, 0.0152761461, 0)
Stellarify.Size = UDim2.new(0, 550, 0, 278)

UIGradient_10.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(116, 2, 6)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(48, 3, 4))}
UIGradient_10.Parent = Stellarify

SnameText.Name = "SnameText"
SnameText.Parent = Stellarify
SnameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SnameText.BackgroundTransparency = 1.000
SnameText.BorderColor3 = Color3.fromRGB(0, 0, 0)
SnameText.BorderSizePixel = 0
SnameText.Position = UDim2.new(0.318181813, 0, 0, 0)
SnameText.Size = UDim2.new(0, 200, 0, 50)
SnameText.Font = Enum.Font.Unknown
SnameText.Text = "Stellarify"
SnameText.TextColor3 = Color3.fromRGB(213, 62, 255)
SnameText.TextScaled = true
SnameText.TextSize = 14.000
SnameText.TextStrokeTransparency = 0.500
SnameText.TextWrapped = true

UIGradient_11.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(249, 37, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 3, 139))}
UIGradient_11.Rotation = 90
UIGradient_11.Parent = SnameText

StarFormationText.Name = "StarFormationText"
StarFormationText.Parent = Stellarify
StarFormationText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StarFormationText.BackgroundTransparency = 1.000
StarFormationText.BorderColor3 = Color3.fromRGB(0, 0, 0)
StarFormationText.BorderSizePixel = 0
StarFormationText.Position = UDim2.new(0.25090909, 0, 0.273453206, 0)
StarFormationText.Size = UDim2.new(0, 284, 0, 43)
StarFormationText.Font = Enum.Font.Unknown
StarFormationText.Text = "Star Formation"
StarFormationText.TextColor3 = Color3.fromRGB(235, 225, 38)
StarFormationText.TextScaled = true
StarFormationText.TextSize = 14.000
StarFormationText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
StarFormationText.TextStrokeTransparency = 0.500
StarFormationText.TextWrapped = true

SamountText.Name = "SamountText"
SamountText.Parent = Stellarify
SamountText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SamountText.BackgroundTransparency = 1.000
SamountText.BorderColor3 = Color3.fromRGB(0, 0, 0)
SamountText.BorderSizePixel = 0
SamountText.Position = UDim2.new(0.25090909, 0, 0.154676259, 0)
SamountText.Size = UDim2.new(0, 284, 0, 35)
SamountText.Font = Enum.Font.SourceSans
SamountText.Text = "You have Stellarified <x> times."
SamountText.TextColor3 = Color3.fromRGB(255, 255, 255)
SamountText.TextScaled = true
SamountText.TextSize = 14.000
SamountText.TextWrapped = true
SamountText.RichText = true

StarFormation.Name = "StarFormation"
StarFormation.Parent = Stellarify
StarFormation.Active = true
StarFormation.BackgroundColor3 = Color3.fromRGB(36, 4, 35)
StarFormation.BorderColor3 = Color3.fromRGB(0, 0, 0)
StarFormation.BorderSizePixel = 0
StarFormation.Position = UDim2.new(0.025040172, 0, 0.428057551, 0)
StarFormation.Size = UDim2.new(0, 527, 0, 100)
StarFormation.CanvasSize = UDim2.new(2, 0, 0, 0)

AutoStarForm.Name = "AutoStarForm"
AutoStarForm.Parent = StarFormation
AutoStarForm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoStarForm.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoStarForm.BorderSizePixel = 0
AutoStarForm.Position = UDim2.new(0.0090909088, 0, 0.0799999982, 0)
AutoStarForm.Size = UDim2.new(0, 100, 0, 78)

ASFbutton.Name = "ASFbutton"
ASFbutton.Parent = AutoStarForm
ASFbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ASFbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ASFbutton.BorderSizePixel = 0
ASFbutton.Size = UDim2.new(0, 100, 0, 29)
ASFbutton.Font = Enum.Font.SourceSans
ASFbutton.Text = "Enable"
ASFbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
ASFbutton.TextScaled = true
ASFbutton.TextSize = 14.000
ASFbutton.TextStrokeTransparency = 0.100
ASFbutton.TextWrapped = true

UIGradient_12.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(243, 255, 10)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(151, 153, 7))}
UIGradient_12.Rotation = -90
UIGradient_12.Parent = ASFbutton

ASFtext.Name = "ASFtext"
ASFtext.Parent = AutoStarForm
ASFtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ASFtext.BackgroundTransparency = 1.000
ASFtext.BorderColor3 = Color3.fromRGB(0, 0, 0)
ASFtext.BorderSizePixel = 0
ASFtext.Position = UDim2.new(0, 0, 0.371794879, 0)
ASFtext.Size = UDim2.new(0, 100, 0, 50)
ASFtext.Font = Enum.Font.Unknown
ASFtext.Text = "Auto Star Formation"
ASFtext.TextColor3 = Color3.fromRGB(0, 0, 0)
ASFtext.TextScaled = true
ASFtext.TextSize = 14.000
ASFtext.TextTransparency = 1.000
ASFtext.TextWrapped = true
ASFtext.RichText = true

UIStroke.Name = "ASFtextStroke"
UIStroke.Parent = ASFtext
UIStroke.Thickness = 0.6
UIStroke.Transparency = 0

UIGradient_13.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 85, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 255))}
UIGradient_13.Parent = AutoStarForm

UIGridLayout.Parent = StarFormation
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 25, 0, 0)

UIPadding_3.Parent = StarFormation
UIPadding_3.PaddingLeft = UDim.new(0, 10)

Supernova.Name = "Supernova"
Supernova.Parent = MainSection
Supernova.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Supernova.BorderColor3 = Color3.fromRGB(0, 0, 0)
Supernova.BorderSizePixel = 0
Supernova.LayoutOrder = 5
Supernova.Position = UDim2.new(0, 0, -0.0440658033, 0)
Supernova.Size = UDim2.new(0, 550, 0, 550)

UIGradient_14.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(232, 206, 5)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(48, 3, 4))}
UIGradient_14.Rotation = 84
UIGradient_14.Parent = Supernova

SNnameText.Name = "SNnameText"
SNnameText.Parent = Supernova
SNnameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SNnameText.BackgroundTransparency = 1.000
SNnameText.BorderColor3 = Color3.fromRGB(0, 0, 0)
SNnameText.BorderSizePixel = 0
SNnameText.Position = UDim2.new(0.318181813, 0, 0, 0)
SNnameText.Size = UDim2.new(0, 200, 0, 50)
SNnameText.Font = Enum.Font.Unknown
SNnameText.Text = "Supernova"
SNnameText.TextColor3 = Color3.fromRGB(255, 218, 5)
SNnameText.TextScaled = true
SNnameText.TextSize = 14.000
SNnameText.TextStrokeTransparency = 0.500
SNnameText.TextWrapped = true

_111.Name = "111"
_111.Parent = Supernova
_111.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_111.BackgroundTransparency = 1.000
_111.BorderColor3 = Color3.fromRGB(0, 0, 0)
_111.BorderSizePixel = 0
_111.Position = UDim2.new(0.398181826, 0, 0.589999974, 0)
_111.Size = UDim2.new(0, 123, 0, 24)
_111.Visible = false
_111.Font = Enum.Font.SourceSans
_111.Text = "nothing for now :("
_111.TextColor3 = Color3.fromRGB(0, 0, 0)
_111.TextScaled = true
_111.TextSize = 14.000
_111.TextWrapped = true

SNcurrentMilestone.Name = "SNcurrentMilestone"
SNcurrentMilestone.Parent = Supernova
SNcurrentMilestone.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SNcurrentMilestone.BackgroundTransparency = 1.000
SNcurrentMilestone.BorderColor3 = Color3.fromRGB(0, 0, 0)
SNcurrentMilestone.BorderSizePixel = 0
SNcurrentMilestone.Position = UDim2.new(0.0781818181, 0, 0.0636363626, 0)
SNcurrentMilestone.Size = UDim2.new(0, 468, 0, 31)
SNcurrentMilestone.Font = Enum.Font.SourceSansSemibold
SNcurrentMilestone.Text = "Current Milestone: <x>"
SNcurrentMilestone.TextColor3 = Color3.fromRGB(255, 255, 255)
SNcurrentMilestone.TextScaled = true
SNcurrentMilestone.TextSize = 14.000
SNcurrentMilestone.TextStrokeTransparency = 0.500
SNcurrentMilestone.TextWrapped = true
SNcurrentMilestone.RichText = true

Settings.Name = "Settings"
Settings.Parent = Frames
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.0213903747, 0, 0.197573662, 0)
Settings.Size = UDim2.new(0, 896, 0, 430)
Settings.Visible = false

UIGradient_15.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(20, 20, 20)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(33, 21, 35)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(49, 49, 49))}
UIGradient_15.Parent = Settings

ExitButton.Name = "ExitButton"
ExitButton.Parent = Settings
ExitButton.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
ExitButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExitButton.BorderSizePixel = 0
ExitButton.Position = UDim2.new(0.8515625, 0, 0, 0)
ExitButton.Size = UDim2.new(0, 133, 0, 50)
ExitButton.Font = Enum.Font.SourceSans
ExitButton.Text = "Close the Menu"
ExitButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ExitButton.TextScaled = true
ExitButton.TextSize = 14.000
ExitButton.TextWrapped = true
ExitButton.MouseButton1Down:Connect(function()
	GUT2Script:Destroy()
end)

HighlightLinusCubes.Name = "HighlightLinusCubes"
HighlightLinusCubes.Parent = Settings
HighlightLinusCubes.Active = true
HighlightLinusCubes.BackgroundColor3 = Color3.fromRGB(127, 127, 127)
HighlightLinusCubes.BorderColor3 = Color3.fromRGB(0, 0, 0)
HighlightLinusCubes.BorderSizePixel = 0
HighlightLinusCubes.Position = UDim2.new(0.0323129259, 0, 0.0268691592, 0)
HighlightLinusCubes.Size = UDim2.new(0, 210, 0, 150)

Textlinus.Name = "Textlinus"
Textlinus.Parent = HighlightLinusCubes
Textlinus.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
Textlinus.BorderColor3 = Color3.fromRGB(0, 0, 0)
Textlinus.BorderSizePixel = 0
Textlinus.Position = UDim2.new(0.0238095243, 0, 0.0466666669, 0)
Textlinus.Size = UDim2.new(0, 200, 0, 50)
Textlinus.Font = Enum.Font.SourceSans
Textlinus.Text = "Highlight All Linus Cubes"
Textlinus.TextColor3 = Color3.fromRGB(255, 255, 255)
Textlinus.TextScaled = true
Textlinus.TextSize = 14.000
Textlinus.TextStrokeTransparency = 0.500
Textlinus.TextWrapped = true

highlight.Name = "highlight"
highlight.Parent = HighlightLinusCubes
highlight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
highlight.BorderColor3 = Color3.fromRGB(0, 0, 0)
highlight.BorderSizePixel = 0
highlight.Position = UDim2.new(0.0238095243, 0, 0.439999998, 0)
highlight.Size = UDim2.new(0, 200, 0, 75)
highlight.ZIndex = 3
highlight.Font = Enum.Font.SourceSans
highlight.Text = "Disabled"
highlight.TextColor3 = Color3.fromRGB(0, 0, 0)
highlight.TextScaled = true
highlight.TextSize = 14.000
highlight.TextWrapped = true

Buttons_2.Name = "Buttons"
Buttons_2.Parent = MainUI
Buttons_2.Active = true
Buttons_2.BackgroundColor3 = Color3.fromRGB(61, 53, 95)
Buttons_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Buttons_2.BorderSizePixel = 0
Buttons_2.Position = UDim2.new(0.0213903747, 0, 0.0641247854, 0)
Buttons_2.Size = UDim2.new(0, 896, 0, 63)
Buttons_2.CanvasSize = UDim2.new(4, 0, 0, 0)
Buttons_2.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
Buttons_2.ScrollBarThickness = 8

UIListLayout_3.Parent = Buttons_2
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.Padding = UDim.new(0, 15)

UIPadding_4.Parent = Buttons_2
UIPadding_4.PaddingLeft = UDim.new(0, 15)
UIPadding_4.PaddingTop = UDim.new(0, 5)

SettingsButton.Name = "SettingsButton"
SettingsButton.Parent = Buttons_2
SettingsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SettingsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SettingsButton.BorderSizePixel = 0
SettingsButton.Position = UDim2.new(-0.00939597283, 0, 0, 0)
SettingsButton.Size = UDim2.new(0, 200, 0, 50)
SettingsButton.Font = Enum.Font.JosefinSans
SettingsButton.Text = "Settings"
SettingsButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SettingsButton.TextSize = 33.000
SettingsButton.TextWrapped = true

UIGradient_16.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(202, 202, 202)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(184, 184, 184))}
UIGradient_16.Parent = SettingsButton

AutomateButton.Name = "AutomateButton"
AutomateButton.Parent = Buttons_2
AutomateButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutomateButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutomateButton.BorderSizePixel = 0
AutomateButton.Position = UDim2.new(0.00246490631, 0, 0.114290275, 0)
AutomateButton.Size = UDim2.new(0, 200, 0, 50)
AutomateButton.Font = Enum.Font.JosefinSans
AutomateButton.Text = "Automate"
AutomateButton.TextColor3 = Color3.fromRGB(0, 0, 0)
AutomateButton.TextSize = 33.000
AutomateButton.TextWrapped = true

UIGradient_17.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(94, 94, 94)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(184, 184, 184))}
UIGradient_17.Parent = AutomateButton

-- Scripts:

local function FDIJIIW_fake_script() -- MainUI.FirstLayerOfSortingThings 
	local script = Instance.new('LocalScript', MainUI)

	local buttonsFolder = script.Parent:WaitForChild("Buttons")
	local framesFolder = script.Parent:WaitForChild("Frames")
	
	--All Buttons
	local AutoButton = buttonsFolder:WaitForChild("AutomateButton")
	local SettingsButton = buttonsFolder:WaitForChild("SettingsButton")
	
	--All Frames
	local Automatization = framesFolder:WaitForChild("Automatizaion")
	local Settings = framesFolder:WaitForChild("Settings")
	
	-- Hide all frames
	local function hideAllFrames()
		for _, frame in pairs(framesFolder:GetChildren()) do
			if frame:IsA("Frame") then
				frame.Visible = false
			end
		end
	end
	
	-- Switch function
	local function switchFrame(frame)
		hideAllFrames()
		frame.Visible = true
	end
	
	-- 🔗 Mapping buttons to frames
	local buttonToFrame = {
		[AutoButton]=Automatization,
		[SettingsButton]=Settings
	}
	
	-- Connect buttons
	for button, frame in pairs(buttonToFrame) do
		print(button, frame)
		button.MouseButton1Click:Connect(function()
			switchFrame(frame)
		end)
	end
end
coroutine.wrap(FDIJIIW_fake_script)()
local function VYLY_fake_script() -- Automatizaion.SecondLayerOfSortingThings 
	local script = Instance.new('LocalScript', Automatizaion)

	local buttonsFolder = script.Parent:WaitForChild("Buttons")
	local framesFolder = script.Parent:WaitForChild("Frames")
	
	--All Buttons
	local MainButton = buttonsFolder:WaitForChild("MainButton")
	local SGbutton = buttonsFolder:WaitForChild("SGbutton")
	local EHbutton = buttonsFolder:WaitForChild("EHbutton")
	local PBBbutton = buttonsFolder:WaitForChild("PBBbutton")
	
	--All Frames
	local MainSection = framesFolder:WaitForChild("MainSection")
	local StarryGround = framesFolder:WaitForChild("StarryGround")
	local EventHorizon = framesFolder:WaitForChild("EventHorizon")
	local PostBigBang = framesFolder:WaitForChild("PostBigBang")
	
	-- Hide all frames
	local function hideAllFrames()
		for _, frame in pairs(framesFolder:GetChildren()) do
			if frame:IsA("ScrollingFrame") then
				frame.Visible = false
			end
		end
	end
	
	-- Switch function
	local function switchFrame(frame)
		hideAllFrames()
		frame.Visible = true
	end
	
	-- 🔗 Mapping buttons to frames
	local buttonToFrame = {
		[MainButton]=MainSection,
		[SGbutton]=StarryGround,
		[EHbutton]=EventHorizon,
		[PBBbutton]=PostBigBang
	}
	
	-- Connect buttons
	for button, frame in pairs(buttonToFrame) do
		print(button, frame)
		button.MouseButton1Click:Connect(function()
			switchFrame(frame)
		end)
	end
end
coroutine.wrap(VYLY_fake_script)()
local function HIJBTX_fake_script() -- EHacButton.EHautocollect 
	local script = Instance.new('LocalScript', EHacButton)

	-- Place this in a LocalScript inside StarterGui
	local button = script.Parent
	local player = game.Players.LocalPlayer
	
	local active = false
	
	local function updateButtonText()
		active = not active
	
	
		button.Text = active and "Enabled" or "Disabled"
	end
	
	button.MouseButton1Click:Connect(function()
		updateButtonText()
	end)
	
	-- Loop that constantly checks
	task.spawn(function()
		while true do
			if active then
				local character = player.Character or player.CharacterAdded:Wait()
				local rootPart = character:WaitForChild("HumanoidRootPart")
				
				local graviton = workspace:WaitForChild("EventHorizon"):WaitForChild("spawned"):WaitForChild("Graviton")
	
				rootPart.CFrame = graviton.CFrame
			end
	
			task.wait(0.2)
		end
	end)
	
end
coroutine.wrap(HIJBTX_fake_script)()
local function CNQVBKT_fake_script() -- AutoADHDButton.AutoClick 
	local script = Instance.new('LocalScript', AutoADHDButton)

	--local button = script.Parent
	--local rootPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	
	--local active = false
	
	--button.MouseButton1Click:Connect(function()
	--	if active == false then
	--		active = true
	--		--button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	--		button.Text = "Activated"
	--	else
	--		active = false
	--		--button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	--		button.Text = "Disabled"
	--	end
	--end)
	
	--while active do
	--	rootPart.CFrame = workspace.EventHorizon.spawned.Graviton.CFrame
	--	wait(0.2)
	--end
	local button = script.Parent
	local player = game.Players.LocalPlayer
	
	local active = false
	
	button.MouseButton1Click:Connect(function()
		active = not active
	
		if active then
			button.Text = "Activated"
		else
			button.Text = "Disabled"
		end
	end)
	
	-- Loop that constantly checks
	task.spawn(function()
		while true do
			if active then
				fireclickdetector(workspace.Cube["1 ADHD cube"].ClickDetector)
				--Keep in mind, that even it works, you need atleast be in range of 32 studs to clickdetector
			end
	
			task.wait(0.2)
		end
	end)
	
end
coroutine.wrap(CNQVBKT_fake_script)()
local function ZKNASUJ_fake_script() -- AmountOfClicks.TrackingStatADHD 
	local script = Instance.new('LocalScript', AmountOfClicks)

	local text = script.Parent
	local amountValue = workspace.Values.GameStats.Currencies.ADHDclicks
	
	local function updateChange()
		text.Text = "Total clicks: 1e" .. amountValue.Value
	end
	
	amountValue.Changed:Connect(updateChange)
	
	updateChange()
	
	
	
	
end
coroutine.wrap(ZKNASUJ_fake_script)()
local function DKNGQTZ_fake_script() -- TotalAmountOfGoldCubes.TrackingStatGADHD 
	local script = Instance.new('LocalScript', TotalAmountOfGoldCubes)

	local text = script.Parent
	local cubeFolder = workspace:WaitForChild("Cube"):WaitForChild("curr")
	
	local goldCube -- will be assigned later
	
	-- Function to update UI
	local function updateCount()
		if goldCube then
			local amount = #goldCube:GetChildren()
			text.Text = "Current Gold Cubes: " .. amount .. "/100"
		else
			text.Text = "Current Gold Cubes: 0/100"
		end
	end
	
	-- Function to hook into gcube when it appears
	local function setupFolder(folder)
		goldCube = folder
	
		updateCount()
	
		folder.ChildAdded:Connect(updateCount)
		folder.ChildRemoved:Connect(updateCount)
	end
	
	-- Check if gcube already exists
	local existing = cubeFolder:FindFirstChild("gcube")
	if existing then
		setupFolder(existing)
	else
		updateCount() -- show 0 until it exists
	end
	
	-- Listen for gcube being created later
	cubeFolder.ChildAdded:Connect(function(child)
		if child.Name == "gcube" then
			setupFolder(child)
		end
	end)
coroutine.wrap(DKNGQTZ_fake_script)()
-- TotalAmountOfDiamondCubes.TrackingStat is disabled.
-- TotalAmountOfUnobtaniumCubes.TrackingStat is disabled.
local function TRZKNBY_fake_script() -- ATSbutton.ATSscript 
	local script = Instance.new('LocalScript', ATSbutton)

	local button = script.Parent
	local player = game.Players.LocalPlayer
	
	local fireButton = game:GetService("Players").LocalPlayer.PlayerGui.Boards.TreeTiers.Frame.Reset
	
	local active = false
	
	local function updateButtonText()
		active = not active
	
		print("Clicked! Active =", active) -- debug
	
		button.Text = active and "Enabled" or "Disabled"
	end
	
	button.MouseButton1Click:Connect(function()
		updateButtonText()
	end)
	
	
	-- Loop that constantly checks thiongy
	task.spawn(function()
		while true do
			if active then
				fireButton:Activate()
			end
	
			task.wait(2)
		end
	end)
	
end
coroutine.wrap(TRZKNBY_fake_script)()
local function IPKECT_fake_script() -- TTcurrentTiersText.TTtrackCurrentTIer 
	local script = Instance.new('LocalScript', TTcurrentTiersText)

	local text = script.Parent
	local amount = workspace.Values.GameStats.Currencies:WaitForChild("TreeTierValue")
	
	local function changeText()
		text.Text = "Current Tier: <font color=\"rgb(156, 82, 67)\">"..amount.Value .. "</font>"
	end
	
	changeText()
	amount.Changed:Connect(function()
		changeText()
	end)
end
coroutine.wrap(IPKECT_fake_script)()
local function HXKE_fake_script() -- SamountText.StellarifyAmount 
	local script = Instance.new('LocalScript', SamountText)

	local text = script.Parent
	local Svalue = workspace.Values.GameStats.Currencies:WaitForChild("StellarifyValue")
	
	local function changeText()
		text.Text = "You have Stellarified: <font color=\"rgb(210, 100, 210)\">"..Svalue.Value .. "</font> times."
	end
	changeText()
	Svalue.Changed:Connect(function()
		changeText()
	end)	
end
coroutine.wrap(HXKE_fake_script)()
local function NNCXD_fake_script() -- ASFbutton.AutoStarForm 
	local script = Instance.new('LocalScript', ASFbutton)

	local button = script.Parent
	local player = game:GetService("Players").LocalPlayer
	local starFormation = player.PlayerGui:WaitForChild("Boards"):WaitForChild("StarFormation")
	
	local active = false
	
	local function updateButtonText()
		active = not active
	
	
		button.Text = active and "Enabled" or "Disabled"
	end
	
	button.MouseButton1Click:Connect(function()
		updateButtonText()
	end)
	
	
	local function BuyStars()
		for i, planet in pairs(starFormation:GetChildren()) do
			local fireButton = planet:FindFirstChild("BuyButton")
	
			if fireButton and fireButton:IsA("TextButton") then
				fireButton:Activate()
			end
		end
	end
	
	task.spawn(function()
		while true do
			if active then
				BuyStars()
			end
	
			task.wait(0.5)
		end
	end)
end
coroutine.wrap(NNCXD_fake_script)()
local function KDWURH_fake_script() -- SNcurrentMilestone.SNtrackMilestone 
	local script = Instance.new('LocalScript', SNcurrentMilestone)

	local text = script.Parent
	local currentMilestone = workspace.Values.GameStats.Currencies:WaitForChild("SupernovaValue")
	
	local function changeText()
		text.Text = "Current Milestone: <font color=\"rgb(255, 140, 0)\">"..currentMilestone.Value .. "</font>"
	end
	changeText()
	currentMilestone.Changed:Connect(function()
		changeText()
	end)	
end
coroutine.wrap(KDWURH_fake_script)()
local function YWYX_fake_script() -- highlight.HighlightLinus 
	local script = Instance.new('LocalScript', highlight)

	local button = script.Parent
	local player = game.Players.LocalPlayer
	local workspace = game:GetService("Workspace")
	
	local active = false
	local highlights = {}
	
	local function createHighlights()
		for _, obj in pairs(workspace:GetDescendants()) do
			if obj:IsA("MeshPart") and string.match(obj.Name, "^linusCube_%d+$") then
	
				-- Avoid duplicating highlights
				if not highlights[obj] then
					local highlight = Instance.new("Highlight")
					highlight.FillColor = Color3.fromRGB(255, 255, 255)
					highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
					highlight.FillTransparency = 0.5
					highlight.Enabled = active
					highlight.Parent = obj
	
					highlights[obj] = highlight
				end
	
			end
		end
	end
	
	button.MouseButton1Click:Connect(function()
		active = not active
	
		button.Text = active and "Activated" or "Disabled"
	
		-- Create highlights if not already made
		createHighlights()
	
		-- Enable/disable all highlights
		for i, highlight in pairs(highlights) do
			if highlight then
				highlight.Enabled = active
			end
		end
	end)
end
coroutine.wrap(YWYX_fake_script)()
