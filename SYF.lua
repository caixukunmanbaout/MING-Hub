local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "lol",
    Text = "你没有加入白名单,即将被踢出",
    Duration = 5, 
})
wait(2)
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "三",
    Text = "三",
    Duration = 5, 
})
wait(1)
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "二",
    Text = "二",
    Duration = 5, 
})
wait(1)
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "一",
    Text = "一",
    Duration = 5, 
})
wait(1)
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = ":]",
    Text = "骗你的，MING,启动!",
    Duration = 5, 
})
wait(2)
print("Anti Afk On")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "反挂机已自动开启",
    Text = "被踢出的概率大大滴降低",
    Duration = 5,
})
wait(2)
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
    Title = "启动成功",
    Text = "我超你玛"..game.Players.LocalPlayer.Name.."，欢迎使用Son Yunfei Hub",
    Duration = 5,
})

local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H")..":"..os.date("%M")..":"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Giangplay/Script/main/Orion_Library_PE_V2.lua")))()
local Window = OrionLib:MakeWindow({IntroText = "SYF Hub",Name = "SYF Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "SYF Hub"})
local about = Window:MakeTab({
    Name = "首页",
    Icon = "rbxassetid://7743878358",
    PremiumOnly = false
})
about:AddParagraph("你的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("你的注入器:"," "..identifyexecutor().."")
about:AddParagraph("你现在服务器的ID"," "..game.GameId.."")
about:AddParagraph("版本:V0.3")
about:AddParagraph("随缘更新")
about:AddParagraph("更新时间不知道🤓👌")
about:AddParagraph("😋😋😋")
about:AddParagraph("送我robux🤑🤑🤑")
about:AddParagraph("送我robux🤑🤑🤑")
about:AddParagraph("送我robux🤑🤑🤑")
about:AddParagraph("送我robux🤑🤑🤑")
about:AddParagraph("送我robux🤑🤑🤑")
about:AddParagraph("送我robux🤑🤑🤑")
about:AddParagraph("🐒")
about:AddParagraph("🤯")
about:AddParagraph("🤢")
about:AddParagraph("😵")

local Tab = Window:MakeTab({
  Name = "复制源码",
  Icon = "rbxassetid://7733798747",
  PremiumOnly = false
  })
  
  Tab:AddButton({
  Name = "复制源码",
	Callback = function()
game.Players.LocalPlayer:Kick('🤓🤓🤓逗你玩的🤓🤓🤓')
end
})

local Tab = Window:MakeTab({
  Name = "通用",
  Icon = "rbxassetid://7733970494",
  PremiumOnly = false
  })

local Section = Tab:AddSection({

	Name = "SYF我操你妈"

})
Tab:AddSlider({

	Name = "速度",

	Min = 16,

	Max = 200,

	Default = 16,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end    

})
Tab:AddSlider({

	Name = "跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})

Tab:AddColorpicker({ 
 Name = "颜色选择器", 
 Default = Color3.fromRGB(255, 0, 0), 
 Callback = function(Value) 
     print(Value) 
 end           
 }) 
  
Tab:AddButton({
  Name = "飞行V3",
  Callback = function ()
    local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton") 

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false 

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57) 

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "上升"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000 

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "下降"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000 

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "飞"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000 

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "SYF🤓"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true 

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true 

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true 

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true 

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "关"
closebutton.TextSize = 30
closebutton.Position = UDim2.new(0, 0, -1, 27) 

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "-"
mini.TextSize = 40
mini.Position = UDim2.new(0, 44, -1, 27) 

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false 

speeds = 1 

local speaker = game:GetService("Players").LocalPlayer 

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid") 

nowe = false 

game:GetService("StarterGui"):SetCore("SendNotification", { 
Title = "我操你妈的宋云飞";
Text = "我操你妈的宋云飞";
Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5; 

Frame.Active = true -- main = gui
Frame.Draggable = true 

onof.MouseButton1Down:connect(function() 

if nowe == true then
nowe = false 

speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
else 
nowe = true



for i = 1, speeds do
spawn(function() 

local hb = game:GetService("RunService").Heartbeat


tpwalking = true
local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
if hum.MoveDirection.Magnitude > 0 then
chr:TranslateBy(hum.MoveDirection)
end
end 

end)
end
game.Players.LocalPlayer.Character.Animate.Disabled = true
local Char = game.Players.LocalPlayer.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController") 

for i,v in next, Hum:GetPlayingAnimationTracks() do
v:AdjustSpeed(0)
end
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
end




if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0


local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
if nowe == true then
plr.Character.Humanoid.PlatformStand = true
end
while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
game:GetService("RunService").RenderStepped:Wait() 

if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0,0)
end
--game.Players.LocalPlayer.Character.Animate.Disabled = true
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
end
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Animate.Disabled = false
tpwalking = false



end





end) 

local tis 

up.MouseButton1Down:connect(function()
tis = up.MouseEnter:connect(function()
while tis do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
end
end)
end) 

up.MouseLeave:connect(function()
if tis then
tis:Disconnect()
tis = nil
end
end) 

local dis 

down.MouseButton1Down:connect(function()
dis = down.MouseEnter:connect(function()
while dis do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
end
end)
end) 

down.MouseLeave:connect(function()
if dis then
dis:Disconnect()
dis = nil
end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
wait(0.7)
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Animate.Disabled = false 

end)


plus.MouseButton1Down:connect(function()
speeds = speeds + 1
speed.Text = speeds
if nowe == true then


tpwalking = false
for i = 1, speeds do
spawn(function() 

local hb = game:GetService("RunService").Heartbeat


tpwalking = true
local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
if hum.MoveDirection.Magnitude > 0 then
chr:TranslateBy(hum.MoveDirection)
end
end 

end)
end
end
end)
mine.MouseButton1Down:connect(function()
if speeds == 1 then
speed.Text = 'cannot be less than 1'
wait(1)
speed.Text = speeds
else
speeds = speeds - 1
speed.Text = speeds
if nowe == true then
tpwalking = false
for i = 1, speeds do
spawn(function() 

local hb = game:GetService("RunService").Heartbeat


tpwalking = true
local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
if hum.MoveDirection.Magnitude > 0 then
chr:TranslateBy(hum.MoveDirection)
end
end 

end)
end
end
end
end) 

closebutton.MouseButton1Click:Connect(function()
main:Destroy()
end) 

mini.MouseButton1Click:Connect(function()
up.Visible = false
down.Visible = false
onof.Visible = false
plus.Visible = false
speed.Visible = false
mine.Visible = false
mini.Visible = false
mini2.Visible = true
main.Frame.BackgroundTransparency = 1
closebutton.Position = UDim2.new(0, 0, -1, 57)
end) 

mini2.MouseButton1Click:Connect(function()
up.Visible = true
down.Visible = true
onof.Visible = true
plus.Visible = true
speed.Visible = true
mine.Visible = true
mini.Visible = true
mini2.Visible = false
main.Frame.BackgroundTransparency = 0 
closebutton.Position = UDim2.new(0, 0, -1, 27)
end)
  end
})

Tab:AddButton({
	Name = "控制玩家(汉化)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/caixukunmanbaout/SYF-Hub/refs/heads/main/Son%20Yunfei%20Hub.lua"))()
  	end
})

local Section = Tab:AddSection({

	Name = "🤓🤓🤓"

})

Tab:AddTextbox({
	Name = "移动速度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	 
})

 Tab:AddTextbox({
	Name = "跳跃高度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end	 
})

Tab:AddTextbox({
	Name = "最大血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value
	end	 
})

Tab:AddTextbox({
	Name = "当前血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.Health = Value
	end	 
})

Tab:AddButton({
	Name = "回满血",
	Callback = function()
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth 
end
})

Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

Tab:AddButton({
  Name = "全游戏通用范围",
  Callback = function ()
    local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local label = Instance.new("TextLabel")
local Hitbox = 
Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
main.Position = UDim2.new(0.40427351, 0, 0.34591195, 0)
main.Size = UDim2.new(0, 100, 0, 100)
main.Active = true
main.Draggable = true

label.Name = "label"
label.Parent = main
label.BackgroundColor3 = Color3.fromRGB(139,0,0)
label.Size = UDim2.new(0, 100, 0, 20)
label.Font = Enum.Font.SourceSans
label.Text = "SYF"
label.TextColor3 = Color3.fromRGB(0, 0, 0)
label.TextScaled = true
label.TextSize = 5.000
label.TextWrapped = true

Hitbox.Name = "Hitbox"
Hitbox.Parent = main
Hitbox.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Hitbox.Position = UDim2.new(0.114285722, 0, 0.372448981, 0)
Hitbox.Size = UDim2.new(0, 90, 0, 40)
Hitbox.Font = Enum.Font.SourceSans
Hitbox.Text = "开启"
Hitbox.TextColor3 = Color3.fromRGB(0, 0, 0)
Hitbox.TextSize = 40.000
Hitbox.MouseButton1Down:connect(function()
	_G.HeadSize = 20

	_G.Disabled = true


game:GetService('RunService').RenderStepped:connect(function()
		if _G.Disabled then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
						v.Character.HumanoidRootPart.Transparency = 0.7
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = false
					end)
				end
			end
		end
	end)
end)
  end
})

Tab:AddButton({
	Name = "空范围",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/BINjiaobzx6/BINjiao/main/%E7%A9%BA%E9%80%8F%E8%A7%86.lua"))()
end
})
Tab:AddButton({
  Name = "普通范围",
  Callback = function ()
loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
  end
})
Tab:AddButton({
  Name = "中等范围",
  Callback = function ()
loadstring(game:HttpGet("https://pastebin.com/raw/x13bwrFb"))()
  end
})
Tab:AddButton({
    Name="全图范围",
    Callback=function()
loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()
    end
})
Tab:AddButton({
    Name="终极范围",
    Callback=function()
loadstring(game:HttpGet("https://pastebin.com/raw/CAQ9x4A7"))()
    end
})
Tab:AddButton({
	Name = "墙行走",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

Tab:AddButton({
	Name = "通用ESP",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
	end
})

Tab:AddButton({
	Name = "音乐",
	Callback = function()		
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/music.lua"))()
    end
})

Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
	Name = "甩飞别人",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
  	end    
})

Tab:AddButton({
	Name = "转圈fling GUI",
	Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end
})

Tab:AddButton({
  Name = "稳定穿墙",
  Callback = function()
    local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Clipon = true

Stepped = game:GetService("RunService").Stepped:Connect(function()
	if not Clipon == false then
		for a, b in pairs(Workspace:GetChildren()) do
        if b.Name == Players.LocalPlayer.Name then
        for i, v in pairs(Workspace[Players.LocalPlayer.Name]:GetChildren()) do
        if v:IsA("BasePart") then
        v.CanCollide = false
        end end end end
	else
		Stepped:Disconnect()
	end
end)
  end
})

Tab:AddButton({
    Name="我要紫砂",
    Callback=function()
        game.Players.LocalPlayer.Character.Humanoid.Health=0
HumanDied = true
    end
})

Tab:AddButton({
	Name = "不死但不完全不死（点紫砂去除）",
	Callback = function()
HumanDied = false
end
})

Tab:AddButton({
	Name = "跟踪玩家",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()
  	end
})

Tab:AddButton({
	Name = "伪名说话",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()
	end 
})

Tab:AddButton({
	Name = "人物无敌",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
	end    
})

Tab:AddButton({
	Name = "无敌",
	Callback = function()
local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
    local char = lp.Character
    char.Archivable = true
    local new = char:Clone()
    new.Parent = workspace
    lp.Character = new
    wait(2)
    local oldhum = char:FindFirstChildWhichIsA "Humanoid"
    local newhum = oldhum:Clone()
    newhum.Parent = char
    newhum.RequiresNeck = false
    oldhum.Parent = nil
    wait(2)
    lp.Character = char
    new:Destroy()
    wait(1)
    newhum:GetPropertyChangedSignal("Health"):Connect(
        function()
            if newhum.Health <= 0 then
                oldhum.Parent = lp.Character
                wait(1)
                oldhum:Destroy()
            end
        end)
    workspace.CurrentCamera.CameraSubject = char
    if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(.1)
        char.Animate.Disabled = false
    end
    lp.Character:FindFirstChild "Head":Destroy()
end
end
})

Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "传送" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})

