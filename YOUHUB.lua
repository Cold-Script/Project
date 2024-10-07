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
  Right = Tab2:AddLeftGroupbox("Thị giác")
}
--// Group Tab3 \\
local Add3 = {
  Left = Tab3:AddLeftGroupbox("Giao Diện"),
  Right = Tab3:AddLeftGroupbox("Được Tạo Bởi")
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
    Min = 0.1, Max = 0.9,
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
Add.Left:AddToggle("EnableJump",{
    Text = "Có Thể Nhảy",
    Default = false,
    Callback = function(v)
_G.Jump = v
game:GetService("RunService").RenderStepped:Connect(function()
game.Players.LocalPlayer.Character:SetAttribute("CanJump", _G.Jump)
end)
end
})
Add.Left:AddToggle("MySlider",{
	Text = "Độ Cao Thần"
	Default = 20,
	Min = 20, Max = 30,
	Rounding = 1,
	Compact = true,
	Callback = function(v)
	_G.GodTeller = v
end
})
Add.Left:AddToggle("MyToggle",{
	Text = "Thần",
	Default = false,
        Callback = function(v)
if v then
local Collison = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
Collison.Position = Collison.Position - Vector3.new(0,_G.GodTeller or -20,0)
else
local Collison = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
Collison.Position = Collison.Position - Vector3.new(0,_G.GodTeller or 20,0)
end
end})
