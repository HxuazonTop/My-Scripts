-- [ Locals ] --
local Player = game.Players.LocalPlayer
local Char = Player.Character
local Mouse = Player:GetMouse()

-- [ Sets ] --
local pg = true
local listadd = true
local grabtools = false
local selected = nil
local fileName
Keybind = Enum.KeyCode.RightControl

-- [ Services ] --
local MarketplaceService = game:GetService('MarketplaceService')
local UIS = game:GetService('UserInputService')
local tweenService = game:GetService('TweenService')

-- [ File System ] --
if (writefile) then
    local File 
        -- [ Folders ] --
        if (not isfolder('Z0R-Hub')) then makefolder('Z0R-Hub') end
        if (not isfolder('Z0R-Hub/Presets')) then makefolder('Z0R-Hub/Presets') end
        if (not isfolder('Z0R-Hub/Assets')) then makefolder('Z0R-Hub/Assets') end
        if (not isfolder('Z0R-Hub/Theme')) then makefolder('Z0R-Hub/Theme') end
    -- [ Files ] --
        if (not isfile('Z0R-Hub/Theme/theme.zr')) then writefile('Z0R-Hub/Theme/theme.zr', '') end
        if (not isfile('Z0R-Hub/Keybind.key')) then writefile('Z0R-Hub/Keybind.key', 'local Keybind = Enum.KeyCode.RightControl') end
        if (not isfile('Z0R-Hub/Presets/Default.preset')) then writefile('Z0R-Hub/Presets/Default.preset', [[
            for i, v in next, tools do
                coroutine.wrap(
                    function()
                        local BP, BG, F = v.POSV.Value, v.GYROV.Value
                        local a, vol = 1, 0
                        while vis do
                            vol = tools[#tools].Handle.Sound.PlaybackLoudness / sens
                            ro = math.rad(a / 2 + (i * (360 / #tools)))
                            F = CFrame.new(torso.Position) * CFrame.Angles(0, ro, 0) * CFrame.new(0, 0, vol + offset)
                            BP.Position = F.p
                            BG.CFrame = CFrame.new(BG.Parent.Position, torso.Position + Vector3.new(0,tilt+math.sin(-vol*2),0))
                            a = a + speed / 2.5
                            game:GetService('RunService').Heartbeat:task.wait()
                            v.Handle.Velocity = Vector3.new(0, 0, 30)
                        end
                    end
                )()
            end
        ]])
        end
        readfile('Z0R-Hub/Keybind.key')
else
    warn('Your exploit does not support (write/read file)')
end

-- [ UI ] --
local UIAsset = 10216868643
local Version = 6
local UI = game:GetObjects(('rbxassetid://10522714773'):format(UIAsset, Version))[1]; UI.Parent = game:GetService('CoreGui')
if (syn) then
    for i,v in pairs(UI:GetDescendants()) do
        syn.protect_gui(v)
    end
end

-- [ UI Locals ] --
local Main = UI['Main']; Main['Draggable'] = true; Main.Label.Text = os.date('Zor V1.5 | %x')
local ToClone = UI['ToClone']
local Buttons = Main['Buttons']
local Frames = Main['Pages']
local Layout = Frames['Layout']
local MainB = Buttons['Main']
local AudiosB = Buttons['Audios']
local PlayersB = Buttons['Players']
local SettingsB = Buttons['Settings']
--MainFrame
local MainFrame = Frames['Main']
local AudioInput1 = MainFrame.Audio['Input']
local TimePosition = MainFrame.Audio['TimePos']
local Play1 = MainFrame.Audio.buttons['Play'].Button
local MassPlay = MainFrame.Audio.buttons['Massplay'].Button
local Sync = MainFrame.Audio.buttons['Sync'].Button
local DupeInput = MainFrame.Duping['Input']
local DupeButton = MainFrame.Duping['Dupe'].Button
local GrabButton = MainFrame.Duping['Grab'].Button
--VisualFram
--AudiosFrame
local AudiosFrame = Frames['Audios']
local SaveInput = AudiosFrame.Save['Input']
local SaveButton = AudiosFrame.Save.buttons['Save'].Button
local SaveHolder = ToClone['Audio']
local Saves = AudiosFrame.Audios['AudioFrame']
--PlayersFrame
local PlayersFrame = Frames['Players']
local PlayerHolder = ToClone['Player']
local PlayerList = PlayersFrame.Game['PlayerFrame']
--SettingsFrame
local SettingsFrame = Frames['Settings']
local KeyInput = SettingsFrame.Keybind['Input']
local DiscordButton = SettingsFrame.Keybind['Discord'].Button
local Unload = SettingsFrame.Keybind['Unload'].Button

-- [ Functions ] --
loadstring(game:HttpGet'https://encrypts.gq/u/ArabicStr.lua')('Arabic Str')
local GetPlr = function(String)
    local Found = {}
    local strl = String:lower()
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() or v.DisplayName:lower():sub(1, #String) == String:lower() then
                table.insert(Found, v)
            end
        end
    return Found
end
speed = 1; offset = 1; sens = 150; tilt = 5
local Visual = function(v)
    vis = true
    player = game.Players.LocalPlayer
    char = player.Character
    SavedPos = char.HumanoidRootPart.CFrame
    tools = {}

    if (char.Humanoid.RigType ~= Enum.HumanoidRigType.R6) then
        torso = char.UpperTorso
    else
        torso = char.Torso
    end

    for i,v in pairs(player.Backpack:GetChildren()) do
        v.Parent = char
        task.wait(0.05)
    end
    for i, v in pairs(char:GetDescendants()) do
        if (v:IsA('Tool')) then
            table.insert(tools, v)
        end
    end
    for i,v in pairs(tools) do
        for _, tool in pairs(v:GetDescendants()) do
            if (tool:IsA('BodyGyro')) then
                tool:remove()
            elseif (tool:IsA('BodyPosition')) then
                tool:remove()
            elseif (tool:IsA('ObjectValue')) then
                tool:remove()
            end
        end
    end

    if (not Net) then
        char.HumanoidRootPart.CFrame = CFrame.new(0, 4e5, 0)
        task.wait(0.5)
        char.HumanoidRootPart.Anchored = true

        for i,v in pairs(char:GetDescendants()) do
            if (v:IsA('Tool')) then
                BG = Instance.new('BodyGyro', v.Handle); BG.Name = 'GYRO'; BG.MaxTorque=Vector3.new(1/0,1/0,1/0); BG.P=100000
                BP = Instance.new('BodyPosition', v.Handle); BP.Name = 'BODYPOS'; BP.MaxForce = Vector3.new(1/0,1/0,1/0); BP.P = 100000; BP.Position = v.Handle.Position
                BPV = Instance.new('ObjectValue', v); BPV.Name = 'POSV'; BPV.Value = BP
                BGV = Instance.new('ObjectValue', v); BGV.Name = 'GYROV'; BGV.Value = BG
                v.Handle:BreakJoints()
                v.Handle.Velocity = Vector3.new(25.70, 0, 0)
            end
        end
        loadstring(v)()
        task.wait(#tools/#tools)
        char.HumanoidRootPart['CFrame'] = SavedPos
        char.HumanoidRootPart['Anchored'] = false
        Net = true
    else
        for i,v in pairs(char:GetDescendants()) do 
            if (v:IsA('Tool')) then 
                BG = Instance.new('BodyGyro', v.Handle); BG.Name = 'GYRO'; BG.MaxTorque=Vector3.new(1/0,1/0,1/0); BG.P=100000
                BP = Instance.new('BodyPosition', v.Handle); BP.Name = 'BODYPOS'; BP.MaxForce = Vector3.new(1/0,1/0,1/0); BP.P = 100000; BP.Position = v.Handle.Position
                BPV = Instance.new('ObjectValue', v); BPV.Name = 'POSV'; BPV.Value = BP
                BGV = Instance.new('ObjectValue', v); BGV.Name = 'GYROV'; BGV.Value = BG
                v.Handle:BreakJoints()
                v.Handle.Velocity = Vector3.new(25.70, 0, 0)
            end 
        end
        loadstring(v)()
    end

    sethiddenproperty(game.Players.LocalPlayer, 'MaximumSimulationRadius', 1/0)
    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', 1/0)

    task.wait(0.1) 

    for i,v in pairs(char.Humanoid:GetPlayingAnimationTracks()) do
        v:Stop()
    end

    for i,v in pairs(tools) do
        v.Unequipped:connect(function()
            vis = false
            Net = false
            for _, tool in pairs(v:GetDescendants()) do
                if (tool:IsA('BodyGyro')) then
                    tool:remove()
                elseif (tool:IsA('BodyPosition')) then
                    tool:remove()
                elseif (tool:IsA('ObjectValue')) then
                    tool:remove()
                end
            end
        end)
    end
end
local Dupe = function(Amt)
    local Dropped = {}
    local Duping = true
    local SavedPos = Char.HumanoidRootPart.CFrame
    task.wait(0.1)
    Player.Character.HumanoidRootPart.CFrame = CFrame.new(0, 4e5, 0)
    task.wait(0.5)
    Player.Character.HumanoidRootPart.Anchored = true

    for i = 1, Amt do
        Player.Character.HumanoidRootPart.CFrame = CFrame.new(0, 4e5, 0)
        task.wait(0.15)
        for i,v in pairs(Player.Backpack:GetChildren()) do
            if (v:IsA('Tool')) then
                table.insert(Dropped, v)
                v.Parent = Player.Character
                task.wait(0.05)
                v.Parent = workspace
            end
        end
        Player.Character:BreakJoints()
        Player.CharacterAdded:wait()
        Player.Character:WaitForChild('HumanoidRootPart').CFrame = SavedPos
        task.wait(0.1)
    end
    for i,v in pairs(Dropped) do
        firetouchinterest(v.Handle, Player.Character.HumanoidRootPart, 0)
        repeat task.wait() until v.Parent == Player.Character
    end
    Char.HumanoidRootPart.CFrame = SavedPos
    Duping = false
end
workspace.ChildAdded:connect(function(v)
    if (grabtools) then
        while (grabtools and task.wait()) do
            if (v:IsA('Tool')) then
                firetouchinterest(v.Handle, Player.Character.HumanoidRootPart, 0)
            end
        end
    end
end)

-- [ Scripts ] --
MainB.MouseButton1Down:connect(function()
    Layout:JumpTo(MainFrame)
end)
AudiosB.MouseButton1Down:connect(function()
    Layout:JumpTo(AudiosFrame)
end)
PlayersB.MouseButton1Down:connect(function()
    Layout:JumpTo(PlayersFrame)
end)
SettingsB.MouseButton1Down:connect(function()
    Layout:JumpTo(SettingsFrame)
end)
Mouse.Move:connect(function()
    if SpeedH then
        SpeedS.Slide.Size = UDim2.new(math.clamp((Mouse.X - SpeedS.AbsolutePosition.X )/sSizeX,0,1),0,1,0) 
        SpeedS.slider_label.Text = 'Speed | '..math.floor(SpeedS.Slide.Size.X.Scale * 35)
        speed = SpeedS.slider_label.Text:gsub('%D', '')
    end
end)

Sync.MouseButton1Down:connect(function()
    for i,v in pairs(Char:GetDescendants()) do
        if (v:IsA('Sound') and v.Playing) then
            v.TimePosition = 0
        end
    end
end)
TimePosition.FocusLost:connect(function()
    for i,v in pairs(Char:GetDescendants()) do
        if (v:IsA('Sound') and v.Playing) then
            v.TimePosition = tonumber(TimePosition.Text)
        end
    end
end)
DupeButton.MouseButton1Down:connect(function()
    if (tonumber(DupeInput.Text)) then
        Dupe(tonumber(DupeInput.Text))
    end
end)
GrabButton.MouseButton1Down:connect(function()
    if (not grabtools) then
        GrabButton.gradient.Color = ColorSequence.new(Color3.fromRGB(0, 5, 117), Color3.fromRGB(2, 0, 74))
        for i,v in pairs(workspace:GetChildren()) do
            if (v:IsA('Tool')) then
                firetouchinterest(v.Handle, Player.Character.HumanoidRootPart, 0)
            end
        end
        grabtools = true
    else
        GrabButton.gradient.Color = ColorSequence.new(Color3.fromRGB(20, 20, 20), Color3.fromRGB(25, 25, 25))
        grabtools = false
    end
end)
Unload.MouseButton1Down:connect(function()
    UI:remove()
end)
Play1.MouseButton1Down:connect(function()
    local FoundTool
    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if (v:IsA('Tool') and v.Name:match('Boom')) then
            FoundTool = true
        end
    end
    if (not FoundTool) then
        local Tool = Player.Backpack:FindFirstChildOfClass('Tool')
        if (Tool.Name:match('Boom')) then
            Tool.Parent = Player.Character
            FoundTool = true
        end
    end
    local ID = tonumber(AudioInput1.Text) or tonumber(AudioInput1.PlaceholderText)
    for i,v in pairs(Player.Character:GetDescendants()) do
        if (v:IsA('RemoteEvent')) then
            v:FireServer('PlaySong', ID)
        end
    end
end)
MassPlay.MouseButton1Down:connect(function()
    for i,v in pairs(Player.Backpack:GetDescendants()) do
        if (v:IsA('Tool')) then
            v.Parent = Player.Character
        end
    end
    local ID = tonumber(AudioInput1.Text) or tonumber(AudioInput1.PlaceholderText)
    for i,v in pairs(Char:GetDescendants()) do
        if (v:IsA('RemoteEvent')) then
            v:FireServer('PlaySong', ID)
        end
    end
end)
local sList = listfiles('Z0R-Hub/Assets')
local List = listfiles('Z0R-Hub/Presets')

for i,v in pairs(List) do
    local Holder = ToClone.Preset:clone()
    local Button = Holder.Button

    Button.Name = v:sub(17)
    Button.button_label.Text = v:sub(17):split('.')[1]
    Holder.Parent = Presets
    Holder.Visible = true
end
SaveButton.MouseButton1Down:connect(function()
    if (not tonumber(SaveInput.Text)) then
        return
    else
        writefile('Z0R-Hub/Assets/'..SaveInput.Text..'.audio', '')
        local AudioSave = SaveHolder:clone()
        local AudioName = MarketplaceService:GetProductInfo(SaveInput.Text:match('%d+')).Name
        if (not AudioName) then
            AudioName = 'nil'
        end
        AudioSave.Button.button_asset.Text = SaveInput.Text
        AudioSave.Button.button_name.Text = AudioName
        AudioSave.Button.Name = SaveInput.Text
        AudioSave.Parent = Saves
        AudioSave.Visible = true
        Saves.CanvasSize = UDim2.new(0, 0, 0 -#sList, 0)
        Saves.CanvasSize = UDim2.new(0, 0, 0 +#sList/2, 0)
    end
    for i,v in pairs(Saves:GetDescendants()) do
        if (v:IsA('TextButton')) then
            v.MouseButton1Down:connect(function()
                AudioInput1.Text = tonumber(v.Name)
                AudioInput2.Text = tonumber(v.Name)
            end)
        end
    end
end)

for i,v in pairs(sList) do
    local AudioSave = SaveHolder:clone()
    local AudioName = MarketplaceService:GetProductInfo(v:split('\\')[2]:split('.')[1]:match('%d+')).Name
    if (not AudioName) then
        AudioName = 'nil'
    end
    AudioSave.Button.button_asset.Text = v:split('\\')[2]:split('.')[1]
    AudioSave.Button.button_name.Text = AudioName
    AudioSave.Button.Name = v:split('\\')[2]:split('.')[1]
    AudioSave.Parent = Saves
    AudioSave.Visible = true
    Saves.CanvasSize = UDim2.new(0, 0, 0 -#sList, 0)
    Saves.CanvasSize = UDim2.new(0, 0, 0 +#sList/2, 0)
    for i,v in pairs(Saves:GetDescendants()) do
        if (v:IsA('TextButton')) then
            v.MouseButton1Down:connect(function()
                AudioInput1.Text = tonumber(v.Name)
                AudioInput2.Text = tonumber(v.Name)
            end)
        end
    end
end

for i,v in pairs(UI.Main.Buttons:GetDescendants()) do
	if (v:IsA('ImageButton')) then
		v.MouseEnter:connect(function()
			v.HoverLabel.Visible = true
			v.HoverLabel.Text = v.Name
		end)
		v.MouseLeave:connect(function()
			v.HoverLabel.Visible = false
		end)
	end
end
for i,v in pairs(Main:GetDescendants()) do
	if (v:IsA('TextButton')) then
		v.MouseEnter:connect(function()
			v.Parent.BorderColor3 = Color3.fromRGB(28, 44, 113)
		end)
		v.MouseLeave:connect(function()
			v.Parent.BorderColor3 = Color3.fromRGB(0, 0, 0)
		end)
	end
end
for i,v in pairs(Main:GetDescendants()) do
	if (v:IsA('TextBox')) then
		v.Focused:connect(function()
			v.BorderColor3 = Color3.fromRGB(28, 44, 113)
		end)
		v.FocusLost:connect(function()
			v.BorderColor3 = Color3.fromRGB(0, 0, 0)
			
			if (v.Text == '') then
				v.Size = UDim2.new(0, 71,0, 16)
			end
		end)
		v:GetPropertyChangedSignal('Text'):Connect(function()
			v.Size = UDim2.new(#v.Text/100 + 0.3, 0, 0.06, 0)
		end)
	end
end

local kf ; kf = KeyInput.Focused:connect(function()
    local kIn ; kIn = UIS.InputBegan:connect(function(In, gameProcessedEvent)
        if (In.UserInputType == Enum.UserInputType.Keyboard) then
            KeyInput.Text = tostring(In.KeyCode):split('.')[3]
            Keybind = 'Enum.KeyCode.'..tostring(In.KeyCode):split('.')[3]..''
            writefile('Z0R-Hub/Keybind.key', 'Keybind = Enum.KeyCode.'..tostring(In.KeyCode):split('.')[3]) 
            kIn:Disconnect()
        end
    end)
end)
UIS.InputBegan:connect(function(InputObj, Process)
    if (not Process) then
        loadstring(readfile('Z0R-Hub/Keybind.key', true))()
        if (InputObj.KeyCode == Keybind) then
            if (Main.Visible) then
                Main.Visible = false
            else
                Main.Visible = true
            end
        end
    end
end)
loadstring(readfile('Z0R-Hub/Keybind.key', true))()
KeyInput.Text = tostring(Keybind):split('.')[3]

UI['Name'] = GetStr(100)
workspace.FallenPartsDestroyHeight = 0/1/0
settings().Physics.AllowSleep = false
settings().Physics.PhysicsEnvironmentalThrottle = Enum['EnviromentalPhysicsThrottle'].Disabled

task.spawn(function()
    local uiGradient = Main.Top.Gradient
    local tween = tweenService:Create(uiGradient, TweenInfo.new(2, Enum.EasingStyle.Linear), {Offset = Vector2.new(-1, 0)})
    local tween2 = tweenService:Create(uiGradient, TweenInfo.new(2, Enum.EasingStyle.Linear), {Offset = Vector2.new(1, 0)})    
    while (task.wait()) do
        tween:Play()
        task.wait(2)
        tween2:Play()
        task.wait(2)
    end
end)
Player.CharacterAdded:connect(function()
    Char = Player.Character
end)
game.Players.PlayerRemoving:connect(function()
    for i,v in pairs(PlayerList:GetChildren()) do
        if (v:IsA('Frame')) then
            v:remove()
            Page = true
        end
    end
    while (Page and task.wait()) do
        Plr = game.Players:GetPlayers()
        for i,v in pairs(Plr) do
            for i = #Plr, #Plr do
                local Holder = ToClone.Player:clone()
                Holder.Visible = true
                Holder.Displayn.Text = '@'..v.DisplayName
                Holder.Displayn.Playern.Text = v.Name
                Holder.Icon.Image = ('https://www.roblox.com/headshot-thumbnail/image?userId=%s&width=420&height=420&format=png'):format(v.userId)
                Holder.Parent = PlayerList
                PlayerList.CanvasSize = UDim2.new(0, 0, 0 -#Plr, 0)
                PlayerList.CanvasSize = UDim2.new(0, 0, 0 +#Plr/2, 0)
                Holder.Log.MouseButton1Down:connect(function()
                    for i,v in pairs(v.Character:GetDescendants()) do
                        if (v:IsA('Sound') and v.Playing and v.Parent.Name == 'Handle') then
                            setclipboard(v.SoundId)
                            return (warn(('[ZOR] Copied %s\'s audio to clipboard'):format(v.Name)))
                        end
                    end
                end)
                Holder.Mute.MouseButton1Down:connect(function()
                    for i,v in pairs(v.Character:GetDescendants()) do
                        if (v:IsA('Sound') and v.Playing) then
                            v:Stop()
                            v.Volume = 0
                        end
                    end
                end)
                Holder.Teleport.MouseButton1Down:connect(function()
                    for i,v in pairs(GetPlr(v.Name)) do
                        Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                    end
                end)
                for i,v in pairs(PlayerList:GetDescendants()) do
                    if (v:IsA('TextButton')) then
                        v.MouseEnter:connect(function()
                            v.BorderColor3 = Color3.fromRGB(28, 44, 113)
                        end)
                        v.MouseLeave:connect(function()
                            v.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        end)
                    end
                end
                Page = false
            end
        end
    end
end)
game.Players.PlayerAdded:connect(function()
    for i,v in pairs(PlayerList:GetChildren()) do
        if (v:IsA('Frame')) then
            v:remove()
            Page = true
        end
    end
    while (Page and task.wait()) do
        Plr = game.Players:GetPlayers()
        for i,v in pairs(Plr) do
            for i = #Plr, #Plr do
                local Holder = ToClone.Player:clone()
                Holder.Visible = true
                Holder.Displayn.Text = '@'..v.DisplayName
                Holder.Displayn.Playern.Text = v.Name
                Holder.Icon.Image = ('https://www.roblox.com/headshot-thumbnail/image?userId=%s&width=420&height=420&format=png'):format(v.userId)
                Holder.Parent = PlayerList
                PlayerList.CanvasSize = UDim2.new(0, 0, 0 -#Plr, 0)
                PlayerList.CanvasSize = UDim2.new(0, 0, 0 +#Plr/2, 0)
                Holder.Log.MouseButton1Down:connect(function()
                    for i,v in pairs(v.Character:GetDescendants()) do
                        if (v:IsA('Sound') and v.Playing and v.Parent.Name == 'Handle') then
                            setclipboard(v.SoundId)
                            return (warn(('[ZOR] Copied %s\'s audio to clipboard'):format(v.Name)))
                        end
                    end
                end)
                Holder.Mute.MouseButton1Down:connect(function()
                    for i,v in pairs(v.Character:GetDescendants()) do
                        if (v:IsA('Sound') and v.Playing) then
                            v:Stop()
                            v.Volume = 0
                        end
                    end
                end)
                Holder.Teleport.MouseButton1Down:connect(function()
                    for i,v in pairs(GetPlr(v.Name)) do
                        Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                    end
                end)
                for i,v in pairs(PlayerList:GetDescendants()) do
                    if (v:IsA('TextButton')) then
                        v.MouseEnter:connect(function()
                            v.BorderColor3 = Color3.fromRGB(28, 44, 113)
                        end)
                        v.MouseLeave:connect(function()
                            v.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        end)
                    end
                end
                Page = false
            end
        end
    end
end)
if (game.Players) then
    Plr = game.Players:GetPlayers()
    for i,v in pairs(Plr) do
        for i = #Plr, #Plr do
            local Holder = ToClone.Player:clone()
            Holder.Visible = true
            Holder.Displayn.Text = '@'..v.DisplayName
            Holder.Displayn.Playern.Text = v.Name
            Holder.Icon.Image = ('https://www.roblox.com/headshot-thumbnail/image?userId=%s&width=420&height=420&format=png'):format(v.userId)
            Holder.Parent = PlayerList
            PlayerList.CanvasSize = UDim2.new(0, 0, 0 -#Plr, 0)
            PlayerList.CanvasSize = UDim2.new(0, 0, 0 +#Plr/2, 0)
            Holder.Log.MouseButton1Down:connect(function()
                for i,v in pairs(v.Character:GetDescendants()) do
                    if (v:IsA('Sound') and v.Playing and v.Parent.Name == 'Handle') then
                        setclipboard(v.SoundId)
                        return (warn(('[ZOR] Copied %s\'s audio to clipboard'):format(v.Name)))
                    end
                end
            end)
            Holder.Mute.MouseButton1Down:connect(function()
                for i,v in pairs(v.Character:GetDescendants()) do
                    if (v:IsA('Sound') and v.Playing) then
                        v:Stop()
                        v.Volume = 0
                    end
                end
            end)
            Holder.Teleport.MouseButton1Down:connect(function()
                for i,v in pairs(GetPlr(v.Name)) do
                    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                end
            end)
            for i,v in pairs(PlayerList:GetDescendants()) do
                if (v:IsA('TextButton')) then
                    v.MouseEnter:connect(function()
                        v.BorderColor3 = Color3.fromRGB(28, 44, 113)
                    end)
                    v.MouseLeave:connect(function()
                        v.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    end)
                end
            end
        end
    end
end