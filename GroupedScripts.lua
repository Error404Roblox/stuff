-- Gui to Lua
-- Version: 3.2

-- Instances:

local GroupedScripts = Instance.new("ScreenGui")
local main1 = Instance.new("Frame")
local navigation = Instance.new("Frame")
local buttonHolder = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local TBBButton = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")
local TGUT2Button = Instance.new("TextButton")
local ImageLabel_2 = Instance.new("ImageLabel")
local UIGradient_2 = Instance.new("UIGradient")
local UniversalButton = Instance.new("TextButton")
local ImageLabel_3 = Instance.new("ImageLabel")
local TDSButton = Instance.new("TextButton")
local ImageLabel_4 = Instance.new("ImageLabel")
local ForsakenButton = Instance.new("TextButton")
local ImageLabel_5 = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local UIGradient_3 = Instance.new("UIGradient")
local NameOfScript = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local exit = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local contentContainer = Instance.new("Frame")
local usTab = Instance.new("ScrollingFrame")
local IYButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UHButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local AdvUHButton = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local DDButton = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local InvinsibleButton = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local FlingButton = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local tdsTab = Instance.new("ScrollingFrame")
local AetherButton = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local UIGradient_4 = Instance.new("UIGradient")
local GatlifyButton = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UICorner_11 = Instance.new("UICorner")
local AutoRailgunButton = Instance.new("ImageButton")
local TextLabel_2 = Instance.new("TextLabel")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local UICorner_12 = Instance.new("UICorner")
local tgut2Tab = Instance.new("ScrollingFrame")
local CSButton = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
local ACgravitonButton = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")
local ACcubesButton = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local UIAspectRatioConstraint_12 = Instance.new("UIAspectRatioConstraint")
local ACplasmaButton = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local UIAspectRatioConstraint_13 = Instance.new("UIAspectRatioConstraint")
local ACpushboxButton = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local UIAspectRatioConstraint_14 = Instance.new("UIAspectRatioConstraint")
local tbbTab = Instance.new("ScrollingFrame")
local HealthbarButton = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local UIAspectRatioConstraint_15 = Instance.new("UIAspectRatioConstraint")
local ChornosQuizButton = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local UIAspectRatioConstraint_16 = Instance.new("UIAspectRatioConstraint")
local AdvUHButton_2 = Instance.new("TextButton")
local UICorner_20 = Instance.new("UICorner")
local UIAspectRatioConstraint_17 = Instance.new("UIAspectRatioConstraint")
local UIGradient_5 = Instance.new("UIGradient")
local forsakenTab = Instance.new("ScrollingFrame")
local IYButton_2 = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local UIAspectRatioConstraint_18 = Instance.new("UIAspectRatioConstraint")
local UHButton_2 = Instance.new("TextButton")
local UICorner_22 = Instance.new("UICorner")
local UIAspectRatioConstraint_19 = Instance.new("UIAspectRatioConstraint")
local AdvUHButton_3 = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local UIAspectRatioConstraint_20 = Instance.new("UIAspectRatioConstraint")
local DDButton_2 = Instance.new("TextButton")
local UICorner_24 = Instance.new("UICorner")
local UIAspectRatioConstraint_21 = Instance.new("UIAspectRatioConstraint")
local InvinsibleButton_2 = Instance.new("TextButton")
local UICorner_25 = Instance.new("UICorner")
local UIAspectRatioConstraint_22 = Instance.new("UIAspectRatioConstraint")
local FlingButton_2 = Instance.new("TextButton")
local UICorner_26 = Instance.new("UICorner")
local UIAspectRatioConstraint_23 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_24 = Instance.new("UIAspectRatioConstraint")

--Properties:

GroupedScripts.Name = "GroupedScripts"
GroupedScripts.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
GroupedScripts.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
GroupedScripts.DisplayOrder = 9999999
GroupedScripts.ResetOnSpawn = false

main1.Name = "main1"
main1.Parent = GroupedScripts
main1.Active = true
main1.AnchorPoint = Vector2.new(1, 1)
main1.BackgroundColor3 = Color3.fromRGB(64, 140, 255)
main1.BorderColor3 = Color3.fromRGB(0, 0, 0)
main1.BorderSizePixel = 0
main1.Position = UDim2.new(1.09324753, -369, 1.11768365, -248)
main1.Size = UDim2.new(0, 738, 0, 496)
main1.Active = true
main1.Draggable = true

navigation.Name = "navigation"
navigation.Parent = main1
navigation.Active = true
navigation.AnchorPoint = Vector2.new(1, 1)
navigation.BackgroundColor3 = Color3.fromRGB(28, 63, 138)
navigation.BorderColor3 = Color3.fromRGB(0, 0, 0)
navigation.BorderSizePixel = 0
navigation.LayoutOrder = 2
navigation.Position = UDim2.new(0.283309817, 0, 0.98517549, 0)
navigation.Size = UDim2.new(0, 197, 0, 422)

buttonHolder.Name = "buttonHolder"
buttonHolder.Parent = navigation
buttonHolder.Active = true
buttonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
buttonHolder.BackgroundTransparency = 1.000
buttonHolder.BorderColor3 = Color3.fromRGB(0, 0, 0)
buttonHolder.BorderSizePixel = 0
buttonHolder.Position = UDim2.new(0.0215231031, 0, 0, 0)
buttonHolder.Size = UDim2.new(0, 192, 0, 421)

UIListLayout.Parent = buttonHolder
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)

UIPadding.Parent = buttonHolder
UIPadding.PaddingLeft = UDim.new(0.150000006, 0)
UIPadding.PaddingTop = UDim.new(0, 10)