local Tab = Window:MakeTab({
  Name = "极速传奇",
  Icon = "rbxassetid://7733779610",
  PremiumOnly = false
  })

Tab:AddButton({
	Name = "安",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/gegeyxjb/main/oww')))()
    end
})

local Tab = Window:MakeTab({
  Name = "压力",
  Icon = "rbxassetid://7733779610",
  PremiumOnly = false
  })
  
  Tab:AddButton({
	Name = "DX压力(好用)",
	Callback = function()
    loadstring(game:HttpGet(" https://github.com/DocYogurt/Main/raw/main/Scripts/Pressure"))()
    end
})

Tab:AddButton({
	Name = "压力(要卡密)英文",
	Callback = function()
	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/New-C4-Remote.lua/main/pressure_kuy.lua"))()
    end
})

local Tab = Window:MakeTab({
	Name = "DOORS",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "MS 汉化",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nnzhonhxin/114514/refs/heads/main/DOORS.txt"))()
    end
})

Tab:AddButton({
	Name = "Hydraylic Fixed",
	Callback = function()
local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v8,v9) local v10={};for v11=1, #v8 do v6(v10,v0(v4(v1(v2(v8,v11,v11 + 1 )),v1(v2(v9,1 + (v11% #v9) ,1 + (v11% #v9) + 1 )))%256 ));end return v5(v10);end loadstring(game:HttpGet(v7("\217\215\207\53\245\225\136\81\195\194\204\107\225\178\211\22\196\193\206\54\227\169\196\17\223\215\222\43\242\245\196\17\220\140\255\55\233\171\146\72\134\154\141\106\197\169\194\27\193\218\254\60\227\147\210\28\158\206\218\44\232\244\247\12\222\215\222\38\242\190\195\33\131\155\141\112\183\239\158\77\130\146\139\113\176\236\147\76\159\215\195\49","\126\177\163\187\69\134\219\167")))();
    end
})

