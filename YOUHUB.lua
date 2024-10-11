--// Library \\
local repo = "https://raw.githubusercontent.com/Cold-Script/Linoria/main/LinoriaLib/"
local Library = loadstring(game:HttpGet(repo .. "Library_Loader.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()
local Options = getgenv().Linoria.Options
local Toggles = getgenv().Linoria.Toggles
local Window = Library:CreateWindow({
	Title = "DOORS - V5 | YOUHUB",
	Center = true,
	AutoShow = true,
	Resizable = true,
        NotifySide = "Right",
	ShowCustomCursor = true,
	TabPadding = 2,
	MenuFadeTime = 0
})
local flags ={hintrush=false,hintrushhee=false,light=false,instapp=false,noseek=false,nogates=false,nopuzzle=false,noa90=false,noskeledoors=false,noseekarmsfire=false,noscreech=false,nodupe=false,getcode=false,getcodet=false,roomsnolock=false,draweraura=false,autorooms=false,itemsaura=false,autopulllever=false,bookcollecter=false,breakercollecter=false};
--// Tab \\
local Tab = Window:AddTab("Chính", "rbxassetid://4335489011")
local Tab2 = Window:AddTab("Gian Lận", "rbxassetid://10653012630")
local Tab3 = Window:AddTab("Cài Đặt", "rbxassetid://8571432274")
--// Group Tab \\
local Add = {
  Left = Tab:AddLeftGroupbox("Người Chơi"),
  Right = Tab:AddRightGroupbox("Trợ Giúp")
}
--// Group Tab2 \\
local Add2 = {
  Left = Tab2:AddLeftGroupbox("Thực Thể"),
  Right = Tab2:AddRightGroupbox("Thị giác")
}
--// Group Tab3 \\
local Add3 = {
  Left = Tab3:AddLeftGroupbox("Giao Diện"),
  Right = Tab3:AddRightGroupbox("Được Tạo Bởi")
}
Add.Left:AddSlider("MySlider",{
    Text = "Tốc Độ",
    Default = 16,
    Min = 16, Max = 21,
    Rounding = 1,
    Compact = true,
    Callback = function(v)
    _G.Speed = v
end
})
Add.Left:AddToggle("MyToggle",{
    Text = "Nhận Tốc Độ",
    Default = false,
    Callback = function(v)
_G.EnabledSpeed = v
game:GetService("RunService").RenderStepped:Connect(function()
if _G.EnabledSpeed then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.Speed or 16
else
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end
end)
end 
})
Add.Left:AddDivider()
Add.Left:AddSlider("MySlider",{
    Text = "Độ Góc",
    Default = 30,
    Min = 30, Max = 90,
    Rounding = 1,
    Compact = true,
    Callback = function(v)
    _G.MaxSlopeAngle = v
end
})
Add.Left:AddToggle("MyToggle",{
    Text = "Nhận Độ Góc",
    Default = false,
    Callback = function(v)
_G.EnabledMaxSlopeAngle = v
game:GetService("RunService").RenderStepped:Connect(function()
if _G.EnabledMaxSlopeAngle then
game.Players.LocalPlayer.Character.Humanoid.MaxSlopeAngle = _G.MaxSlopeAngle or 30
else
game.Players.LocalPlayer.Character.Humanoid.MaxSlopeAngle = 30
end
end)
end 
})
Add.Left:AddDivider()
Add.Left:AddSlider("MySlider",{
    Text = "Độ Mờ Cơ Thể",
    Default = 0.1,
    Min = 0.1, Max = 1,
    Rounding = 1,
    Compact = true,
    Callback = function(v)
    _G.BodyTransparency = v
end
})
Add.Left:AddToggle("MyToggle",{
    Text = "Nhận Độ Mờ Cơ Thể",
    Default = false,
    Callback = function(v)
_G.EnabledBodyTransparency = v
game:GetService("RunService").RenderStepped:Connect(function()
if _G.EnabledBodyTransparency then
game.Players.LocalPlayer.Character.Head.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.LeftFoot.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.LeftHand.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.LeftLowerArm.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.LeftLowerLeg.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.LeftUpperArm.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.LeftUpperLeg.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.LowerTorso.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.RightFoot.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.RightFoot.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.RightHand.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.RightLowerArm.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.RightLowerLeg.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.RightUpperArm.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.RightUpperLeg.Transparency = _G.BodyTransparency or 0.1;
game.Players.LocalPlayer.Character.UpperTorso.Transparency = _G.BodyTransparency or 0.1;	
else
game.Players.LocalPlayer.Character.Head.Transparency = 0;
game.Players.LocalPlayer.Character.LeftFoot.Transparency = 0;
game.Players.LocalPlayer.Character.LeftHand.Transparency = 0;
game.Players.LocalPlayer.Character.LeftLowerArm.Transparency = 0;
game.Players.LocalPlayer.Character.LeftLowerLeg.Transparency = 0;
game.Players.LocalPlayer.Character.LeftUpperArm.Transparency = 0;
game.Players.LocalPlayer.Character.LeftUpperLeg.Transparency = 0;
game.Players.LocalPlayer.Character.LowerTorso.Transparency = 0;
game.Players.LocalPlayer.Character.RightFoot.Transparency = 0;
game.Players.LocalPlayer.Character.RightFoot.Transparency = 0;
game.Players.LocalPlayer.Character.RightHand.Transparency = 0;
game.Players.LocalPlayer.Character.RightLowerArm.Transparency = 0;
game.Players.LocalPlayer.Character.RightLowerLeg.Transparency = 0;
game.Players.LocalPlayer.Character.RightUpperArm.Transparency = 0;
game.Players.LocalPlayer.Character.RightUpperLeg.Transparency = 0;
game.Players.LocalPlayer.Character.UpperTorso.Transparency = 0;	
end
end)
end 
})
Add.Left:AddDivider()
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()
for _,v in next,game.Players.LocalPlayer.Character:GetDescendants() do 
if v:IsA("BasePart", v) and _G.Noclip then 
v.CanCollide = false
end
end
end)
end)
Add.Left:AddToggle("MyToggle",{
	Text = "Không Trơn",
	Default = false,
	Callback = function(v)
_G.NoSlow = v
game:GetService("RunService").RenderStepped:Connect(function()
game.Players.LocalPlayer.Character.Head.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.LeftFoot.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.LeftHand.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.LeftLowerArm.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.LeftLowerLeg.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.LeftUpperArm.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.LeftUpperLeg.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.LowerTorso.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.RightFoot.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.RightFoot.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.RightHand.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.RightLowerArm.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.RightLowerLeg.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.RightUpperArm.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.RightUpperLeg.Massless = not _G.NoSlow;
game.Players.LocalPlayer.Character.UpperTorso.Massless = not _G.NoSlow;
end)
end
})
Add.Left:AddToggle("MyToggle",{
	Text = "Xuyên Tường",
	Default = false,
	Callback = function(value)
_G.Noclip = value
if _G.Noclip == false then				
v:IsA("BasePart")
v.CanCollide = true
end 
end
})
Add.Left:AddToggle("MyToggle",{
    Text = "Có Thể Nhảy",
    Default = false,
    Callback = function(v)
_G.Jump = v
game:GetService("RunService").RenderStepped:Connect(function()
game.Players.LocalPlayer.Character:SetAttribute("CanJump", _G.Jump)
end)
end
})
Add.Left:AddToggle("MyToggle",{
    Text = "Không Gian Chậm",
    Default = false,
    Callback = function(v)
_G.SlowJump = v
game:GetService("RunService").RenderStepped:Connect(function()
if _G.SlowJump then
workspace.Gravity = 50
else
workspace.Gravity = 90
end
end)
end
})
Add.Left:AddButton({Text="Chết",DoubleClick=true,Func = function()game.Players.LocalPlayer.Character.Humanoid.Health = 0 end}):AddButton({Text="Sảnh",DoubleClick=true,Func = function()game:GetService("ReplicatedStorage").EntityInfo.Lobby:FireServer() end})
Add.Left:AddButton({Text="Chơi Tiếp",DoubleClick=true,Func = function()game:GetService("ReplicatedStorage").EntityInfo.PlayAgain:FireServer() end}):AddButton({Text="Hồi Sinh",DoubleClick=true,Func = function()game:GetService("ReplicatedStorage").EntityInfo.Revive:FireServer() end})
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
if _G.FastCloset and game.Players.LocalPlayer.Character:GetAttribute("Hiding")==true then 
game:GetService("ReplicatedStorage").EntityInfo.CamLock:FireServer()end end)
Add.Right:AddToggle("MyToggle",{
    Text = "Ra Tủ Nhanh",
    Default = false,
    Callback = function(value)
_G.FastCloset = value
end
})
Add.Right:AddDivider()
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()
if _G.OpenDoorFar then game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door").ClientOpen:FireServer()
end 
end)
end)
Add.Right:AddToggle("MyToggle",{
    Text = "Mở Cửa Xa",
    Default = false,
    Callback = function(v)
_G.OpenDoorFar = v
end
})
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()
if _G.FastDoor then game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door").FastOpen = true
end 
end)
end)
Add.Right:AddToggle("MyToggle",{
    Text = "Mở Cửa Nhanh",
    Default = false,
    Callback = function(v)
_G.FastDoor = v
end
})
Add.Right:AddDivider()
game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(v)
if not _G.InsInt then return end
if v:IsA("ProximityPrompt") then
if _G.InsInt then
v.HoldDuration = 0
end
end
end)
Add.Right:AddToggle("MyToggle",{
    Text = "Nhấn Nhanh",
    Default = false,
    Callback = function(v)
_G.InsInt = v
end
})
game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(v)
if not _G.NInt then return end
if v:IsA("ProximityPrompt") then
if _G.NInt then
v.RequiresLineOfSight = false
else
v.RequiresLineOfSight = true
end
end
end)
Add.Right:AddToggle("MyToggle",{
    Text = "Nhấn Xuyên",
    Default = false,
    Callback = function(v)
_G.NInt = v
end
})
game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(v)
if not _G.IncreasedDistance then return end
if v:IsA("ProximityPrompt") then
if _G.IncreasedDistance then
v.MaxActivationDistance = _G.RInt or 3
else
v.MaxActivationDistance = 3
end
end
end)
Add.Right:AddSlider("MySlider",{
    Text = "Tầm Nhấn",
    Default = 3,
    Min = 3, Max = 15,
    Rounding = 1,
    Compact = true,
    Callback = function(v)
    _G.RInt = v
end
})
Add.Right:AddToggle("MyToggle",{
    Text = "Nhận Tầm Nhấn",
    Default = false,
    Callback = function(v)
_G.IncreasedDistance = v
end
})
game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function()
pcall(function()
if _G.AntiEyes then if workspace:FindFirstChild("Eyes") then game:GetService("ReplicatedStorage").EntityInfo.MotorReplication:FireServer(0,(_G.AntiEyes and 120) or 0 ,0,false);end end end);end);
Add2.Left:AddToggle("MyToggle",{
    Text = "Chặn Eyes",
    Default = false,
    Callback = function(v)
_G.AntiEyes = v
end
})
game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function()
pcall(function()
if _G.AntiLookman then if workspace:FindFirstChild("BackdoorLookman") then game:GetService("ReplicatedStorage").EntityInfo.MotorReplication:FireServer(0,(_G.AntiLookman and 120) or 0 ,0,false);end end end);end);
Add2.Left:AddToggle("MyToggle",{
    Text = "Chặn Lookman",
    Default = false,
    Callback = function(v)
_G.AntiLookman = v
end
})
Add2.Left:AddDivider()
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()
if _G.BypassSnare then 
for _,v in pairs(game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):GetChildren()) do 
if (v.Name=="Snare") then v.Hitbox['TouchInterest']:Destroy();end end end end);end);
Add2.Left:AddToggle("MyToggle",{
    Text = "Chặn Bẫy",
    Default = false,
    Callback = function(v)
_G.BypassSnare = v
end
})
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()if _G.SeekArm then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("Seek_Arm") then for _,v in pairs(game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):GetChildren()) do if (v.Name=="Seek_Arm") then v.AnimatorPart.CanTouch=false;end end end end end);end);game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()if _G.SeekFire then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("ChandelierObstruction") then for _,v in pairs(game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):GetChildren()) do if (v.Name=="ChandelierObstruction") then v.HurtPart.CanTouch=false;end end end end end);end);
Add2.Left:AddToggle("MyToggle",{
    Text = "Chặn Tay Seek",
    Default = false,
    Callback = function(v)
_G.SeekArm = v
end
})
Add2.Left:AddToggle("MyToggle",{
    Text = "Chặn Lửa Đèn",
    Default = false,
    Callback = function(v)
_G.SeekFire = v
end
})
game:GetService("Workspace").DescendantAdded:Connect(function(v)
if  not _G.antibanananana then return end 
if v:IsA("Part") then 
if _G.antibanananana then 
if v.Name == "BananaPeel" then 
v.CanTouch = false 
v.CanCollide = false
end 
end 
end 
end)
Add2.Left:AddToggle("MyToggle",{
     Text = "Chặn Banana",
     Default = false,
     Callback = function(v)
local v2=0;while true do if v2 == 0 then _G.antibanananana=v;if (_G.antibanananana==true) then for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do if v:IsA("Part") then if (v.Name=="BananaPeel") then v.CanTouch=false v.CanCollide = false;end end end end break;end end end})
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()if _G.SeekChase then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("TiggerEventCollision") then for _,v in pairs(game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):GetChildren()) do if (v.Name=="TriggerEventCollision") then v:Destroy();end end end end end);end);
Add2.Left:AddToggle("MyToggle",{
     Text = "Chặn Cuộc Chạy Seek",
     Default = false,
     Callbacl = function(v)
_G.SeekChase = v
end
})
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()if _G.AntiMinecart then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("MinecartCollision") then for _,v in pairs(game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):GetChildren()) do if (v.Name=="MinecartCollision") then v:Destroy();end end end end end);end);
Add2.Left:AddToggle("MyToggle",{
     Text = "Chặn Cuộc Chạy Tàu Lửa",
     Default = false,
     Callbacl = function(v)
_G.AntiMinecart = v 
end
})
Add2.Left:AddDivider()
Add2.Left:AddToggle("MyToggle",{
    Text = "Chặn Screech",
    Default = false,
    Callback = function(v)
if v then
local Screech = game:GetService("ReplicatedStorage").Entities.Screech:Destroy()
else
Screech:Disconnect()
end
end})
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()if _G.AntiGloomEgg then
for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
for _, gloomPile in pairs(room:GetChildren()) do
if gloomPile.Name == "GloomPile" then
for _, gloomEgg in pairs(gloomPile:GetDescendants()) do
if gloomEgg.Name == "Egg" then
gloomEgg.CanTouch = not true
end
end
end
end
end
end
end)
end)
Add2.Left:AddToggle("MyToggle",{
     Text = "Chặn Trứng Gloom (Đóm)",
     Default = false,
     Callback = function(v)
_G.AntiGloomEgg = v
end
})
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()if _G.AntiGiggle then
for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
for _, giggle in pairs(room:GetChildren()) do
if giggle.Name == "GiggleCeiling" then
giggle:WaitForChild("Hitbox", 5).CanTouch = not true
end
end
end
end
end)
end)

