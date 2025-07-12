-- Fly ON/OFF GUI by muhalfadri (khusus Everest)
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

local flying = false
local bv = nil

-- GUI
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "FlyToggleGUI"

local onBtn = Instance.new("TextButton")
onBtn.Size = UDim2.new(0, 100, 0, 40)
onBtn.Position = UDim2.new(0, 10, 0, 100)
onBtn.Text = "Fly ON"
onBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
onBtn.TextColor3 = Color3.new(1,1,1)
onBtn.Parent = gui

local offBtn = Instance.new("TextButton")
offBtn.Size = UDim2.new(0, 100, 0, 40)
offBtn.Position = UDim2.new(0, 10, 0, 150)
offBtn.Text = "Fly OFF"
offBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
offBtn.TextColor3 = Color3.new(1,1,1)
offBtn.Parent = gui

-- Aktifkan Fly
onBtn.MouseButton1Click:Connect(function()
    if flying then return end
    flying = true
    bv = Instance.new("BodyVelocity")
    bv.Velocity = Vector3.new(0, 60, 0)
    bv.MaxForce = Vector3.new(0, math.huge, 0)
    bv.Parent = hrp
    print("🕊️ Fly ON")
end)

-- Matikan Fly
offBtn.MouseButton1Click:Connect(function()
    if not flying then return end
    flying = false
    if bv then bv:Destroy() end
    print("🛑 Fly OFF")
end)
