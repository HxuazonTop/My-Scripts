--Ability to toggle ragdoll implemented by Prototype
wait()
local plr = game.Players.LocalPlayer
local removeHRP = true
plrmodel = plr.Character or plr.CharacterAdded:wait()
humanoid = plrmodel.Humanoid
local Welds = {}
function getwelds()
for index, child in pairs(plrmodel:GetDescendants()) do
if child.ClassName == "Motor6D" then
if child.Name ~= "Neck" then
table.insert(Welds, {w = child, p = child.Parent})
end
end
end
end
getwelds()
local Enabled = false
game:GetService("RunService").Heartbeat:connect(function()
if Enabled == true and humanoid ~= nil then
humanoid:ChangeState(Enum.HumanoidStateType.Ragdoll)
end
end)
local head = plrmodel["Head"]
local leftarm = plrmodel["Left Arm"]
local leftleg = plrmodel["Left Leg"]
local rightleg = plrmodel["Right Leg"]
local rightarm = plrmodel["Right Arm"]
local torso = plrmodel.Torso
local root = plrmodel.HumanoidRootPart
local attachments = {}
local constraints = {}
function createRagdoll()
for i,v in pairs(Welds) do
v.w.Parent = nil
end
if removeHRP == true then
root.Parent = nil
end
local It = Instance.new
local Instance = {new = function(...) local New = It(...) if New.ClassName:lower() == "attachment" or New.ClassName:lower() == "hingeconstraint" or New.ClassName:lower() == "ballsocketconstraint" then table.insert(attachments, New) end return New end}
local rootA =Instance.new("Attachment")
local HeadA = Instance.new("Attachment")
local LeftArmA = Instance.new("Attachment")
local LeftLegA = Instance.new("Attachment")
local RightArmA = Instance.new("Attachment")
local RightLegA = Instance.new("Attachment")
local TorsoA = Instance.new("Attachment")
local TorsoA1 = Instance.new("Attachment")
local TorsoA2 = Instance.new("Attachment")
local TorsoA3 = Instance.new("Attachment")
local TorsoA4 = Instance.new("Attachment")
local TorsoA5 = Instance.new("Attachment")
local function set1()
HeadA.Name = "HeadA"
HeadA.Parent = head
HeadA.Position = Vector3.new(0, -0.5, 0)
HeadA.Rotation = Vector3.new(0, 0, 0)
HeadA.Axis = Vector3.new(1, 0, 0)
HeadA.SecondaryAxis = Vector3.new(0, 1, 0)
LeftArmA.Name = "LeftArmA"
LeftArmA.Parent = leftarm
LeftArmA.Position = Vector3.new(0.5, 1, 0)
LeftArmA.Rotation = Vector3.new(0, 0, 0)
LeftArmA.Axis = Vector3.new(1, 0, 0)
LeftArmA.SecondaryAxis = Vector3.new(0, 1, 0)
LeftLegA.Name = "LeftLegA"
LeftLegA.Parent = leftleg
LeftLegA.Position = Vector3.new(0, 1, 0)
LeftLegA.Rotation = Vector3.new(0, 0, 0)
LeftLegA.Axis = Vector3.new(1, 0, 0)
LeftLegA.SecondaryAxis = Vector3.new(0, 1, 0)
RightArmA.Name = "RightArmA"
RightArmA.Parent = rightarm
RightArmA.Position = Vector3.new(-0.5, 1, 0)
RightArmA.Rotation = Vector3.new(0, 0, 0)
RightArmA.Axis = Vector3.new(1, 0, 0)
RightArmA.SecondaryAxis = Vector3.new(0, 1, 0)
RightLegA.Name = "RightLegA"
RightLegA.Parent = rightleg
RightLegA.Position = Vector3.new(0, 1, 0)
RightLegA.Rotation = Vector3.new(0, 0, 0)
RightLegA.Axis = Vector3.new(1, 0, 0)
RightLegA.SecondaryAxis = Vector3.new(0, 1, 0)
rootA.Name= "rootA"
rootA.Parent = root
rootA.Position = Vector3.new(0, 0, 0)
rootA.Rotation = Vector3.new(0, 90, 0)
rootA.Axis = Vector3.new(0, 0, -1)
rootA.SecondaryAxis = Vector3.new(0, 1, 0)
end
local function set2()
TorsoA.Name = "TorsoA"
TorsoA.Parent = torso
TorsoA.Position = Vector3.new(0.5, -1, 0)
TorsoA.Rotation = Vector3.new(0, 0, 0)
TorsoA.Axis = Vector3.new(1, 0, 0)
TorsoA.SecondaryAxis = Vector3.new(0, 1, 0)
TorsoA1.Name = "TorsoA1"
TorsoA1.Parent = torso
TorsoA1.Position = Vector3.new(-0.5, -1, 0)
TorsoA1.Rotation = Vector3.new(0, 0, 0)
TorsoA1.Axis = Vector3.new(1, 0, 0)
TorsoA1.SecondaryAxis = Vector3.new(0, 1, 0)
TorsoA2.Name = "TorsoA2"
TorsoA2.Parent = torso
TorsoA2.Position = Vector3.new(-1, 1, 0)
TorsoA2.Rotation = Vector3.new(0, 0, 0)
TorsoA2.Axis = Vector3.new(1, 0, 0)
TorsoA2.SecondaryAxis = Vector3.new(0, 1, 0)
TorsoA3.Name = "TorsoA3"
TorsoA3.Parent = torso
TorsoA3.Position = Vector3.new(1, 1, 0)
TorsoA3.Rotation = Vector3.new(0, 0, 0)
TorsoA3.Axis = Vector3.new(1, 0, 0)
TorsoA3.SecondaryAxis = Vector3.new(0, 1, 0)
TorsoA4.Name = "TorsoA4"
TorsoA4.Parent = torso
TorsoA4.Position = Vector3.new(0, 1, 0)
TorsoA4.Rotation = Vector3.new(0, 0, 0)
TorsoA4.Axis = Vector3.new(1, 0, 0)
TorsoA4.SecondaryAxis = Vector3.new(0, 1, 0)
TorsoA5.Name = "TorsoA5"
TorsoA5.Parent = torso
TorsoA5.Position = Vector3.new(0, 0, 0)
TorsoA5.Rotation = Vector3.new(0, 90, 0)
TorsoA5.Axis = Vector3.new(0, 0, -1)
TorsoA5.SecondaryAxis = Vector3.new(0, 1, 0)
end
spawn(set1);
spawn(set2);
local HA = Instance.new("HingeConstraint")
HA.Parent = head
HA.Attachment0 = HeadA
HA.Attachment1 = TorsoA4
HA.Enabled = true
HA.LimitsEnabled=true
HA.LowerAngle=0
HA.UpperAngle=0
local LAT = Instance.new("BallSocketConstraint")
LAT.Parent = leftarm
LAT.Attachment0 = LeftArmA
LAT.Attachment1 = TorsoA2
LAT.Enabled = true
LAT.LimitsEnabled=true
LAT.UpperAngle=90
local RAT = Instance.new("BallSocketConstraint")
RAT.Parent = rightarm
RAT.Attachment0 = RightArmA
RAT.Attachment1 = TorsoA3
RAT.Enabled = true
RAT.LimitsEnabled=true
RAT.UpperAngle=90
local HA = Instance.new("BallSocketConstraint")
HA.Parent = head
HA.Attachment0 = HeadA
HA.Attachment1 = TorsoA4
HA.Enabled = true
local TLL = Instance.new("BallSocketConstraint")
TLL.Parent = torso
TLL.Attachment0 = TorsoA1
TLL.Attachment1 = LeftLegA
TLL.Enabled = true
TLL.LimitsEnabled=true
TLL.UpperAngle=90
local TRL = Instance.new("BallSocketConstraint")
TRL.Parent = torso
TRL.Attachment0 = TorsoA
TRL.Attachment1 = RightLegA
TRL.Enabled = true
TRL.LimitsEnabled=true
TRL.UpperAngle=90
local RTA = Instance.new("BallSocketConstraint")
RTA.Parent = root
RTA.Attachment0 = rootA
RTA.Attachment1 = TorsoA5
RTA.Enabled = true
RTA.LimitsEnabled=true
RTA.UpperAngle=0
head.Velocity = head.CFrame.lookVector*30
Enabled = true
end
function disableRagdoll()
for i,v in pairs(Welds) do
v.w.Parent = v.p
end
if removeHRP == true then
torso.Anchored=true
root.Parent = plrmodel
torso.Anchored = false
end
humanoid.Jump = true
for i,v in pairs(attachments) do
v:Destroy()
end
for i,v in pairs(constraints) do
v:Destroy()
end
Enabled = false
end
_G.rag = {}
_G.rag.Key = "E"
local kek = plr:GetMouse().KeyDown:connect(function(i)
if i:lower()==_G.rag.Key:lower() then
if Enabled==true then
disableRagdoll()
else
createRagdoll()
end
end
end)
function _G.rag.End()
kek:disconnect()
disableRagdoll()
Enabled = false
end
local hDie
function hDied(h)
hDie = h.Died:connect(function()
if Enabled == true then
disableRagdoll()
end
end)
end
hDied(humanoid)
plr.CharacterAdded:connect(function(c)
if hDie then
hDie:disconnect()
end
humanoid = c:WaitForChild("Humanoid")
hDied(humanoid)
if Enabled == true then
disableRagdoll()
end
for i = 1, #Welds do
Welds[i] = nil
end
plrmodel = setmetatable({},{__index = function(s,g) return c:FindFirstChild(g) or c:WaitForChild(g) end})
head = plrmodel["Head"]
leftarm = plrmodel["Left Arm"]
leftleg = plrmodel["Left Leg"]
rightleg = plrmodel["Right Leg"]
rightarm = plrmodel["Right Arm"]
torso = plrmodel.Torso
root = plrmodel.HumanoidRootPart
plrmodel = c
getwelds()
end)