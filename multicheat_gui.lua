local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local FlyButton = Instance.new("TextButton")
local SpeedButton = Instance.new("TextButton")
local AutoBuyButton = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
Frame.Parent = ScreenGui
Frame.Position = UDim2.new(0.1, 0, 0.1, 0)
Frame.Size = UDim2.new(0, 200, 0, 200)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

FlyButton.Parent = Frame
FlyButton.Position = UDim2.new(0, 10, 0, 10)
FlyButton.Size = UDim2.new(0, 180, 0, 40)
FlyButton.Text = "Fly"
FlyButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/muhalfadri/Nat/main/fly.lua"))()
end)

SpeedButton.Parent = Frame
SpeedButton.Position = UDim2.new(0, 10, 0, 60)
SpeedButton.Size = UDim2.new(0, 180, 0, 40)
SpeedButton.Text = "Speed"
SpeedButton.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

AutoBuyButton.Parent = Frame
AutoBuyButton.Position = UDim2.new(0, 10, 0, 110)
AutoBuyButton.Size = UDim2.new(0, 180, 0, 40)
AutoBuyButton.Text = "Auto Buy Gear"
AutoBuyButton.MouseButton1Click:Connect(function()
    -- kamu bisa ganti dengan script auto beli gear asli
    print("Auto buy gear aktif (placeholder)")
end)
