-- Gui to Lua
-- Version: 3.2

-- Instances:

local GUT2Script = Instance.new("ScreenGui")
local MainUI = Instance.new("Frame")
local NameText = Instance.new("TextLabel")
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
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local EventHorizon = Instance.new("ScrollingFrame")
local AutoCollect_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton_2 = Instance.new("TextButton")
local PostBigBang = Instance.new("ScrollingFrame")
local ADHD = Instance.new("Frame")
local AutoADHD = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")
local warningText = Instance.new("TextLabel")
local _1NameSection = Instance.new("TextLabel")
local Stats = Instance.new("Frame")
local AmountOfClicks = Instance.new("TextLabel")
local TotalAmountOfGoldCubes = Instance.new("TextLabel")
local TotalAmountOfDiamondCubes = Instance.new("TextLabel")
local TotalAmountOfUnobtaniumCubes = Instance.new("TextLabel")
local MainSection = Instance.new("ScrollingFrame")
local CosmicDust = Instance.new("Frame")
local UIGradient_6 = Instance.new("UIGradient")
local NameText_2 = Instance.new("TextLabel")
local awaitText = Instance.new("TextLabel")
local Terraforium = Instance.new("Frame")
local UIGradient_7 = Instance.new("UIGradient")
local NameText_3 = Instance.new("TextLabel")
local awaitText_2 = Instance.new("TextLabel")
local UIPadding_2 = Instance.new("UIPadding")
local UIListLayout_2 = Instance.new("UIListLayout")
local TreeTiers = Instance.new("Frame")
local UIGradient_8 = Instance.new("UIGradient")
local NameText_4 = Instance.new("TextLabel")
local awaitText_3 = Instance.new("TextLabel")
local AutoTreeStage = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local TextButton_4 = Instance.new("TextButton")
local currentTierText = Instance.new("TextLabel")
local Astrofy = Instance.new("Frame")
local UIGradient_9 = Instance.new("UIGradient")
local NameText_5 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local Stellarify = Instance.new("Frame")
local UIGradient_10 = Instance.new("UIGradient")
local NameText_6 = Instance.new("TextLabel")
local UIGradient_11 = Instance.new("UIGradient")
local SFtext = Instance.new("TextLabel")
local amountText = Instance.new("TextLabel")
local StarFormation = Instance.new("ScrollingFrame")
local AutoStarForm = Instance.new("Frame")
local TextButton_5 = Instance.new("TextButton")
local UIGradient_12 = Instance.new("UIGradient")
local TextLabel_6 = Instance.new("TextLabel")
local UIGradient_13 = Instance.new("UIGradient")
local UIGridLayout = Instance.new("UIGridLayout")
local AutoStarForm_2 = Instance.new("Frame")
local TextButton_6 = Instance.new("TextButton")
local UIGradient_14 = Instance.new("UIGradient")
local TextLabel_7 = Instance.new("TextLabel")
local UIGradient_15 = Instance.new("UIGradient")
local UIPadding_3 = Instance.new("UIPadding")
local Supernova = Instance.new("Frame")
local UIGradient_16 = Instance.new("UIGradient")
local NameText_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local CurrentMilestone = Instance.new("TextLabel")
local Settings = Instance.new("Frame")
local UIGradient_17 = Instance.new("UIGradient")
local ExitButton = Instance.new("TextButton")
local HighlightLinusCubes = Instance.new("Frame")
local TextLabel_9 = Instance.new("TextLabel")
local TextButton_7 = Instance.new("TextButton")
local Buttons_2 = Instance.new("ScrollingFrame")
local UIListLayout_3 = Instance.new("UIListLayout")
local UIPadding_4 = Instance.new("UIPadding")
local SettingsButton = Instance.new("TextButton")
local UIGradient_18 = Instance.new("UIGradient")
local AutomaticButton = Instance.new("TextButton")
local UIGradient_19 = Instance.new("UIGradient")

--Properties:

