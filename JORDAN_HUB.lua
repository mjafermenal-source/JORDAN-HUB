
-- JORDAN HUB
-- Created by Jordan
-- Version 1.0

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "JordanHub"
ScreenGui.ResetOnSpawn = false

local Frame = Instance.new("Frame")
Frame.Name = "Main"
Frame.Size = UDim2.new(0, 250, 0, 300)
Frame.Position = UDim2.new(0.5, -125, 0.5, -150)
Frame.BackgroundColor3 = Color3.fromRGB(15, 8, 25)
Frame.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = Frame

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.BackgroundColor3 = Color3.fromRGB(65, 0, 110)
Title.Text = "JORDAN HUB"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.Parent = Frame

ScreenGui.Parent = player:WaitForChild("PlayerGui")

local SpeedButton = CreateButton("SPEED", 200)


-- SPEED FUNCTION

local SPEED_VALUE = 50
local normalSpeed = 16
local speedEnabled = false

SpeedButton.MouseButton1Click:Connect(function()

    local character = player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")

    if not humanoid then return end

    speedEnabled = not speedEnabled

    if speedEnabled then
        humanoid.WalkSpeed = SPEED_VALUE
        SpeedButton.Text = "SPEED: ON"
    else
        humanoid.WalkSpeed = normalSpeed
        SpeedButton.Text = "SPEED: OFF"
    end

end)

local JumpButton = CreateButton("JUMP BOOST", 130)

-- JUMP BOOST FUNCTION

local normalJump = 50
local boostedJump = 100
local jumpEnabled = false

JumpButton.MouseButton1Click:Connect(function()

    local character = player.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")

    if not humanoid then return end

    jumpEnabled = not jumpEnabled

    humanoid.UseJumpPower = true

    if jumpEnabled then
        humanoid.JumpPower = boostedJump
        JumpButton.Text = "JUMP: ON"
    else
        humanoid.JumpPower = normalJump
        JumpButton.Text = "JUMP: OFF"
    end

end)

