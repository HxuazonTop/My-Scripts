game.StarterGui:SetCore("SendNotification", {
	Title = "Grape Soda V1 loaded enjoy!";
	Text = "shout out to mattyboy_yt also shoutout choppa for testing";
	Duration = "20";
})


local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ground = Instance.new("TextButton")
local low = Instance.new("TextButton")
local parallel = Instance.new("TextButton")
local sword = Instance.new("TextButton")
local wings = Instance.new("TextButton")
local twistup = Instance.new("TextButton")
local fountain = Instance.new("TextButton")
local V = Instance.new("TextButton")
local line = Instance.new("TextButton")
local pistol = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Main.BorderColor3 = Color3.fromRGB(170, 85, 255)
Main.BorderSizePixel = 4
Main.Position = UDim2.new(0.555024922, 0, 0.455662251, 0)
Main.Size = UDim2.new(0, 521, 0, 214)
Main.Active = true
Main.Draggable = true

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Title.BorderColor3 = Color3.fromRGB(170, 85, 255)
Title.BorderSizePixel = 3
Title.Position = UDim2.new(0, 0, 0.00467289705, 0)
Title.Size = UDim2.new(0, 521, 0, 35)
Title.Font = Enum.Font.GothamBold
Title.Text = "    mattshub                           made by mt#6666/mattyboy_yt"
Title.TextColor3 = Color3.fromRGB(170, 85, 255)
Title.TextSize = 18.000
Title.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
Title.TextStrokeTransparency = 0.500
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

ground.Name = "ground"
ground.Parent = Main
ground.Active = false
ground.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ground.BorderColor3 = Color3.fromRGB(170, 85, 255)
ground.BorderSizePixel = 4
ground.Position = UDim2.new(0, 0, 0.663983047, 0)
ground.Size = UDim2.new(0, 182, 0, 35)
ground.Font = Enum.Font.GothamBold
ground.Text = "ground-hold"
ground.TextColor3 = Color3.fromRGB(170, 85, 255)
ground.TextSize = 14.000
ground.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
ground.TextStrokeTransparency = 0.500
ground.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/schizilla/groundhold/main/schizilla",true))();
end)

low.Name = "low"
low.Parent = Main
low.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
low.BorderColor3 = Color3.fromRGB(170, 85, 255)
low.BorderSizePixel = 4
low.Position = UDim2.new(0, 0, 0.831775665, 0)
low.Size = UDim2.new(0, 182, 0, 34)
low.Font = Enum.Font.GothamBold
low.Text = "low-hold"
low.TextColor3 = Color3.fromRGB(170, 85, 255)
low.TextSize = 14.000
low.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
low.TextStrokeTransparency = 0.500
low.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/schizilla/lowhold/main/nebulahubV1",true))();
end)

parallel.Name = "parallel"
parallel.Parent = Main
parallel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
parallel.BorderColor3 = Color3.fromRGB(170, 85, 255)
parallel.BorderSizePixel = 4
parallel.Position = UDim2.new(0.648752391, 0, 0.832207382, 0)
parallel.Size = UDim2.new(0, 182, 0, 35)
parallel.Font = Enum.Font.GothamBold
parallel.Text = "4 way parallel"
parallel.TextColor3 = Color3.fromRGB(170, 85, 255)
parallel.TextSize = 14.000
parallel.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
parallel.TextStrokeTransparency = 0.500
parallel.MouseButton1Down:connect(function()
	local v = 0.03
	local vm = -2
	local m = -0.2
	for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if z:IsA'Tool' then
			v = v + 0.6
			vm = vm * -0.4
			m = m * -0.5
			z.Parent = game.Players.LocalPlayer.Character
			z.Grip = CFrame.new(3,3,m)
			z.GripUp = Vector3.new(v,6,v)
			z.GripRight = Vector3.new(m,m,m)
			z.GripForward = Vector3.new(m,0,0)
		end
	end
end)