GUT2Script.Name = "GUT2 Script"
GUT2Script.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
GUT2Script.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
GUT2Script.ResetOnSpawn = false

MainUI.Name = "MainUI"
MainUI.Parent = GUT2Script
MainUI.BackgroundColor3 = Color3.fromRGB(35, 26, 53)
MainUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainUI.BorderSizePixel = 0
MainUI.Position = UDim2.new(0.138602033, 0, 0.195551559, 0)
MainUI.Size = UDim2.new(0, 935, 0, 577)

NameText.Name = "NameText"
NameText.Parent = MainUI
NameText.Active = true
NameText.BackgroundColor3 = Color3.fromRGB(70, 25, 98)
NameText.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameText.BorderSizePixel = 0
NameText.Position = UDim2.new(0, 0, -0.0872128904, 0)
NameText.Size = UDim2.new(0, 935, 0, 66)
NameText.Font = Enum.Font.Bodoni
NameText.LineHeight = 3.000
NameText.Text = "The Galaxy Upgrade Tree 2 Script"
NameText.TextColor3 = Color3.fromRGB(255, 255, 255)
NameText.TextScaled = true
NameText.TextSize = 14.000
NameText.TextStrokeTransparency = 0.500
NameText.TextWrapped = true

Frames.Name = "Frames"
Frames.Parent = MainUI

Automatizaion.Name = "Automatizaion"
Automatizaion.Parent = Frames
Automatizaion.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Automatizaion.BorderColor3 = Color3.fromRGB(0, 0, 0)
Automatizaion.BorderSizePixel = 0
Automatizaion.Position = UDim2.new(0.0495867878, 0, 0.20229885, 0)
Automatizaion.Size = UDim2.new(0, 261, 0, 428)

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

TextLabel.Parent = AutoCollect
TextLabel.BackgroundColor3 = Color3.fromRGB(28, 21, 62)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0238095243, 0, 0.0466666669, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Auto Collect Starries"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 124, 255)
TextLabel.TextStrokeTransparency = 0.500
TextLabel.TextWrapped = true

TextButton.Parent = AutoCollect
TextButton.BackgroundColor3 = Color3.fromRGB(87, 205, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0238095243, 0, 0.439999998, 0)
TextButton.Size = UDim2.new(0, 200, 0, 75)
TextButton.AutoButtonColor = false
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Disabled/Enabled"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

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

TextLabel_2.Parent = AutoCollect_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(28, 21, 62)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0238095243, 0, 0.0466666669, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Auto Collect Gravitons"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextStrokeColor3 = Color3.fromRGB(0, 242, 255)
TextLabel_2.TextStrokeTransparency = 0.500
TextLabel_2.TextWrapped = true

TextButton_2.Parent = AutoCollect_2
TextButton_2.BackgroundColor3 = Color3.fromRGB(87, 205, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.0238095243, 0, 0.439999998, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 75)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Enable"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

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

TextLabel_3.Parent = AutoADHD
TextLabel_3.BackgroundColor3 = Color3.fromRGB(247, 255, 93)
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0238095243, 0, 0.0466666669, 0)
TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
TextLabel_3.Font = Enum.Font.Fantasy
TextLabel_3.Text = "Auto Click za ADHD Cube"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextStrokeTransparency = 0.500
TextLabel_3.TextWrapped = true

TextButton_3.Parent = AutoADHD
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.0238095243, 0, 0.307999998, 0)
TextButton_3.Size = UDim2.new(0, 200, 0, 75)
TextButton_3.ZIndex = 3
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Disabled"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

warningText.Name = "warningText"
warningText.Parent = AutoADHD
warningText.BackgroundColor3 = Color3.fromRGB(255, 204, 0)
warningText.BorderColor3 = Color3.fromRGB(0, 0, 0)
warningText.BorderSizePixel = 0
warningText.Position = UDim2.new(0.0238095243, 0, 0.65200001, 0)
warningText.Size = UDim2.new(0, 200, 0, 77)
warningText.Font = Enum.Font.Unknown
warningText.Text = "Keep in mind, that it ONLY works within 32 studs from ADHD cube."
warningText.TextColor3 = Color3.fromRGB(255, 0, 4)
warningText.TextScaled = true
warningText.TextSize = 14.000
warningText.TextWrapped = true