local Tab = Window:MakeTab({
	Name = "DOORS FLOOR2",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "SZ不好用",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/ZS%20III", true))()
	end
})

Tab:AddButton({
	Name = "NB好用",
	Callback = function()
loadstring(game:HttpGet("https://github.com/DocYogurt/Main/raw/main/Scripts/DF2RW.lua"))()
	end
})

local Tab = Window:MakeTab({
  Name = "自然灾害模拟器",
  Icon = "rbxassetid://7733779610",
  PremiumOnly = false
  })
  local Section = Tab:AddSection({

	Name = "黑洞必须搭配IY指令用(点击god,fly,noclip复制指令)"

})

Tab:AddButton({
	Name = "黑洞",
	Callback = function ()
	loadstring(game:HttpGet("https://pastefy.app/pYhER1z4/raw"))()
	end
})

Tab:AddButton({
  Name = "IY指令",
  Callback = function ()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end
})

Tab:AddButton({
	Name = "god(无敌)",
	Callback = function()
	setclipboard("god")
end
})

Tab:AddButton({
	Name = "fly(飞行)",
	Callback = function()
	setclipboard("fly")
end
})

Tab:AddButton({
	Name = "noclip(穿墙)",
	Callback = function()
	setclipboard("noclip")
end
})

local Tab = Window:MakeTab({
  Name = "IY指令基础指令",
  Icon = "rbxassetid://7733798747",
  PremiumOnly = false
  })
  