sword.Name = "sword"
sword.Parent = Main
sword.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
sword.BorderColor3 = Color3.fromRGB(170, 85, 255)
sword.BorderSizePixel = 4
sword.Position = UDim2.new(0.648752391, 0, 0.663983107, 0)
sword.Size = UDim2.new(0, 182, 0, 35)
sword.Font = Enum.Font.GothamBold
sword.Text = "sword"
sword.TextColor3 = Color3.fromRGB(170, 85, 255)
sword.TextSize = 14.000
sword.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
sword.TextStrokeTransparency = 0.500
sword.MouseButton1Down:connect(function()
	local v = -0.2
	local vm = -0.5
	for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if z:IsA'Tool' then
			v = v + 0.5
			vm = vm * -2
			z.Parent = game.Players.LocalPlayer.Character
			z.Grip = CFrame.new(v,v,0)
			z.GripUp = Vector3.new(1,-1,0)
			z.GripRight = Vector3.new(vm,0,2)
			z.GripForward = Vector3.new(0,0,0)
		end
	end
end)

wings.Name = "wings"
wings.Parent = Main
wings.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
wings.BorderColor3 = Color3.fromRGB(170, 85, 255)
wings.BorderSizePixel = 4
wings.Position = UDim2.new(0.648752391, 0, 0.495758802, 0)
wings.Size = UDim2.new(0, 182, 0, 35)
wings.Font = Enum.Font.GothamBold
wings.Text = "wings"
wings.TextColor3 = Color3.fromRGB(170, 85, 255)
wings.TextSize = 14.000
wings.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
wings.TextStrokeTransparency = 0.500
wings.MouseButton1Down:connect(function()
	local v = -1.5
	local vm = -0.5
	local mv = 1
	for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if z:IsA'Tool' then
			v = v * -1.1
			vm = vm / -9
			mv = mv + 0.7
			z.Parent = game.Players.LocalPlayer.Character
			z.Grip = CFrame.new(v,0,mv)
			z.GripUp = Vector3.new(0,9,mv)
			z.GripRight = Vector3.new(mv,2,v)
			z.GripForward = Vector3.new(vm,2,mv)
		end
	end
end)

twistup.Name = "twist-up"
twistup.Parent = Main
twistup.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
twistup.BorderColor3 = Color3.fromRGB(170, 85, 255)
twistup.BorderSizePixel = 4
twistup.Position = UDim2.new(0.648752272, 0, 0.332207382, 0)
twistup.Size = UDim2.new(0, 182, 0, 35)
twistup.Font = Enum.Font.GothamBold
twistup.Text = "twist up"
twistup.TextColor3 = Color3.fromRGB(170, 85, 255)
twistup.TextSize = 14.000
twistup.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
twistup.TextStrokeTransparency = 0.500
twistup.MouseButton1Down:connect(function()
	local v = -0.6
	local vm = -0.1
	local mv = -3
	for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if z:IsA'Tool' then
			v = v + 0.3
			vm = vm * 0.6
			mv = mv + 0.3
			z.Parent = game.Players.LocalPlayer.Character
			z.Grip = CFrame.new(v,0,mv)
			z.GripUp = Vector3.new(0,v,mv)
			z.GripRight = Vector3.new(mv,v,v)
			z.GripForward = Vector3.new(vm,2,mv)
		end
	end
end)

fountain.Name = "fountain"
fountain.Parent = Main
fountain.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
fountain.BorderColor3 = Color3.fromRGB(170, 85, 255)
fountain.BorderSizePixel = 4
fountain.Position = UDim2.new(0.648752272, 0, 0.196693346, 0)
fountain.Size = UDim2.new(0, 183, 0, 28)
fountain.Font = Enum.Font.GothamBold
fountain.Text = "fountain spew"
fountain.TextColor3 = Color3.fromRGB(170, 85, 255)
fountain.TextSize = 14.000
fountain.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
fountain.TextStrokeTransparency = 0.500
fountain.MouseButton1Down:connect(function()
	local p = -0.2
	local m = -0.2
	local d = -0.2
	local mp = -0.2
	for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if z:IsA'Tool' then do
				p = p + 1.3
				m = m - 1.3
				d = d / -0.8
				mp = mp * -1.3
				z.Parent = game.Players.LocalPlayer.Character
				z.Grip = CFrame.new(m,m,d)
				z.GripUp = Vector3.new(d,12,mp)
				z.GripRight = Vector3.new(mp,mp,0)
				z.GripForward = Vector3.new(0,0,0)
			end
		end
	end
end)