TBBButton.Name = "TBBButton"
TBBButton.Parent = buttonHolder
TBBButton.BackgroundColor3 = Color3.fromRGB(255, 0, 242)
TBBButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TBBButton.BorderSizePixel = 0
TBBButton.LayoutOrder = 3
TBBButton.Position = UDim2.new(1.1807284e-07, 0, 0.269417465, 0)
TBBButton.Size = UDim2.new(0, 144, 0, 31)
TBBButton.Font = Enum.Font.SourceSansBold
TBBButton.Text = "The Battle Bricks"
TBBButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TBBButton.TextScaled = true
TBBButton.TextSize = 14.000
TBBButton.TextStrokeTransparency = 0.300
TBBButton.TextWrapped = true

ImageLabel.Parent = TBBButton
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(-0.216805354, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 31, 0, 31)
ImageLabel.Image = "rbxassetid://313781512"

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 102, 105)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 136, 255))}
UIGradient.Parent = TBBButton

TGUT2Button.Name = "TGUT2Button"
TGUT2Button.Parent = buttonHolder
TGUT2Button.BackgroundColor3 = Color3.fromRGB(93, 39, 108)
TGUT2Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
TGUT2Button.BorderSizePixel = 0
TGUT2Button.LayoutOrder = 4
TGUT2Button.Position = UDim2.new(1.1807284e-07, 0, 0.269417465, 0)
TGUT2Button.Size = UDim2.new(0, 144, 0, 31)
TGUT2Button.Font = Enum.Font.SourceSansBold
TGUT2Button.Text = "The Galaxy Upgrade     Tree 2"
TGUT2Button.TextColor3 = Color3.fromRGB(255, 255, 255)
TGUT2Button.TextScaled = true
TGUT2Button.TextSize = 14.000
TGUT2Button.TextWrapped = true

ImageLabel_2.Parent = TGUT2Button
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(-0.216805354, 0, 0, 0)
ImageLabel_2.Size = UDim2.new(0, 31, 0, 31)
ImageLabel_2.Image = "rbxassetid://17291424272"

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(65, 30, 66)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(145, 255, 111))}
UIGradient_2.Parent = TGUT2Button

UniversalButton.Name = "UniversalButton"
UniversalButton.Parent = buttonHolder
UniversalButton.BackgroundColor3 = Color3.fromRGB(182, 120, 12)
UniversalButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
UniversalButton.BorderSizePixel = 0
UniversalButton.LayoutOrder = 1
UniversalButton.Position = UDim2.new(1.1807284e-07, 0, 0.269417465, 0)
UniversalButton.Size = UDim2.new(0, 144, 0, 31)
UniversalButton.Font = Enum.Font.SourceSansBold
UniversalButton.Text = "Universal Scripts"
UniversalButton.TextColor3 = Color3.fromRGB(255, 255, 255)
UniversalButton.TextScaled = true
UniversalButton.TextSize = 14.000
UniversalButton.TextWrapped = true

ImageLabel_3.Parent = UniversalButton
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_3.BorderSizePixel = 0
ImageLabel_3.Position = UDim2.new(-0.216805354, 0, 0, 0)
ImageLabel_3.Size = UDim2.new(0, 31, 0, 31)
ImageLabel_3.Image = "rbxassetid://17291424272"

TDSButton.Name = "TDSButton"
TDSButton.Parent = buttonHolder
TDSButton.BackgroundColor3 = Color3.fromRGB(52, 182, 163)
TDSButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TDSButton.BorderSizePixel = 0
TDSButton.LayoutOrder = 2
TDSButton.Position = UDim2.new(1.1807284e-07, 0, 0.269417465, 0)
TDSButton.Size = UDim2.new(0, 144, 0, 31)
TDSButton.Font = Enum.Font.SourceSansBold
TDSButton.Text = "Tower Defense Simulator"
TDSButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TDSButton.TextScaled = true
TDSButton.TextSize = 14.000
TDSButton.TextWrapped = true

ImageLabel_4.Parent = TDSButton
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BackgroundTransparency = 1.000
ImageLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_4.BorderSizePixel = 0
ImageLabel_4.Position = UDim2.new(-0.216805354, 0, 0, 0)
ImageLabel_4.Size = UDim2.new(0, 31, 0, 31)
ImageLabel_4.Image = "rbxassetid://110104481494090"

ForsakenButton.Name = "ForsakenButton"
ForsakenButton.Parent = buttonHolder
ForsakenButton.BackgroundColor3 = Color3.fromRGB(62, 9, 9)
ForsakenButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ForsakenButton.BorderSizePixel = 0
ForsakenButton.LayoutOrder = 4
ForsakenButton.Position = UDim2.new(1.1807284e-07, 0, 0.269417465, 0)
ForsakenButton.Size = UDim2.new(0, 144, 0, 31)
ForsakenButton.Visible = false
ForsakenButton.Font = Enum.Font.SourceSansBold
ForsakenButton.Text = "FORSAEKN PLACE"
ForsakenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ForsakenButton.TextScaled = true
ForsakenButton.TextSize = 14.000
ForsakenButton.TextWrapped = true

ImageLabel_5.Parent = ForsakenButton
ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_5.BackgroundTransparency = 1.000
ImageLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_5.BorderSizePixel = 0
ImageLabel_5.Position = UDim2.new(-0.216805354, 0, 0, 0)
ImageLabel_5.Size = UDim2.new(0, 31, 0, 31)
ImageLabel_5.Image = "rbxassetid://17291424272"

UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = main1

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 97, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient_3.Parent = main1