_1NameSection.Name = "1NameSection"
_1NameSection.Parent = ADHD
_1NameSection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_1NameSection.BorderColor3 = Color3.fromRGB(0, 0, 0)
_1NameSection.BorderSizePixel = 0
_1NameSection.Position = UDim2.new(0, 0, -0.111351199, 0)
_1NameSection.Size = UDim2.new(0, 588, 0, 50)
_1NameSection.Font = Enum.Font.PermanentMarker
_1NameSection.Text = "A D H D"
_1NameSection.TextColor3 = Color3.fromRGB(0, 0, 0)
_1NameSection.TextScaled = true
_1NameSection.TextSize = 14.000
_1NameSection.TextWrapped = true

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
MainSection.CanvasPosition = Vector2.new(0, 284)
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

NameText_2.Name = "NameText"
NameText_2.Parent = CosmicDust
NameText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameText_2.BackgroundTransparency = 1.000
NameText_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameText_2.BorderSizePixel = 0
NameText_2.Position = UDim2.new(0.318181813, 0, 0, 0)
NameText_2.Size = UDim2.new(0, 200, 0, 50)
NameText_2.Font = Enum.Font.GothamBold
NameText_2.Text = "Cosmic Dust"
NameText_2.TextColor3 = Color3.fromRGB(0, 0, 0)
NameText_2.TextScaled = true
NameText_2.TextSize = 14.000
NameText_2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
NameText_2.TextStrokeTransparency = 0.500
NameText_2.TextWrapped = true

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

NameText_3.Name = "NameText"
NameText_3.Parent = Terraforium
NameText_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameText_3.BackgroundTransparency = 1.000
NameText_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameText_3.BorderSizePixel = 0
NameText_3.Position = UDim2.new(0.318181813, 0, 0, 0)
NameText_3.Size = UDim2.new(0, 200, 0, 50)
NameText_3.Font = Enum.Font.GothamBold
NameText_3.Text = "Terraforium"
NameText_3.TextColor3 = Color3.fromRGB(103, 255, 121)
NameText_3.TextScaled = true
NameText_3.TextSize = 14.000
NameText_3.TextStrokeTransparency = 0.500
NameText_3.TextWrapped = true

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

NameText_4.Name = "NameText"
NameText_4.Parent = TreeTiers
NameText_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameText_4.BackgroundTransparency = 1.000
NameText_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameText_4.BorderSizePixel = 0
NameText_4.Position = UDim2.new(0.318181813, 0, 0, 0)
NameText_4.Size = UDim2.new(0, 200, 0, 50)
NameText_4.Font = Enum.Font.GothamBold
NameText_4.Text = "Tree Tiers"
NameText_4.TextColor3 = Color3.fromRGB(116, 71, 15)
NameText_4.TextScaled = true
NameText_4.TextSize = 14.000
NameText_4.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
NameText_4.TextStrokeTransparency = 0.500
NameText_4.TextWrapped = true

awaitText_3.Name = "awaitText"
awaitText_3.Parent = TreeTiers
awaitText_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
awaitText_3.BackgroundTransparency = 1.000
awaitText_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
awaitText_3.BorderSizePixel = 0
awaitText_3.Position = UDim2.new(0.398181826, 0, 0.589999974, 0)
awaitText_3.Size = UDim2.new(0, 123, 0, 24)
awaitText_3.Visible = false
awaitText_3.Font = Enum.Font.SourceSans
awaitText_3.Text = "nothing for now :("
awaitText_3.TextColor3 = Color3.fromRGB(0, 0, 0)
awaitText_3.TextScaled = true
awaitText_3.TextSize = 14.000
awaitText_3.TextWrapped = true