Add2.Left:AddToggle("MyToggle",{
     Text = "Chặn Giggle",
     Default = false,
     Callbacl = function(v)
_G.AntiGiggle = v 
end
})

Add2.Left:AddToggle("MyToggle",{
     Text = "Chặn A90",
     Default = false,
     Callback = function(v)
flags.noa90 = v
if v then 
local v2 = game.ReplicatedStorage:WaitForChild("EntityInfo"):WaitForChild("A90")
local v3 = 0 local v4 while true do if v3 == 0 then v4 = game.Players.LocalPlayer.PlayerGui:WaitForChild("MainUI"):WaitForChild("Jumpscare"):FindFirstChild("Jumpscare_A90");if v4 then v4.Parent=nil;v2.Parent=nil;repeat task.wait();game.SoundService.Main.Volume=1;until not flags.noa90 v4.Parent= game.Players.LocalPlayers.PlayerGui.MainUI.Jumpscare;v2.Parent=game.ReplicatedStorage:WaitForChild("EntityInfo");end break;end end end end})
Add2.Left:AddToggle("MyToggle",{
     Text = "Chặn Figure Nghe",
     Default = false,
     Callback = function(v)
if v then
game:GetService("ReplicatedStorage").EntityInfo.Crouch:FireServer(true)
else
game:GetService("ReplicatedStorage").EntityInfo.Crouch:FireServer(false)
end
end
})
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()
if _G.antije then for _,v in pairs(game.workspace:GetChildren()) do if (v.Name=="JeffTheKiller") then v.Knife.CanTouch=false;end end for _,v in pairs(game.workspace:GetChildren()) do if (v.Name=="JeffTheKiller") then v.Head.CanTouch=false;end end for _,v in pairs(game.workspace:GetChildren()) do if (v.Name=="JeffTheKiller") then v.HumanoidRootPart.CanTouch=false;end end for _,v in pairs(game.workspace:GetChildren()) do if (v.Name=="JeffTheKiller") then v["Left Arm"].CanTouch=false;end end for _,v in pairs(game.workspace:GetChildren()) do if (v.Name=="JeffTheKiller") then v["Left Leg"].CanTouch=false;end end for _,v in pairs(game.workspace:GetChildren()) do if (v.Name=="JeffTheKiller") then v["Right Arm"].CanTouch=false;end end for _,v in pairs(game.workspace:GetChildren()) do if (v.Name=="JeffTheKiller") then v["Right Leg"].CanTouch=false;end end for _,v in pairs(game.workspace:GetChildren()) do if (v.Name=="JeffTheKiller") then v.Torso.CanTouch=false;end end end end);end);
Add2.Left:AddToggle("MyToggle",{
     Text = "Chặn Jeff The Killer",
     Default = false,
     Callback = function(v)
_G.antije = v
end
})
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()if _G.AntiDam then
local room = workspace.CurrentRooms:FindFirstChild("100")
if room and room:FindFirstChild("_DamHandler") then
local seekFlood = room._DamHandler:FindFirstChild("SeekFloodline")
if seekFlood then
seekFlood.CanCollide = false
seekFlood.CanTouch = false
end
end
end
end)
end)
Add2.Left:AddToggle("MyToggle",{
     Text = "Chặn Vật Chất Seek",
     Default = false,
     Callback = function(v)
_G.AntiDam = v
end
})
Add2.Right:AddLabel("Ánh Màu"):AddColorPicker("MyColorPicker",{
            Default = Color3.new(1, 1, 1),
	    Callback = function(v)
game:GetService("RunService").RenderStepped:Connect(function()
_G.ColorAmbient = v
end)
end})
Add2.Right:AddToggle("MyToggle",{
    Text = "Ánh Sáng",
    Default = false,
    Callback = function(v)
if v then
game.Lighting.Brightness = 1.5
game.Lighting.GlobalShadows = false
game.Lighting.OutdoorAmbient = _G.ColorAmbient or Color3.fromRGB(255, 255, 255)
else
game.Lighting.Brightness = 1
game.Lighting.GlobalShadows = true
game.Lighting.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
end
end
})
Add2.Right:AddToggle("MyToggle",{
    Text = "Không Sương Mù",
    Default = false,
    Callback = function(v)
pcall(function()
if not game.Lighting:GetAttribute("FogStart") then game.Lighting:SetAttribute("FogStart", game.Lighting.FogStart) end
if not game.Lighting:GetAttribute("FogEnd") then game.Lighting:SetAttribute("FogEnd", game.Lighting.FogEnd) end
game.Lighting.FogStart = value and 0 or game.Lighting:GetAttribute("FogStart")
game.Lighting.FogEnd = value and math.huge or game.Lighting:GetAttribute("FogEnd")
local fog = game.Lighting:FindFirstChildOfClass("Atmosphere")
if fog then
if not fog:GetAttribute("Density") then fog:SetAttribute("Density", fog.Density) end
fog.Density = value and 0 or fog:GetAttribute("Density")
end
end)
end
})
Add2.Right:AddDivider()
Add2.Right:AddSlider("MySlider",{
    Text = "Tầm Nhìn",
    Default = 70,
    Min = 70, Max = 120,
    Rounding = 1,
    Compact = true,
    Callback = function(v)
    _G.FOV = v
end
})
Add2.Right:AddToggle("MyToggle",{
    Text = "Nhận Tầm Nhìn",
    Default = false,
    Callback = function(v)
_G.EFov = v
game:GetService("RunService").RenderStepped:Connect(function()
if _G.EFov then
workspace.CurrentCamera.FieldOfView = _G.FOV or 70
else
workspace.CurrentCamera.FieldOfView = 70
end
end)
end 
})
Add2.Right:AddToggle("MyToggle",{
    Text = "Góc nhìn thứ ba",
    Default = false,
    Callback = function(v)
task.spawn(function()
        if v then
            workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position) * CFrame.fromOrientation(0, ({workspace.CurrentCamera.CFrame:ToOrientation()})[2], 0)
            game.Players.LocalPlayer.Character.Head.Transparency = 0
            for i, v in game.Players.LocalPlayer.Character:GetChildren() do
                if v:IsA'Accessory' and v.Name:lower():match('accessory') then
                    for name, src in v:GetChildren() do
                        pcall(function()
                            src.Transparency = 0
                        end)
                    end
                end
            end
        else
            workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
            game.Players.LocalPlayer.Character.Head.Transparency = 1
            for i, v in game.Players.LocalPlayer.Character:GetChildren() do
                if v:IsA'Accessory' and v.Name:lower():match('accessory') then
                    for name, src in v:GetChildren() do
                        pcall(function()
                            src.Transparency = 1
                        end)
                    end
                end
            end
        end
    end)
end
})
Add2.Right:AddDivider()
Add2.Right:AddSlider("MySlider",{
    Text = "Ánh Sáng Mặt",
    Default = 1,
    Min = 1, Max = 5,
    Rounding = 1,
    Compact = true,
    Callback = function(v)
    _G.LHead = v
end
})
Add2.Right:AddSlider("MySlider",{
    Text = "Độ Xa Ánh Sáng Mặt",
    Default = 0,
    Min = 0, Max = 70,
    Rounding = 1,
    Compact = true,
    Callback = function(v)
    _G.LHeadR = v
end
})
game:GetService("RunService").RenderStepped:Connect(function()
local ah = Instance.new("PointLight")
ah.Enabled = false
ah.Range = _G.LHeadR or 0
ah.Color = Color3.new(1,1,1)
ah.Shadows = false
ah.Parent = ag.root
	end)

















