NameOfScript.Name = "NameOfScript"
NameOfScript.Parent = main1
NameOfScript.AnchorPoint = Vector2.new(1, 1)
NameOfScript.BackgroundColor3 = Color3.fromRGB(10, 85, 166)
NameOfScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameOfScript.BorderSizePixel = 0
NameOfScript.LayoutOrder = 1
NameOfScript.Position = UDim2.new(0.92965126, 0, 0.122272246, 0)
NameOfScript.Size = UDim2.new(0, 680, 0, 51)
NameOfScript.ZIndex = 2
NameOfScript.Font = Enum.Font.SourceSans
NameOfScript.Text = "Grouped Scripts"
NameOfScript.TextColor3 = Color3.fromRGB(0, 0, 0)
NameOfScript.TextScaled = true
NameOfScript.TextSize = 14.000
NameOfScript.TextWrapped = true

UICorner_2.Parent = NameOfScript

exit.Name = "exit"
exit.Parent = main1
exit.AnchorPoint = Vector2.new(1, 1)
exit.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
exit.BorderColor3 = Color3.fromRGB(0, 0, 0)
exit.BorderSizePixel = 0
exit.Position = UDim2.new(0.991982043, 0, 0.122272246, 0)
exit.Size = UDim2.new(0, 46, 0, 51)
exit.Font = Enum.Font.SourceSans
exit.Text = "X"
exit.TextColor3 = Color3.fromRGB(0, 0, 0)
exit.TextScaled = true
exit.TextSize = 14.000
exit.TextWrapped = true
exit.MouseButton1Down:Connect(function()
	--main1:Destroy()
	GroupedScripts:Destroy()
end)

UICorner_3.Parent = exit

contentContainer.Name = "contentContainer"
contentContainer.Parent = main1
contentContainer.AnchorPoint = Vector2.new(1, 1)
contentContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
contentContainer.BackgroundTransparency = 1.000
contentContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
contentContainer.BorderSizePixel = 0
contentContainer.Position = UDim2.new(0, 732, 0, 481)
contentContainer.Size = UDim2.new(0, 520, 0, 420)

usTab.Name = "usTab"
usTab.Parent = contentContainer
usTab.Active = true
usTab.AnchorPoint = Vector2.new(1, 0)
usTab.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
usTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
usTab.BorderSizePixel = 3
usTab.Position = UDim2.new(1, 0, 0.0253500808, 0)
usTab.Size = UDim2.new(0, 514, 0, 411)
usTab.Visible = false
usTab.CanvasSize = UDim2.new(0, 0, 1, 100)
usTab.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar

IYButton.Name = "IYButton"
IYButton.Parent = usTab
IYButton.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
IYButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
IYButton.BorderSizePixel = 0
IYButton.Position = UDim2.new(0.0174945276, 0, 0.0217318609, 0)
IYButton.Size = UDim2.new(0, 138, 0, 52)
IYButton.Font = Enum.Font.DenkOne
IYButton.Text = "Infinite Yield"
IYButton.TextColor3 = Color3.fromRGB(0, 0, 0)
IYButton.TextSize = 21.000
IYButton.TextWrapped = true
IYButton.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.new/raw/Infinite-Yield_500"))()
end)

UICorner_4.Parent = IYButton

UIAspectRatioConstraint.Parent = IYButton
UIAspectRatioConstraint.AspectRatio = 2.654

UHButton.Name = "UHButton"
UHButton.Parent = usTab
UHButton.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
UHButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
UHButton.BorderSizePixel = 0
UHButton.Position = UDim2.new(0.322941989, 0, 0.0236549377, 0)
UHButton.Size = UDim2.new(0, 138, 0, 52)
UHButton.Font = Enum.Font.DenkOne
UHButton.Text = "Universal Hitbox"
UHButton.TextColor3 = Color3.fromRGB(0, 0, 0)
UHButton.TextSize = 21.000
UHButton.TextWrapped = true
UHButton.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/HitboxExpander.lua"))()
end)

UICorner_5.Parent = UHButton

UIAspectRatioConstraint_2.Parent = UHButton
UIAspectRatioConstraint_2.AspectRatio = 2.654

AdvUHButton.Name = "AdvUHButton"
AdvUHButton.Parent = usTab
AdvUHButton.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
AdvUHButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AdvUHButton.BorderSizePixel = 0
AdvUHButton.Position = UDim2.new(0.626443923, 0, 0.0236549377, 0)
AdvUHButton.Size = UDim2.new(0, 138, 0, 52)
AdvUHButton.Font = Enum.Font.DenkOne
AdvUHButton.Text = "Torso + Head Hitboxes"
AdvUHButton.TextColor3 = Color3.fromRGB(0, 0, 0)
AdvUHButton.TextSize = 21.000
AdvUHButton.TextWrapped = true
AdvUHButton.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Universal-Hitbox-Expander-V2-31129"))()
end)

UICorner_6.Parent = AdvUHButton

UIAspectRatioConstraint_3.Parent = AdvUHButton
UIAspectRatioConstraint_3.AspectRatio = 2.654

DDButton.Name = "DDButton"
DDButton.Parent = usTab
DDButton.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
DDButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
DDButton.BorderSizePixel = 0
DDButton.Position = UDim2.new(0.0174945276, 0, 0.158270329, 0)
DDButton.Size = UDim2.new(0, 138, 0, 52)
DDButton.Font = Enum.Font.DenkOne
DDButton.Text = "Dark Dex"
DDButton.TextColor3 = Color3.fromRGB(0, 0, 0)
DDButton.TextSize = 21.000
DDButton.TextWrapped = true
DDButton.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Artifacttx/YumeHub/refs/heads/main/Universal/DarkDex_Mobile", true))()
end)

UICorner_7.Parent = DDButton

UIAspectRatioConstraint_4.Parent = DDButton
UIAspectRatioConstraint_4.AspectRatio = 2.654