AutoTreeStage.Name = "AutoTreeStage"
AutoTreeStage.Parent = TreeTiers
AutoTreeStage.Active = true
AutoTreeStage.BackgroundColor3 = Color3.fromRGB(91, 50, 127)
AutoTreeStage.BackgroundTransparency = 1.000
AutoTreeStage.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoTreeStage.BorderSizePixel = 0
AutoTreeStage.Position = UDim2.new(0.0159492623, 0, 0.211815357, 0)
AutoTreeStage.Size = UDim2.new(0, 210, 0, 150)

TextLabel_4.Parent = AutoTreeStage
TextLabel_4.BackgroundColor3 = Color3.fromRGB(59, 62, 11)
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.0238095243, 0, 0.0466666669, 0)
TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Auto Tree Stage"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextStrokeColor3 = Color3.fromRGB(255, 157, 19)
TextLabel_4.TextStrokeTransparency = 0.500
TextLabel_4.TextWrapped = true

TextButton_4.Parent = AutoTreeStage
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 219, 88)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.0238095243, 0, 0.439999998, 0)
TextButton_4.Size = UDim2.new(0, 200, 0, 75)
TextButton_4.AutoButtonColor = false
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Enable"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

currentTierText.Name = "currentTierText"
currentTierText.Parent = TreeTiers
currentTierText.Active = true
currentTierText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
currentTierText.BackgroundTransparency = 1.000
currentTierText.BorderColor3 = Color3.fromRGB(0, 0, 0)
currentTierText.BorderSizePixel = 0
currentTierText.Position = UDim2.new(0, 0, 0.0946236551, 0)
currentTierText.Size = UDim2.new(0, 550, 0, 50)
currentTierText.ZIndex = 2
currentTierText.Font = Enum.Font.Fantasy
currentTierText.Text = "Current Tier: <x>"
currentTierText.TextColor3 = Color3.fromRGB(255, 255, 255)
currentTierText.TextScaled = true
currentTierText.TextSize = 14.000
currentTierText.TextWrapped = true

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

NameText_5.Name = "NameText"
NameText_5.Parent = Astrofy
NameText_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameText_5.BackgroundTransparency = 1.000
NameText_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameText_5.BorderSizePixel = 0
NameText_5.Position = UDim2.new(0.318181813, 0, 0, 0)
NameText_5.Size = UDim2.new(0, 200, 0, 50)
NameText_5.Font = Enum.Font.GothamBold
NameText_5.Text = "Astrofy"
NameText_5.TextColor3 = Color3.fromRGB(255, 0, 4)
NameText_5.TextScaled = true
NameText_5.TextSize = 14.000
NameText_5.TextStrokeTransparency = 0.500
NameText_5.TextWrapped = true

TextLabel_5.Parent = Astrofy
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.398181826, 0, 0.589999974, 0)
TextLabel_5.Size = UDim2.new(0, 123, 0, 24)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "nothing for now :("
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

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

NameText_6.Name = "NameText"
NameText_6.Parent = Stellarify
NameText_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameText_6.BackgroundTransparency = 1.000
NameText_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameText_6.BorderSizePixel = 0
NameText_6.Position = UDim2.new(0.318181813, 0, 0, 0)
NameText_6.Size = UDim2.new(0, 200, 0, 50)
NameText_6.Font = Enum.Font.Unknown
NameText_6.Text = "Stellarify"
NameText_6.TextColor3 = Color3.fromRGB(213, 62, 255)
NameText_6.TextScaled = true
NameText_6.TextSize = 14.000
NameText_6.TextStrokeTransparency = 0.500
NameText_6.TextWrapped = true

UIGradient_11.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(249, 37, 249)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 3, 139))}
UIGradient_11.Rotation = 90
UIGradient_11.Parent = NameText_6