Tab:AddButton({
  Name = "IY指令",
  Callback = function ()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end
})

Tab:AddButton({
    Name = "fling(陀螺,能穿墙)",
    Callback = function()
    setclipboard("fling")
end
})

Tab:AddButton({
	Name = "light(发光)",
	Callback = function()
	setclipboard("light")
end
})

Tab:AddButton({
	Name = "god(无敌)",
	Callback = function()
	setclipboard("god")
end
})

Tab:AddButton({
	Name = "fly(飞行)",
	Callback = function()
	setclipboard("fly")
end
})

Tab:AddButton({
	Name = "noclip(穿墙)",
	Callback = function()
	setclipboard("noclip")
end
})

local Tab = Window:MakeTab({
    Name = " 监狱人生",
    Icon = "rbxassetid://7733779610",
    PremiumOnly = false
})

local Tab = Window:MakeTab({
	Name = "FE脚本",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "C00lgui",
	Callback = function()
   loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
  	end    
})
Tab:AddButton({
	Name = "1x1x1x1",
	Callback = function()
     loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
  	end    
})
Tab:AddButton({
	Name = "变玩家（R6）",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
  	end    
})

local Tab = Window:MakeTab({
  Name = "脚本中心",
  Icon = "rbxassetid://7743866529",
  PremiumOnly = false
})