InvinsibleButton.Name = "InvinsibleButton"
InvinsibleButton.Parent = usTab
InvinsibleButton.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
InvinsibleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
InvinsibleButton.BorderSizePixel = 0
InvinsibleButton.Position = UDim2.new(0.0174945276, 0, 0.294, 0)
InvinsibleButton.Size = UDim2.new(0, 138, 0, 52)
InvinsibleButton.Font = Enum.Font.DenkOne
InvinsibleButton.Text = "Invinsible"
InvinsibleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
InvinsibleButton.TextSize = 21.000
InvinsibleButton.TextWrapped = true
InvinsibleButton.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/3Rnd9rHf"))()
end)

UICorner_8.Parent = InvinsibleButton

UIAspectRatioConstraint_5.Parent = InvinsibleButton
UIAspectRatioConstraint_5.AspectRatio = 2.654

FlingButton.Name = "FlingButton"
FlingButton.Parent = usTab
FlingButton.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
FlingButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlingButton.BorderSizePixel = 0
FlingButton.Position = UDim2.new(0.322941989, 0, 0.159999996, 0)
FlingButton.Size = UDim2.new(0, 138, 0, 52)
FlingButton.Font = Enum.Font.DenkOne
FlingButton.Text = "Fling"
FlingButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FlingButton.TextSize = 21.000
FlingButton.TextWrapped = true
FlingButton.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt"))()
end)

UICorner_9.Parent = FlingButton

UIAspectRatioConstraint_6.Parent = FlingButton
UIAspectRatioConstraint_6.AspectRatio = 2.654

tdsTab.Name = "tdsTab"
tdsTab.Parent = contentContainer
tdsTab.Active = true
tdsTab.AnchorPoint = Vector2.new(1, 0)
tdsTab.BackgroundColor3 = Color3.fromRGB(32, 165, 156)
tdsTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
tdsTab.BorderSizePixel = 3
tdsTab.Position = UDim2.new(1, 0, 0.0253500808, 0)
tdsTab.Size = UDim2.new(0, 514, 0, 411)
tdsTab.Visible = false
tdsTab.CanvasSize = UDim2.new(0, 0, 1, 100)
tdsTab.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar

AetherButton.Name = "AetherButton"
AetherButton.Parent = tdsTab
AetherButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AetherButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
AetherButton.BorderSizePixel = 0
AetherButton.Position = UDim2.new(0.0174945276, 0, 0.0217318609, 0)
AetherButton.Size = UDim2.new(0, 138, 0, 52)
AetherButton.Font = Enum.Font.DenkOne
AetherButton.Text = "Aether Hub"
AetherButton.TextColor3 = Color3.fromRGB(0, 0, 0)
AetherButton.TextSize = 21.000
AetherButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
AetherButton.TextStrokeTransparency = 0.000
AetherButton.TextWrapped = true
AetherButton.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://aetherhub.lol/loader.lua"))()
end)

UICorner_10.Parent = AetherButton

UIAspectRatioConstraint_7.Parent = AetherButton
UIAspectRatioConstraint_7.AspectRatio = 2.654

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.52, Color3.fromRGB(79, 24, 79)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient_4.Rotation = 90
UIGradient_4.Parent = AetherButton

GatlifyButton.Name = "GatlifyButton"
GatlifyButton.Parent = tdsTab
GatlifyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GatlifyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
GatlifyButton.BorderSizePixel = 0
GatlifyButton.Position = UDim2.new(0.321011662, 0, 0.0230769236, 0)
GatlifyButton.Size = UDim2.new(0, 138, 0, 52)
GatlifyButton.Image = "rbxassetid://110104481494090"
GatlifyButton.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/avtryxz/Gatlify/refs/heads/main/Gatlify.lua"))()
end)

TextLabel.Parent = GatlifyButton
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.97498858, 0)
TextLabel.Size = UDim2.new(0, 138, 0, 25)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Gatlify (Key)"
TextLabel.TextColor3 = Color3.fromRGB(70, 255, 138)
TextLabel.TextSize = 26.000

UIAspectRatioConstraint_8.Parent = GatlifyButton
UIAspectRatioConstraint_8.AspectRatio = 2.654

UICorner_11.Parent = GatlifyButton

AutoRailgunButton.Name = "AutoRailgunButton"
AutoRailgunButton.Parent = tdsTab
AutoRailgunButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoRailgunButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoRailgunButton.BorderSizePixel = 0
AutoRailgunButton.Position = UDim2.new(0.624513626, 0, 0.0230769236, 0)
AutoRailgunButton.Size = UDim2.new(0, 138, 0, 52)
AutoRailgunButton.Image = "rbxassetid://110104481494090"
AutoRailgunButton.MouseButton1Down:Connect(function()
	--loadstring(game:HttpGet("https://"))()
end)

TextLabel_2.Parent = AutoRailgunButton
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.97498858, 0)
TextLabel_2.Size = UDim2.new(0, 138, 0, 25)
TextLabel_2.Font = Enum.Font.Unknown
TextLabel_2.Text = "Auto Railgun"
TextLabel_2.TextColor3 = Color3.fromRGB(86, 214, 39)
TextLabel_2.TextSize = 26.000

UIAspectRatioConstraint_9.Parent = AutoRailgunButton
UIAspectRatioConstraint_9.AspectRatio = 2.654

UICorner_12.Parent = AutoRailgunButton

tgut2Tab.Name = "tgut2Tab"
tgut2Tab.Parent = contentContainer
tgut2Tab.Active = true
tgut2Tab.AnchorPoint = Vector2.new(1, 0)
tgut2Tab.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
tgut2Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
tgut2Tab.BorderSizePixel = 3
tgut2Tab.Position = UDim2.new(1, 0, 0.0253500808, 0)
tgut2Tab.Size = UDim2.new(0, 514, 0, 411)
tgut2Tab.Visible = false
tgut2Tab.CanvasSize = UDim2.new(0, 0, 1, 100)
tgut2Tab.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar

CSButton.Name = "CSButton"
CSButton.Parent = tgut2Tab
CSButton.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
CSButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CSButton.BorderSizePixel = 0
CSButton.Position = UDim2.new(0.0174945276, 0, 0.0217318609, 0)
CSButton.Size = UDim2.new(0, 138, 0, 52)
CSButton.Font = Enum.Font.DenkOne
CSButton.Text = "Custom Made Script"
CSButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CSButton.TextSize = 21.000
CSButton.TextWrapped = true
CSButton.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Error404Roblox/stuff/refs/heads/main/2TUG.lua"))()
end)

UICorner_13.Parent = CSButton

UIAspectRatioConstraint_10.Parent = CSButton
UIAspectRatioConstraint_10.AspectRatio = 2.654

ACgravitonButton.Name = "ACgravitonButton"
ACgravitonButton.Parent = tgut2Tab
ACgravitonButton.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
ACgravitonButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ACgravitonButton.BorderSizePixel = 0
ACgravitonButton.Position = UDim2.new(0.322941989, 0, 0.0236549377, 0)
ACgravitonButton.Size = UDim2.new(0, 138, 0, 52)
ACgravitonButton.Font = Enum.Font.DenkOne
ACgravitonButton.Text = "Auto Collect Gravitons"
ACgravitonButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ACgravitonButton.TextSize = 21.000
ACgravitonButton.TextWrapped = true
ACgravitonButton.MouseButton1Down:Connect(function()
	-- Collect Gravitons

	local player = game:GetService("Players").LocalPlayer
	local active = true

	task.spawn(function()
		while true do
			if active then
				local character = player.Character or player.CharacterAdded:Wait()
				local rootPart = character:WaitForChild("HumanoidRootPart")

				local graviton = workspace:WaitForChild("EventHorizon"):WaitForChild("spawned"):WaitForChild("Graviton")

				graviton.CFrame =  rootPart.CFrame
			end

			task.wait(0.04)
		end
	end)
end)

UICorner_14.Parent = ACgravitonButton

UIAspectRatioConstraint_11.Parent = ACgravitonButton
UIAspectRatioConstraint_11.AspectRatio = 2.654

ACcubesButton.Name = "ACcubesButton"
ACcubesButton.Parent = tgut2Tab
ACcubesButton.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
ACcubesButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ACcubesButton.BorderSizePixel = 0
ACcubesButton.Position = UDim2.new(0.626443923, 0, 0.0236549377, 0)
ACcubesButton.Size = UDim2.new(0, 138, 0, 52)
ACcubesButton.Font = Enum.Font.DenkOne
ACcubesButton.Text = "Auto Collect Cubes"
ACcubesButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ACcubesButton.TextSize = 21.000
ACcubesButton.TextWrapped = true
ACcubesButton.MouseButton1Down:Connect(function()
	local player = game.Players.LocalPlayer

	local cubeFolder = workspace:WaitForChild("Cube"):WaitForChild("curr")
	local RANGE = 32

	local dcubes = {}

	-- Initial scan
	for _, obj in ipairs(workspace:GetDescendants()) do
		if obj:IsA("BasePart") and obj.Name == "dcube" then
			table.insert(dcubes, obj)
		end
	end

	-- Track new ones
	workspace.DescendantAdded:Connect(function(obj)
		if obj:IsA("BasePart") and obj.Name == "dcube" then
			table.insert(dcubes, obj)
		end
	end)

	task.spawn(function()
		while true do
			local character = player.Character or player.CharacterAdded:Wait()
			local rootPart = character:WaitForChild("HumanoidRootPart")

			-- GCUBES
			for _, cube in ipairs(cubeFolder:GetChildren()) do
				if cube:IsA("BasePart") and cube.Name == "gcube" then

					local clickDetector = cube:FindFirstChildOfClass("ClickDetector")

					if clickDetector then
						local distance = (cube.Position - rootPart.Position).Magnitude

						if distance <= RANGE then
							fireclickdetector(clickDetector)
						end
					end
				end
			end

			-- DCUBES
			for _, obj in ipairs(dcubes) do
				if obj:IsA("BasePart") and obj.Name == "dcube" then

					local clickDetector = obj:FindFirstChildOfClass("ClickDetector")

					if clickDetector then
						local distance = (obj.Position - rootPart.Position).Magnitude

						if distance <= RANGE then
							fireclickdetector(clickDetector)
						end
					end
				end
			end

			task.wait(0.1)
		end
	end)

end)

UICorner_15.Parent = ACcubesButton

UIAspectRatioConstraint_12.Parent = ACcubesButton
UIAspectRatioConstraint_12.AspectRatio = 2.654

ACplasmaButton.Name = "ACplasmaButton"
ACplasmaButton.Parent = tgut2Tab
ACplasmaButton.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
ACplasmaButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ACplasmaButton.BorderSizePixel = 0
ACplasmaButton.Position = UDim2.new(0.322941989, 0, 0.156000003, 0)
ACplasmaButton.Size = UDim2.new(0, 138, 0, 52)
ACplasmaButton.Font = Enum.Font.DenkOne
ACplasmaButton.Text = "Auto Collect Plasma"
ACplasmaButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ACplasmaButton.TextSize = 21.000
ACplasmaButton.TextWrapped = true
ACplasmaButton.MouseButton1Down:Connect(function()
	-- PLASMA

	local player = game:GetService("Players").LocalPlayer
	local active = true

	task.spawn(function()
		while true do
			if active then
				local character = player.Character or player.CharacterAdded:Wait()
				local rootPart = character:WaitForChild("HumanoidRootPart")

				local plasma = workspace.Plasma.SpawnedPlasma:WaitForChild("Plasma")

				plasma.CFrame =  rootPart.CFrame
			end

			task.wait(0.01)
		end
	end)

end)

