-- Gui to Lua
-- Version: 3.2

-- Instances:

local CommandBar = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local ScrollingFrame_12 = Instance.new("ImageLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local forceplay = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local re = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local freeze = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local demesh = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local unfreeze = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local sit = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local unsit = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local equiptools = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_9 = Instance.new("UICorner")

--Properties:

CommandBar.Name = "CommandBar"
CommandBar.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = CommandBar
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.834545434, 0, 0.199759334, 0)
Main.Size = UDim2.new(0, 196, 0, 401)
Main.Active = true
Main.Draggable = true

ScrollingFrame_12.Name = "ScrollingFrame_12"
ScrollingFrame_12.Parent = Main
ScrollingFrame_12.AnchorPoint = Vector2.new(0.5, 0.5)
ScrollingFrame_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_12.BackgroundTransparency = 1.000
ScrollingFrame_12.Position = UDim2.new(0.496632159, 0, 0.573798776, 0)
ScrollingFrame_12.Size = UDim2.new(0, 196, 0, 401)
ScrollingFrame_12.Image = "rbxassetid://3570695787"
ScrollingFrame_12.ImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame_12.ImageTransparency = 0.450
ScrollingFrame_12.ScaleType = Enum.ScaleType.Slice
ScrollingFrame_12.SliceCenter = Rect.new(100, 100, 100, 100)
ScrollingFrame_12.SliceScale = 0.120

ScrollingFrame.Parent = ScrollingFrame_12
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(-0.00268042088, 0, 0.00296494365, 0)
ScrollingFrame.Size = UDim2.new(0, 196, 0, 401)
ScrollingFrame.ScrollBarThickness = 8

forceplay.Name = "forceplay"
forceplay.Parent = ScrollingFrame
forceplay.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
forceplay.Position = UDim2.new(0.107142851, 0, 0.0498753116, 0)
forceplay.Size = UDim2.new(0, 154, 0, 24)
forceplay.Font = Enum.Font.GothamBold
forceplay.Text = ">forceplay"
forceplay.TextColor3 = Color3.fromRGB(0, 0, 0)
forceplay.TextSize = 14.000

UICorner.Parent = forceplay

re.Name = "re"
re.Parent = ScrollingFrame
re.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
re.Position = UDim2.new(0.107142851, 0, 0.0885286778, 0)
re.Size = UDim2.new(0, 154, 0, 24)
re.Font = Enum.Font.GothamBold
re.Text = ">re"
re.TextColor3 = Color3.fromRGB(0, 0, 0)
re.TextSize = 14.000

UICorner_2.Parent = re

freeze.Name = "freeze"
freeze.Parent = ScrollingFrame
freeze.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
freeze.Position = UDim2.new(0.107142851, 0, 0.16583541, 0)
freeze.Size = UDim2.new(0, 154, 0, 24)
freeze.Font = Enum.Font.GothamBold
freeze.Text = ">freeze"
freeze.TextColor3 = Color3.fromRGB(0, 0, 0)
freeze.TextSize = 14.000

UICorner_3.Parent = freeze

demesh.Name = "demesh"
demesh.Parent = ScrollingFrame
demesh.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
demesh.Position = UDim2.new(0.107142851, 0, 0.127182037, 0)
demesh.Size = UDim2.new(0, 154, 0, 24)
demesh.Font = Enum.Font.GothamBold
demesh.Text = ">demesh"
demesh.TextColor3 = Color3.fromRGB(0, 0, 0)
demesh.TextSize = 14.000

UICorner_4.Parent = demesh

unfreeze.Name = "unfreeze"
unfreeze.Parent = ScrollingFrame
unfreeze.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
unfreeze.Position = UDim2.new(0.107142851, 0, 0.205735654, 0)
unfreeze.Size = UDim2.new(0, 154, 0, 24)
unfreeze.Font = Enum.Font.GothamBold
unfreeze.Text = ">unfreeze"
unfreeze.TextColor3 = Color3.fromRGB(0, 0, 0)
unfreeze.TextSize = 14.000

UICorner_5.Parent = unfreeze

sit.Name = "sit"
sit.Parent = ScrollingFrame
sit.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
sit.Position = UDim2.new(0.107142851, 0, 0.244389027, 0)
sit.Size = UDim2.new(0, 154, 0, 24)
sit.Font = Enum.Font.GothamBold
sit.Text = ">sit"
sit.TextColor3 = Color3.fromRGB(0, 0, 0)
sit.TextSize = 14.000

UICorner_6.Parent = sit

unsit.Name = "unsit"
unsit.Parent = ScrollingFrame
unsit.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
unsit.Position = UDim2.new(0.107142851, 0, 0.284289271, 0)
unsit.Size = UDim2.new(0, 154, 0, 24)
unsit.Font = Enum.Font.GothamBold
unsit.Text = ">unsit"
unsit.TextColor3 = Color3.fromRGB(0, 0, 0)
unsit.TextSize = 14.000

UICorner_7.Parent = unsit

equiptools.Name = "equiptools"
equiptools.Parent = ScrollingFrame
equiptools.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
equiptools.Position = UDim2.new(0.107142851, 0, 0.324189514, 0)
equiptools.Size = UDim2.new(0, 154, 0, 24)
equiptools.Font = Enum.Font.GothamBold
equiptools.Text = ">equiptools"
equiptools.TextColor3 = Color3.fromRGB(0, 0, 0)
equiptools.TextSize = 14.000

UICorner_8.Parent = equiptools

Title.Name = "Title"
Title.Parent = ScrollingFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0510204099, 0, 0.00872817822, 0)
Title.Size = UDim2.new(0, 177, 0, 27)
Title.Font = Enum.Font.GothamBold
Title.Text = "Commands"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

UICorner_9.Parent = Main