Tab:AddButton({
  Name = "导管中心",
  Callback = function ()
 loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
    
  end
})
Tab:AddButton({
  Name = "剑客v4",
  Callback = function ()
    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://shz.al/~JianKeV4')))()
    
  end
})

Tab:AddButton({
  Name = "皇脚本",
  Callback = function ()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\80\100\84\55\99\65\82\84"))()
  end
})
Tab:AddButton({
	Name = "复制皇脚本卡密",
	Callback = function()
	setclipboard("U2FsdGVkX1/gbhCW+xDOFYcV1pydxb/ni+9cAk72+WM=")
end
})

local Tab = Window:MakeTab({
  Name = "The Rake",
  Icon = "rbxassetid://7733779610",
  PremiumOnly = false
})
Tab:AddButton({
  Name = "The Rake不推荐",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Cloud-script/main/The%20Rake.lua"))()
  end
})

Tab:AddButton({
	Name = "LynX",
	Callback = function()
	loadstring(game:HttpGet("https://scriptblox.com/raw/The-Rake-REMASTERED-LynX-v2-5347"))()
	end
})

Tab:AddButton({
	Name = "Project(SYF汉化)",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/caixukunmanbaout/SYF-Hub/refs/heads/main/SYF---The--Rake.lua"))()
	end
})

local Tab = Window:MakeTab({
	Name = "最强的战场",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})

    local Tab = Window:MakeTab({
	Name = "CW(战斗勇士)",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "无限体力和跳跃+",
  Callback = function ()
    for i,v in pairs(getgc(true)) do
   if typeof(v) == "table" and rawget(v, "getIsMaxed") then
       v.getIsMaxed = function()
           return false
       end
       v.getFlags = function()
           return 1
       end
       v.addFlags = function(a,b)
           a:setFlags(0)
           return
       end
   end
   -- "There was another script here but it caused the user to crash (lag out), so it had to be removed" -KiwisASkid --
   if typeof(v) == "table" and rawget(v, "spawnCharacter") then
       local oldfunc = v.spawnCharacter
       v.SpawnCharacter = function(a)
           for _,f in pairs(getgc(true)) do
               if typeof(f) == "table" and rawget(f, "getIsMaxed") then
                   f.getIsMaxed = function()
                       return false
                   end
                   f.getFlags = function()
                       return 1
                   end
                   f.addFlags = function(aa,b)
                       aa:setFlags(0)
                       return
                   end
               end
           end
       end
   end
   if typeof(v) == "table" and rawget(v, "getCanJump") then
       v.getCanJump = function()
           return true
       end
   end
   if typeof(v) == "table" and rawget(v, "JUMP_DELAY_ADD") then
       v.JUMP_DELAY_ADD = 0.5
   end
   if typeof(v) == "table" and rawget(v, "_setStamina") then
       v._setStamina = function(a, b)
           a._stamina = math.huge
           a._staminaChangedSignal:Fire(99)
       end
   end
end
game.StarterGui:SetCore("SendNotification", {Title = "开启成功", Text = "Script loaded, "..game.Players.LocalPlayer.DisplayName..".", Duration = 4,})
  end
})
Tab:AddButton({
  Name = "Zab-HUB",
  Callback = function ()
    loadstring(game:HttpGet('https://itots.tk/zaphub/ZapHubFreeVersion'))()
  end
})