UICorner_16.Parent = ACplasmaButton

UIAspectRatioConstraint_13.Parent = ACplasmaButton
UIAspectRatioConstraint_13.AspectRatio = 2.654

ACpushboxButton.Name = "ACpushboxButton"
ACpushboxButton.Parent = tgut2Tab
ACpushboxButton.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
ACpushboxButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ACpushboxButton.BorderSizePixel = 0
ACpushboxButton.Position = UDim2.new(0.626443923, 0, 0.156000003, 0)
ACpushboxButton.Size = UDim2.new(0, 138, 0, 52)
ACpushboxButton.Font = Enum.Font.DenkOne
ACpushboxButton.Text = "Auto Collect Pushbox (Flux)"
ACpushboxButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ACpushboxButton.TextSize = 21.000
ACpushboxButton.TextWrapped = true
ACpushboxButton.MouseButton1Down:Connect(function()
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer

	local active = true

	local spawned = workspace.ShatteredUniverse.BlackHolestuff.Spawned
	local orb = workspace.ShatteredUniverse.BlackHolestuff.BlackHole.Orb

	task.spawn(function()
		while active do
			for _, obj in ipairs(spawned:GetChildren()) do
				if obj.Name == "PushBox" then
					if obj:IsA("BasePart") then
						obj.CFrame = orb.CFrame
					elseif obj:IsA("Model") then
						local pp = obj.PrimaryPart or obj:FindFirstChildWhichIsA("BasePart")
						if pp then
							obj:PivotTo(orb.CFrame)
						end
					end
				end
			end

			task.wait(1)
		end
	end)
end)

UICorner_17.Parent = ACpushboxButton

UIAspectRatioConstraint_14.Parent = ACpushboxButton
UIAspectRatioConstraint_14.AspectRatio = 2.654

tbbTab.Name = "tbbTab"
tbbTab.Parent = contentContainer
tbbTab.Active = true
tbbTab.AnchorPoint = Vector2.new(1, 0)
tbbTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbbTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
tbbTab.BorderSizePixel = 3
tbbTab.Position = UDim2.new(1, 0, 0.0253500808, 0)
tbbTab.Size = UDim2.new(0, 514, 0, 411)
tbbTab.Visible = false
tbbTab.CanvasSize = UDim2.new(0, 0, 1, 100)
tbbTab.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar

HealthbarButton.Name = "HealthbarButton"
HealthbarButton.Parent = tbbTab
HealthbarButton.BackgroundColor3 = Color3.fromRGB(255, 213, 61)
HealthbarButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HealthbarButton.BorderSizePixel = 0
HealthbarButton.Position = UDim2.new(0.0174945276, 0, 0.0217318609, 0)
HealthbarButton.Size = UDim2.new(0, 138, 0, 52)
HealthbarButton.Font = Enum.Font.DenkOne
HealthbarButton.Text = "Healthbar"
HealthbarButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HealthbarButton.TextSize = 21.000
HealthbarButton.TextWrapped = true
HealthbarButton.MouseButton1Down:Connect(function()
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")

	local tracked = {}

	local BAR_WIDTH_PX = 130
	local BAR_HEIGHT_PX = 14
	local BAR_Y_OFFSET = 2.2

	local COLOR_BG = Color3.fromRGB(15,15,20)
	local COLOR_HP = Color3.fromRGB(0,220,220)
	local COLOR_DAMAGE = Color3.fromRGB(255,70,70)
	local COLOR_TEXT = Color3.fromRGB(255,255,255)

	local function makeBar(model)
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
		bg.Size = UDim2.fromScale(1,1)
		bg.BackgroundColor3 = COLOR_BG
		bg.BorderSizePixel = 0
		bg.Parent = bb

		local bgCorner = Instance.new("UICorner")
		bgCorner.CornerRadius = UDim.new(0,5)
		bgCorner.Parent = bg

		local clip = Instance.new("Frame")
		clip.Size = UDim2.fromScale(1,1)
		clip.BackgroundTransparency = 1
		clip.BorderSizePixel = 0
		clip.ClipsDescendants = true
		clip.Parent = bg

		local clipCorner = Instance.new("UICorner")
		clipCorner.CornerRadius = UDim.new(0,5)
		clipCorner.Parent = clip

		local damageFill = Instance.new("Frame")
		damageFill.Size = UDim2.fromScale(1,1)
		damageFill.BackgroundColor3 = COLOR_DAMAGE
		damageFill.BorderSizePixel = 0
		damageFill.Parent = clip

		local hpFill = Instance.new("Frame")
		hpFill.Size = UDim2.fromScale(1,1)
		hpFill.BackgroundColor3 = COLOR_HP
		hpFill.BorderSizePixel = 0
		hpFill.Parent = clip

		local shine = Instance.new("Frame")
		shine.Size = UDim2.new(1,0,0,2)
		shine.BackgroundColor3 = Color3.new(1,1,1)
		shine.BackgroundTransparency = 0.75
		shine.BorderSizePixel = 0
		shine.Parent = hpFill

		local txt = Instance.new("TextLabel")
		txt.Size = UDim2.fromScale(1,1)
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
			gui = bb
		}

		local function update()
			if not model.Parent then
				return
			end

			local maxHealth = math.max(humanoid.MaxHealth,1)
			local health = math.max(humanoid.Health,0)

			local ratio = health / maxHealth

			txt.Text = string.format(
				"%d / %d",
				math.floor(health),
				math.floor(maxHealth)
			)

			hpFill.Size = UDim2.new(ratio,0,1,0)

			if health < lastHealth then
				damageToken += 1

				local myToken = damageToken
				local targetRatio = ratio

				task.spawn(function()
					task.wait(DAMAGE_DELAY)

					if myToken ~= damageToken then
						return
					end

					if damageFill.Parent then
						damageFill:TweenSize(
							UDim2.new(targetRatio,0,1,0),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quint,
							DAMAGE_DRAIN_TIME,
							true
						)
					end
				end)

			elseif health > lastHealth then
				damageToken += 1

				hpFill.Size = UDim2.new(ratio,0,1,0)
				damageFill.Size = UDim2.new(ratio,0,1,0)
			end

			lastHealth = health
		end

		update()

		humanoid.HealthChanged:Connect(update)

		model.AncestryChanged:Connect(function()
			if not model.Parent then
				if tracked[model] then
					tracked[model].gui:Destroy()
					tracked[model] = nil
				end
			end
		end)
	end

	local function scanModel(model)
		if tracked[model] then
			return
		end

		local humanoid = model:FindFirstChildOfClass("Humanoid")
		local root = model:FindFirstChild("HumanoidRootPart")

		if humanoid and root then
			makeBar(model)
		end
	end

	for _, player in ipairs(Players:GetPlayers()) do
		local function onCharacter(character)
			task.wait(0.5)
			scanModel(character)
		end

		if player.Character then
			onCharacter(player.Character)
		end

		player.CharacterAdded:Connect(onCharacter)
	end

	Players.PlayerAdded:Connect(function(player)
		player.CharacterAdded:Connect(function(character)
			task.wait(0.5)
			scanModel(character)
		end)
	end)

	for _, obj in ipairs(workspace:GetDescendants()) do
		if obj:IsA("Model")
			and obj:FindFirstChildOfClass("Humanoid")
			and obj:FindFirstChild("HumanoidRootPart") then

			if not Players:GetPlayerFromCharacter(obj) then
				scanModel(obj)
			end
		end
	end

	workspace.DescendantAdded:Connect(function(obj)
		if not obj:IsA("Model") then
			return
		end

		task.wait(0.5)

		if obj:FindFirstChildOfClass("Humanoid")
			and obj:FindFirstChild("HumanoidRootPart") then

			if not Players:GetPlayerFromCharacter(obj) then
				scanModel(obj)
			end
		end
	end)