SFtext.Name = "SFtext"
SFtext.Parent = Stellarify
SFtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SFtext.BackgroundTransparency = 1.000
SFtext.BorderColor3 = Color3.fromRGB(0, 0, 0)
SFtext.BorderSizePixel = 0
SFtext.Position = UDim2.new(0.25090909, 0, 0.273453206, 0)
SFtext.Size = UDim2.new(0, 284, 0, 43)
SFtext.Font = Enum.Font.Unknown
SFtext.Text = "Star Formation"
SFtext.TextColor3 = Color3.fromRGB(235, 225, 38)
SFtext.TextScaled = true
SFtext.TextSize = 14.000
SFtext.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
SFtext.TextStrokeTransparency = 0.500
SFtext.TextWrapped = true

amountText.Name = "amountText"
amountText.Parent = Stellarify
amountText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
amountText.BackgroundTransparency = 1.000
amountText.BorderColor3 = Color3.fromRGB(0, 0, 0)
amountText.BorderSizePixel = 0
amountText.Position = UDim2.new(0.25090909, 0, 0.154676259, 0)
amountText.Size = UDim2.new(0, 284, 0, 35)
amountText.Font = Enum.Font.SourceSans
amountText.Text = "You have Stellarified <x> times."
amountText.TextColor3 = Color3.fromRGB(255, 255, 255)
amountText.TextScaled = true
amountText.TextSize = 14.000
amountText.TextWrapped = true

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

TextButton_5.Parent = AutoStarForm
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Size = UDim2.new(0, 100, 0, 29)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "Enable"
TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextStrokeTransparency = 0.100
TextButton_5.TextWrapped = true

UIGradient_12.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(243, 255, 10)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(151, 153, 7))}
UIGradient_12.Rotation = -90
UIGradient_12.Parent = TextButton_5

TextLabel_6.Parent = AutoStarForm
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0, 0, 0.371794879, 0)
TextLabel_6.Size = UDim2.new(0, 100, 0, 50)
TextLabel_6.Font = Enum.Font.Unknown
TextLabel_6.Text = "Auto Star Formation"
TextLabel_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextTransparency = 1.000
TextLabel_6.TextWrapped = true

UIGradient_13.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 85, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 255))}
UIGradient_13.Parent = AutoStarForm

UIGridLayout.Parent = StarFormation
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 25, 0, 0)

AutoStarForm_2.Name = "AutoStarForm"
AutoStarForm_2.Parent = StarFormation
AutoStarForm_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoStarForm_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoStarForm_2.BorderSizePixel = 0
AutoStarForm_2.Position = UDim2.new(0.0090909088, 0, 0.0799999982, 0)
AutoStarForm_2.Size = UDim2.new(0, 100, 0, 78)
AutoStarForm_2.Visible = false

TextButton_6.Parent = AutoStarForm_2
TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.BorderSizePixel = 0
TextButton_6.Size = UDim2.new(0, 100, 0, 29)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "Enable"
TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextStrokeTransparency = 0.100
TextButton_6.TextWrapped = true

UIGradient_14.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(243, 255, 10)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(151, 153, 7))}
UIGradient_14.Rotation = -90
UIGradient_14.Parent = TextButton_6

TextLabel_7.Parent = AutoStarForm_2
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0, 0, 0.371794879, 0)
TextLabel_7.Size = UDim2.new(0, 100, 0, 50)
TextLabel_7.Font = Enum.Font.Unknown
TextLabel_7.Text = "Auto Star Formation"
TextLabel_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextTransparency = 1.000
TextLabel_7.TextWrapped = true

UIGradient_15.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 85, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 255))}
UIGradient_15.Parent = AutoStarForm_2

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

UIGradient_16.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(232, 206, 5)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(48, 3, 4))}
UIGradient_16.Rotation = 84
UIGradient_16.Parent = Supernova

NameText_7.Name = "NameText"
NameText_7.Parent = Supernova
NameText_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameText_7.BackgroundTransparency = 1.000
NameText_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameText_7.BorderSizePixel = 0
NameText_7.Position = UDim2.new(0.318181813, 0, 0, 0)
NameText_7.Size = UDim2.new(0, 200, 0, 50)
NameText_7.Font = Enum.Font.Unknown
NameText_7.Text = "Supernova"
NameText_7.TextColor3 = Color3.fromRGB(255, 218, 5)
NameText_7.TextScaled = true
NameText_7.TextSize = 14.000
NameText_7.TextStrokeTransparency = 0.500
NameText_7.TextWrapped = true