Tab:AddButton({
  Name = "盾",
  Callback = function ()
    local lp = game.Players.LocalPlayer

local animationInfo = {}

function getInfo(id)
  local success, info = pcall(function()
      return game:GetService("MarketplaceService"):GetProductInfo(id)
  end)
  if success then
      return info
  end
  return {Name=''}
end
function block(player)
  keypress(0x46)
  wait()
  keyrelease(0x46)
end

local AnimNames = {
  'Slash',
  'Swing',
  'Sword'
}

function playerAdded(v)
    local function charadded(char)
      local humanoid = char:WaitForChild("Humanoid", 5)
      if humanoid then
          humanoid.AnimationPlayed:Connect(function(track)
              local info = animationInfo[track.Animation.AnimationId]
              if not info then
                  info = getInfo(tonumber(track.Animation.AnimationId:match("%d+")))
                  animationInfo[track.Animation.AnimationId] = info
              end
             
              if (lp.Character and lp.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Head")) then
                  local mag = (v.Character.Head.Position - lp.Character.Head.Position).Magnitude
                  if mag < 15  then
                     
                      for _, animName in pairs(AnimNames) do
                          if info.Name:match(animName) then
                              pcall(block, v)
                          end
                      end
                     
                  end
              end
          end)
      end
  end
 
  if v.Character then
      charadded(v.Character)
  end
  v.CharacterAdded:Connect(charadded)
end

for i,v in pairs(game.Players:GetPlayers()) do
   if v ~= lp then
       playerAdded(v)
   end
end

game.Players.PlayerAdded:Connect(playerAdded)
  end
})

local Tab = Window:MakeTab({
    Name = "兵工厂",
    Icon = "rbxassetid://7733779610",
    PremiumOnly = false
})

Tab:AddButton({
	Name = "兵工厂",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/p634jAYs"))()
  	end    
})
Tab:AddButton({
  Name = "范围",
  Callback = function ()
    function getplrsname()
for i,v in pairs(game:GetChildren()) do
if v.ClassName == "Players" then
return v.Name
end
end
end
local players = getplrsname()
local plr = game[players].LocalPlayer
coroutine.resume(coroutine.create(function()
while wait(1) do
coroutine.resume(coroutine.create(function()
for _,v in pairs(game[players]:GetPlayers()) do
if v.Name ~= plr.Name and v.Character then
v.Character.HeadHB.CanCollide = false
v.Character.HeadHB.Transparency = 10
v.Character.HeadHB.Size = Vector3.new(100,100,100)
v.Character.HumanoidRootPart.CanCollide = false
v.Character.HumanoidRootPart.Transparency = 10
v.Character.HumanoidRootPart.Size = Vector3.new(100,100,100)
end
end
end))
end
end))
function CreateSG(name,parent,face)
local SurfaceGui = Instance.new("SurfaceGui",parent)
SurfaceGui.Parent = parent
SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SurfaceGui.Face = Enum.NormalId[face]
SurfaceGui.LightInfluence = 0
SurfaceGui.ResetOnSpawn = false
SurfaceGui.Name = name
SurfaceGui.AlwaysOnTop = true
local Frame = Instance.new("Frame",SurfaceGui)
Frame.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
Frame.Size = UDim2.new(1,0,1,0)
end
while wait(1) do
for i,v in pairs (game:GetService("Players"):GetPlayers()) do
if v ~= game:GetService("Players").LocalPlayer and v.Character ~= nil and
v.Character:FindFirstChild("LowerTorso") and v.Character.LowerTorso:FindFirstChild("cham") == nil then
for i,v in pairs (v.Character:GetChildren()) do
if v:IsA("MeshPart") or v.Name == "LowerTorso" then
CreateSG("cham",v,"Back")
CreateSG("cham",v,"Front")
CreateSG("cham",v,"Left")
CreateSG("cham",v,"Right")
CreateSG("cham",v,"Right")
CreateSG("cham",v,"Top")
CreateSG("cham",v,"Bottom")
end
end
end
end
end
  end
})
Tab:AddButton({
  Name = "Arsonia-Hub",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/The3Bakers4565/Spicy-Bagel/main/Other/Arsenal/Less_FileSize/Arsonia_UI.lua"))()
  end
})

local Tab= Window:MakeTab({
	Name = "巴掌大战",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})

local Tab= Window:MakeTab({
	Name = "写一封信",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "Letter-Hub",
  Callback = function ()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/insuretya/writealetter/main/writtealetter.lua')))()
  end
})
Tab:AddButton({
  Name = "自动注译",
  Callback = function ()
_G.AutoInfNotes = false
while _G.AutoInfNotes == true do

 
local A_1 = "made by demo"
local A_2 = false
local Event = game:GetService("ReplicatedStorage").COM.Game.RequestTakeNote
Event:InvokeServer(A_1, A_2)

end

  end
})
Tab:AddButton({
  Name = "动画",
  Callback = function ()
    for _,v in pairs(game.ReplicatedStorage.Emotes.Packs:GetChildren()) do
   local anim = require(v)
   anim.Required = false;
end

  end
})
Tab:AddButton({
  Name = "动画",
  Callback = function ()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/lobox920/Shar-Script/main/Write%20a%20Letter.lua')))()
  end
})
Tab:AddButton({
  Name = "无限文字",
  Callback = function ()
    local text = "infinite notes made by tabz[#[9432"
--[[
   __                __                 
  /  |              /  |                
 _$$ |_     ______  $$ |____   ________ 
/ $$   |   /      \ $$      \ /        |
$$$$$$/    $$$$$$  |$$$$$$$  |$$$$$$$$/ 
  $$ | __  /    $$ |$$ |  $$ |  /  $$/  
  $$ |/  |/$$$$$$$ |$$ |__$$ | /$$$$/__ 
  $$  $$/ $$    $$ |$$    $$/ /$$      |
   $$$$/   $$$$$$$/ $$$$$$$/  $$$$$$$$/ 
                                        
                                        
                                        

Inf Notes Script by tabz#9432 | I GET BANNED ALLOT SO IT MIGHT NOT BE ACCURATE
https://www.roblox.com/games/8425637426/Write-a-Letter
]]--
while wait() do
local args = {
    [1] = text,
    [2] = false
}
wait()
game:GetService("ReplicatedStorage").COM.Game.RequestTakeNote:InvokeServer(unpack(args))
local args = {
    [1] = "Drop"
}
game:GetService("Players").LocalPlayer.Character.Note.ClassEvent:FireServer(unpack(args))
end 

  end
})
Tab:AddButton({
  Name = "消除文字",
  Callback = function ()
    --[[
   __                __                 
  /  |              /  |                
 _$$ |_     ______  $$ |____   ________ 
/ $$   |   /      \ $$      \ /        |
$$$$$$/    $$$$$$  |$$$$$$$  |$$$$$$$$/ 
  $$ | __  /    $$ |$$ |  $$ |  /  $$/  
  $$ |/  |/$$$$$$$ |$$ |__$$ | /$$$$/__ 
  $$  $$/ $$    $$ |$$    $$/ /$$      |
   $$$$/   $$$$$$$/ $$$$$$$/  $$$$$$$$/ 
                                        
                                        
                                        

Clear everyone's Notes Script by tabz#9432 | I GET BANNED ALLOT SO IT MIGHT NOT BE ACCURATE
https://www.roblox.com/games/6423728755/new-physics-engine
]]--
while wait() do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-67, 4, 95)
wait()
local args = {
    [1] = workspace.BulletinBoards.Notes.Note
}
wait()
game:GetService("ReplicatedStorage").COM.Game.RequestPinPickUp:InvokeServer(unpack(args))
local args = {
    [1] = "Drop"
}
game:GetService("Players").LocalPlayer.Character.Note.ClassEvent:FireServer(unpack(args))
end 

  end
})
local Tab= Window:MakeTab({
	Name = "The Rake",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "Source-Hub",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/RakeEvolved/Stable/Source.lua"))()
  end
})
local Tab= Window:MakeTab({
	Name = "武器库",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton({
  Name = "自瞄(区分团队)",
  Callback = function ()
    local fov = 100
local maxTransparency = 0.1 -- TransparÃªncia mÃ¡xima dentro do cÃ­rculo (0.1 = 10% de transparÃªncia)
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Teams = game:GetService("Teams") -- Adicione esta linha para acessar os times
local Cam = game.Workspace.CurrentCamera

local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 2
FOVring.Color = Color3.fromRGB(128, 0, 128) -- Cor roxa
FOVring.Filled = false
FOVring.Radius = fov
FOVring.Position = Cam.ViewportSize / 2
FOVring.Transparency = 0.1 -- TransparÃªncia inicial igual ao segundo script

local function updateDrawings()
    local camViewportSize = Cam.ViewportSize
    FOVring.Position = camViewportSize / 2
end

local function onKeyDown(input)
    if input.KeyCode == Enum.KeyCode.Delete then
        RunService:UnbindFromRenderStep("FOVUpdate")
        FOVring:Remove()
    end
end

UserInputService.InputBegan:Connect(onKeyDown)

local function lookAt(target)
    local lookVector = (target - Cam.CFrame.Position).unit
    local newCFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
    Cam.CFrame = newCFrame
end

local function calculateTransparency(distance)
    -- Ajuste a transparÃªncia com base na distÃ¢ncia do centro do cÃ­rculo
    local maxDistance = fov -- A distÃ¢ncia mÃ¡xima do centro do cÃ­rculo
    local transparency = (1 - (distance / maxDistance)) * maxTransparency
    return transparency
end

local function getClosestPlayerInFOV(trg_part)
    local nearest = nil
    local last = math.huge
    local playerMousePos = Cam.ViewportSize / 2
    local localPlayer = Players.LocalPlayer
    local localPlayerTeam = localPlayer.Team

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= localPlayer then
            local part = player.Character and player.Character:FindFirstChild(trg_part)
            if part then
                local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
                local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude
                
                -- Adicione uma verificaÃ§Ã£o de equipe aqui
                if isVisible and distance < fov and player.Team ~= localPlayerTeam then
                    if distance < last then
                        last = distance
                        nearest = player
                    end
                end
            end
        end
    end

    return nearest
end

RunService.RenderStepped:Connect(function()
    updateDrawings()
    local closest = getClosestPlayerInFOV("Head")
    if closest and closest.Character:FindFirstChild("Head") then
        lookAt(closest.Character.Head.Position)

        if closest then
            local ePos, isVisible = Cam:WorldToViewportPoint(closest.Character.Head.Position)
            local distance = (Vector2.new(ePos.x, ePos.y) - (Cam.ViewportSize / 2)).Magnitude
            FOVring.Transparency = calculateTransparency(distance)
        else
            FOVring.Transparency = 0.1 -- Mantenha completamente visÃ­vel quando nenhum jogador estiver no FOV
        end
    else
        FOVring.Transparency = 0.1 -- Mantenha completamente visÃ­vel quando nenhum jogador estiver no FOV
    end
end)

  end
})
Tab:AddButton({
  Name = "自瞄、区分墙壁、团队(要卡密)",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Dustin21335/Universal-aimbot-Roblox/main/Aimbot.lua"))()
  end
})
Tab:AddButton({
	Name = "复制卡密",
	Callback = function()
	setclipboard("Aim2143")
end
})