end)

UICorner_18.Parent = HealthbarButton

UIAspectRatioConstraint_15.Parent = HealthbarButton
UIAspectRatioConstraint_15.AspectRatio = 2.654

ChornosQuizButton.Name = "ChornosQuizButton"
ChornosQuizButton.Parent = tbbTab
ChornosQuizButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChornosQuizButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChornosQuizButton.BorderSizePixel = 0
ChornosQuizButton.Position = UDim2.new(0.322941989, 0, 0.0236549377, 0)
ChornosQuizButton.Size = UDim2.new(0, 138, 0, 52)
ChornosQuizButton.Font = Enum.Font.DenkOne
ChornosQuizButton.Text = "Clock Quiz Solver (+ Healthbar)"
ChornosQuizButton.TextColor3 = Color3.fromRGB(54, 230, 230)
ChornosQuizButton.TextSize = 21.000
ChornosQuizButton.TextWrapped = true
ChornosQuizButton.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Correct19/ChronosQuiz/refs/heads/main/ChronosQuiz.lua"))()
end)

UICorner_19.Parent = ChornosQuizButton

UIAspectRatioConstraint_16.Parent = ChornosQuizButton
UIAspectRatioConstraint_16.AspectRatio = 2.654

AdvUHButton_2.Name = "AdvUHButton"
AdvUHButton_2.Parent = tbbTab
AdvUHButton_2.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
AdvUHButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
AdvUHButton_2.BorderSizePixel = 0
AdvUHButton_2.Position = UDim2.new(0.626443923, 0, 0.0236549377, 0)
AdvUHButton_2.Size = UDim2.new(0, 138, 0, 52)
AdvUHButton_2.Visible = false
AdvUHButton_2.Font = Enum.Font.DenkOne
AdvUHButton_2.Text = "Torso + Head Hitboxes"
AdvUHButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
AdvUHButton_2.TextSize = 21.000
AdvUHButton_2.TextWrapped = true

UICorner_20.Parent = AdvUHButton_2

UIAspectRatioConstraint_17.Parent = AdvUHButton_2
UIAspectRatioConstraint_17.AspectRatio = 2.654

UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 47, 50)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(82, 255, 241))}
UIGradient_5.Rotation = 90
UIGradient_5.Parent = tbbTab

forsakenTab.Name = "forsakenTab"
forsakenTab.Parent = contentContainer
forsakenTab.Active = true
forsakenTab.AnchorPoint = Vector2.new(1, 0)
forsakenTab.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
forsakenTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
forsakenTab.BorderSizePixel = 3
forsakenTab.Position = UDim2.new(1, 0, 0.0253500808, 0)
forsakenTab.Size = UDim2.new(0, 514, 0, 411)
forsakenTab.Visible = false
forsakenTab.CanvasSize = UDim2.new(0, 0, 1, 100)
forsakenTab.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar

IYButton_2.Name = "IYButton"
IYButton_2.Parent = forsakenTab
IYButton_2.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
IYButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
IYButton_2.BorderSizePixel = 0
IYButton_2.Position = UDim2.new(0.0174945276, 0, 0.0217318609, 0)
IYButton_2.Size = UDim2.new(0, 138, 0, 52)
IYButton_2.Font = Enum.Font.DenkOne
IYButton_2.Text = "Infinite Yield"
IYButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
IYButton_2.TextSize = 21.000
IYButton_2.TextWrapped = true