TextLabel_8.Parent = Supernova
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.398181826, 0, 0.589999974, 0)
TextLabel_8.Size = UDim2.new(0, 123, 0, 24)
TextLabel_8.Visible = false
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "nothing for now :("
TextLabel_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true

CurrentMilestone.Name = "CurrentMilestone"
CurrentMilestone.Parent = Supernova
CurrentMilestone.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CurrentMilestone.BackgroundTransparency = 1.000
CurrentMilestone.BorderColor3 = Color3.fromRGB(0, 0, 0)
CurrentMilestone.BorderSizePixel = 0
CurrentMilestone.Position = UDim2.new(0.0781818181, 0, 0.0636363626, 0)
CurrentMilestone.Size = UDim2.new(0, 468, 0, 31)
CurrentMilestone.Font = Enum.Font.SourceSansSemibold
CurrentMilestone.Text = "Current Milestone: <x>"
CurrentMilestone.TextColor3 = Color3.fromRGB(255, 255, 255)
CurrentMilestone.TextScaled = true
CurrentMilestone.TextSize = 14.000
CurrentMilestone.TextStrokeTransparency = 0.500
CurrentMilestone.TextWrapped = true

Settings.Name = "Settings"
Settings.Parent = Frames
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.0213903747, 0, 0.197573662, 0)
Settings.Size = UDim2.new(0, 896, 0, 430)
Settings.Visible = false

UIGradient_17.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(20, 20, 20)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(33, 21, 35)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(49, 49, 49))}
UIGradient_17.Parent = Settings

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

HighlightLinusCubes.Name = "HighlightLinusCubes"
HighlightLinusCubes.Parent = Settings
HighlightLinusCubes.Active = true
HighlightLinusCubes.BackgroundColor3 = Color3.fromRGB(127, 127, 127)
HighlightLinusCubes.BorderColor3 = Color3.fromRGB(0, 0, 0)
HighlightLinusCubes.BorderSizePixel = 0
HighlightLinusCubes.Position = UDim2.new(0.0323129259, 0, 0.0268691592, 0)
HighlightLinusCubes.Size = UDim2.new(0, 210, 0, 150)

TextLabel_9.Parent = HighlightLinusCubes
TextLabel_9.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
TextLabel_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0.0238095243, 0, 0.0466666669, 0)
TextLabel_9.Size = UDim2.new(0, 200, 0, 50)
TextLabel_9.Font = Enum.Font.SourceSans
TextLabel_9.Text = "Highlight All Linus Cubes"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14.000
TextLabel_9.TextStrokeTransparency = 0.500
TextLabel_9.TextWrapped = true

TextButton_7.Parent = HighlightLinusCubes
TextButton_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.BorderSizePixel = 0
TextButton_7.Position = UDim2.new(0.0238095243, 0, 0.439999998, 0)
TextButton_7.Size = UDim2.new(0, 200, 0, 75)
TextButton_7.ZIndex = 3
TextButton_7.Font = Enum.Font.SourceSans
TextButton_7.Text = "Disabled"
TextButton_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.TextScaled = true
TextButton_7.TextSize = 14.000
TextButton_7.TextWrapped = true

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

UIGradient_18.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(202, 202, 202)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(184, 184, 184))}
UIGradient_18.Parent = SettingsButton

AutomaticButton.Name = "AutomaticButton"
AutomaticButton.Parent = Buttons_2
AutomaticButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutomaticButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutomaticButton.BorderSizePixel = 0
AutomaticButton.Position = UDim2.new(0.00246490631, 0, 0.114290275, 0)
AutomaticButton.Size = UDim2.new(0, 200, 0, 50)
AutomaticButton.Font = Enum.Font.JosefinSans
AutomaticButton.Text = "Automate"
AutomaticButton.TextColor3 = Color3.fromRGB(0, 0, 0)
AutomaticButton.TextSize = 33.000
AutomaticButton.TextWrapped = true