V.Name = "V"
V.Parent = Main
V.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
V.BorderColor3 = Color3.fromRGB(170, 85, 255)
V.BorderSizePixel = 4
V.Position = UDim2.new(0, 0, 0.495758623, 0)
V.Size = UDim2.new(0, 182, 0, 35)
V.Font = Enum.Font.GothamBold
V.Text = "V"
V.TextColor3 = Color3.fromRGB(170, 85, 255)
V.TextSize = 14.000
V.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
V.TextStrokeTransparency = 0.500
V.MouseButton1Down:connect(function()
	local v = -0.2
	local vm = -0.3
	for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if z:IsA'Tool' then
			v = v + 0.5
			vm = vm * -1.1
			z.Parent = game.Players.LocalPlayer.Character
			z.Grip = CFrame.new(v,v,0)
			z.GripUp = Vector3.new(1,-1,0)
			z.GripRight = Vector3.new(vm,0,2)
			z.GripForward = Vector3.new(0,0,0)
		end
	end
end)

line.Name = "line"
line.Parent = Main
line.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
line.BorderColor3 = Color3.fromRGB(170, 85, 255)
line.BorderSizePixel = 4
line.Position = UDim2.new(0, 0, 0.327534318, 0)
line.Size = UDim2.new(0, 182, 0, 35)
line.Font = Enum.Font.GothamBold
line.Text = "line "
line.TextColor3 = Color3.fromRGB(170, 85, 255)
line.TextSize = 14.000
line.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
line.TextStrokeTransparency = 0.500
line.MouseButton1Down:connect(function()
	local v = -0.2
	local vm = -2.5
	for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if z:IsA'Tool' then
			v = v - 0.5
			vm = vm * -0.5
			z.Parent = game.Players.LocalPlayer.Character
			z.Grip = CFrame.new(v,v,v)
			z.GripUp = Vector3.new(v,v,v)
			z.GripRight = Vector3.new(vm,vm,vm)
			z.GripForward = Vector3.new(vm,vm,vm)
		end
	end
end)

pistol.Name = "pistol"
pistol.Parent = Main
pistol.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
pistol.BorderColor3 = Color3.fromRGB(170, 85, 255)
pistol.BorderSizePixel = 4
pistol.Position = UDim2.new(0, 0, 0.196693346, 0)
pistol.Size = UDim2.new(0, 182, 0, 27)
pistol.Font = Enum.Font.GothamBold
pistol.Text = "pistol"
pistol.TextColor3 = Color3.fromRGB(170, 85, 255)
pistol.TextSize = 14.000
pistol.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
pistol.TextStrokeTransparency = 0.500
pistol.MouseButton1Down:connect(function()
	local v = -0.2
	local vm = -2.5
	for _,z in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if z:IsA'Tool' then do
				v = v - 0.5
				vm = vm * 0.5
				z.Parent = game.Players.LocalPlayer.Character
				z.Grip = CFrame.new(v,vm,0)
				z.GripUp = Vector3.new(1,-1,0)
				z.GripRight = Vector3.new(1,v,1)
				z.GripForward = Vector3.new(0,0,0)
			end
		end
	end
end)
-- Scripts:

local function BSHCR_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	local frame = script.Parent 
	local mouse = game:GetService('Players').LocalPlayer:GetMouse(); 
	
	mouse.KeyDown:connect(function(key) 
		key = key:lower() -- i do this in all my key events, though i don't remember why
		if key == 'f' then -- if key pressed is f
			frame.Visible = not frame.Visible -- flip between visible/invisible
		end
	end)
end
coroutine.wrap(BSHCR_fake_script)()