UICorner_21.Parent = IYButton_2

UIAspectRatioConstraint_18.Parent = IYButton_2
UIAspectRatioConstraint_18.AspectRatio = 2.654

UHButton_2.Name = "UHButton"
UHButton_2.Parent = forsakenTab
UHButton_2.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
UHButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
UHButton_2.BorderSizePixel = 0
UHButton_2.Position = UDim2.new(0.322941989, 0, 0.0236549377, 0)
UHButton_2.Size = UDim2.new(0, 138, 0, 52)
UHButton_2.Font = Enum.Font.DenkOne
UHButton_2.Text = "Universal Hitbox"
UHButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
UHButton_2.TextSize = 21.000
UHButton_2.TextWrapped = true

UICorner_22.Parent = UHButton_2

UIAspectRatioConstraint_19.Parent = UHButton_2
UIAspectRatioConstraint_19.AspectRatio = 2.654

AdvUHButton_3.Name = "AdvUHButton"
AdvUHButton_3.Parent = forsakenTab
AdvUHButton_3.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
AdvUHButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
AdvUHButton_3.BorderSizePixel = 0
AdvUHButton_3.Position = UDim2.new(0.626443923, 0, 0.0236549377, 0)
AdvUHButton_3.Size = UDim2.new(0, 138, 0, 52)
AdvUHButton_3.Font = Enum.Font.DenkOne
AdvUHButton_3.Text = "Torso + Head Hitboxes"
AdvUHButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
AdvUHButton_3.TextSize = 21.000
AdvUHButton_3.TextWrapped = true

UICorner_23.Parent = AdvUHButton_3

UIAspectRatioConstraint_20.Parent = AdvUHButton_3
UIAspectRatioConstraint_20.AspectRatio = 2.654

DDButton_2.Name = "DDButton"
DDButton_2.Parent = forsakenTab
DDButton_2.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
DDButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
DDButton_2.BorderSizePixel = 0
DDButton_2.Position = UDim2.new(0.0174945276, 0, 0.158270329, 0)
DDButton_2.Size = UDim2.new(0, 138, 0, 52)
DDButton_2.Font = Enum.Font.DenkOne
DDButton_2.Text = "Dark Dex"
DDButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
DDButton_2.TextSize = 21.000
DDButton_2.TextWrapped = true

UICorner_24.Parent = DDButton_2

UIAspectRatioConstraint_21.Parent = DDButton_2
UIAspectRatioConstraint_21.AspectRatio = 2.654

InvinsibleButton_2.Name = "InvinsibleButton"
InvinsibleButton_2.Parent = forsakenTab
InvinsibleButton_2.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
InvinsibleButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
InvinsibleButton_2.BorderSizePixel = 0
InvinsibleButton_2.Position = UDim2.new(0.0174945276, 0, 0.294, 0)
InvinsibleButton_2.Size = UDim2.new(0, 138, 0, 52)
InvinsibleButton_2.Font = Enum.Font.DenkOne
InvinsibleButton_2.Text = "Invinsible"
InvinsibleButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
InvinsibleButton_2.TextSize = 21.000
InvinsibleButton_2.TextWrapped = true

UICorner_25.Parent = InvinsibleButton_2

UIAspectRatioConstraint_22.Parent = InvinsibleButton_2
UIAspectRatioConstraint_22.AspectRatio = 2.654

FlingButton_2.Name = "FlingButton"
FlingButton_2.Parent = forsakenTab
FlingButton_2.BackgroundColor3 = Color3.fromRGB(110, 7, 255)
FlingButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlingButton_2.BorderSizePixel = 0
FlingButton_2.Position = UDim2.new(0.322941989, 0, 0.159999996, 0)
FlingButton_2.Size = UDim2.new(0, 138, 0, 52)
FlingButton_2.Font = Enum.Font.DenkOne
FlingButton_2.Text = "Fling"
FlingButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
FlingButton_2.TextSize = 21.000
FlingButton_2.TextWrapped = true

UICorner_26.Parent = FlingButton_2

UIAspectRatioConstraint_23.Parent = FlingButton_2
UIAspectRatioConstraint_23.AspectRatio = 2.654

UIAspectRatioConstraint_24.Parent = main1
UIAspectRatioConstraint_24.AspectRatio = 1.488

-- Scripts:

local function XCANB_fake_script() -- main1.SortLayerScript 
	local script = Instance.new('LocalScript', main1)

	local buttonsFolder = script.Parent.navigation:WaitForChild("buttonHolder")
	local framesFolder = script.Parent:WaitForChild("contentContainer")
	
	--All Buttons
	local UniversalButton = buttonsFolder:WaitForChild("UniversalButton")
	local TDSButton = buttonsFolder:WaitForChild("TDSButton")
	local TBBButton = buttonsFolder:WaitForChild("TBBButton")
	local TGUT2Button = buttonsFolder:WaitForChild("TGUT2Button")
	
	--All Frames
	local usTab = framesFolder:WaitForChild("usTab")
	local tdsTab = framesFolder:WaitForChild("tdsTab")
	local tbbTab = framesFolder:WaitForChild("tbbTab")
	local tgut2Tab = framesFolder:WaitForChild("tgut2Tab")
	
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
		[UniversalButton]=usTab,
		[TDSButton]=tdsTab,
		[TBBButton]=tbbTab,
		[TGUT2Button]=tgut2Tab
	}
	
	-- Connect buttons
	for button, frame in pairs(buttonToFrame) do
		print(button, frame)
		button.MouseButton1Click:Connect(function()
			switchFrame(frame)
		end)
	end
end
coroutine.wrap(XCANB_fake_script)()