UIGradient_19.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(94, 94, 94)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(184, 184, 184))}
UIGradient_19.Parent = AutomaticButton

-- Scripts:

local function WKBQRS_fake_script() -- MainUI.SortingThings 
	local script = Instance.new('LocalScript', MainUI)

	local buttonsFolder = script.Parent:WaitForChild("Buttons")
	local framesFolder = script.Parent:WaitForChild("Frames")
	
	--All Buttons
	local AutoButton = buttonsFolder:WaitForChild("AutomaticButton")
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
coroutine.wrap(WKBQRS_fake_script)()
local function WFTUD_fake_script() -- Automatizaion.SortingThings 
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
coroutine.wrap(WFTUD_fake_script)()
local function LVDFSVI_fake_script() -- TextButton_2.AutoCollect 
	local script = Instance.new('LocalScript', TextButton_2)

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
coroutine.wrap(LVDFSVI_fake_script)()
local function XONMO_fake_script() -- TextButton_3.AutoClick 
	local script = Instance.new('LocalScript', TextButton_3)

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
coroutine.wrap(XONMO_fake_script)()
local function XWSOQZ_fake_script() -- AmountOfClicks.TrackingStat 
	local script = Instance.new('LocalScript', AmountOfClicks)

	local text = script.Parent
	local amountValue = workspace.Values.GameStats.Currencies.ADHDclicks
	
	local function updateChange()
		text.Text = "Total clicks: " .. amountValue.Value
	end
	
	amountValue.Changed:Connect(updateChange)
	
	updateChange()
	
	
	
	
end
coroutine.wrap(XWSOQZ_fake_script)()
-- TotalAmountOfGoldCubes.TrackingStat is disabled.
-- TotalAmountOfDiamondCubes.TrackingStat is disabled.
-- TotalAmountOfUnobtaniumCubes.TrackingStat is disabled.
local function WQCORU_fake_script() -- TextButton_4.ATS 
	local script = Instance.new('LocalScript', TextButton_4)

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
coroutine.wrap(WQCORU_fake_script)()
local function JJJXJY_fake_script() -- currentTierText.LocalScript 
	local script = Instance.new('LocalScript', currentTierText)

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
coroutine.wrap(JJJXJY_fake_script)()
local function WWMYT_fake_script() -- amountText.LocalScript 
	local script = Instance.new('LocalScript', amountText)

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
coroutine.wrap(WWMYT_fake_script)()
local function KCAHJ_fake_script() -- TextButton_5.AutoStarForm 
	local script = Instance.new('LocalScript', TextButton_5)

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
coroutine.wrap(KCAHJ_fake_script)()
local function VVTKG_fake_script() -- TextButton_6.AutoStarForm 
	local script = Instance.new('LocalScript', TextButton_6)

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
coroutine.wrap(VVTKG_fake_script)()
local function TTRB_fake_script() -- CurrentMilestone.LocalScript 
	local script = Instance.new('LocalScript', CurrentMilestone)

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
coroutine.wrap(TTRB_fake_script)()
local function NNNSM_fake_script() -- TextButton_7.HighlightLinus 
	local script = Instance.new('LocalScript', TextButton_7)

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
	
	
	--for i, obj in pairs(workspace:GetDescendants()) do
	--	if obj:IsA("MeshPart") and string.match(obj.Name, "^linusCube_%d+$") then
	--
	--		local highlight = Instance.new("Highlight")
	--		highlight.FillColor = Color3.fromRGB(255, 255, 255) -- white
	--		highlight.OutlineColor = Color3.fromRGB(255, 0, 0) -- red
	--		highlight.FillTransparency = 0.5
	--		highlight.Parent = obj
	--
	--	end
	--end
end
coroutine.wrap(NNNSM_fake_script)()
