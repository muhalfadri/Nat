-- hackpanel.lua by muhalfadri
-- GUI Hacker Panel untuk Grow a Garden

local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local speed = 16
local flyEnabled = false
local flyBody

-- Buat GUI
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 250, 0, 300)
frame.Position = UDim2.new(0, 20, 0, 100)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BackgroundTransparency = 0.2
frame.BorderSizePixel = 0

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "🌿 Hacker Panel"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 18

local function createButton(text, posY, callback)
    local btn = Instance.new("TextButton", frame)
    btn.Size = UDim2.new(1, -20, 0, 30)
    btn.Position = UDim2.new(0, 10, 0, posY)
    btn.Text = text
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 14
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    btn.BorderSizePixel = 0
    btn.MouseButton1Click:Connect(callback)
end

-- Fly toggle
local function toggleFly()
    flyEnabled = not flyEnabled
    if flyEnabled then
        flyBody = Instance.new("BodyVelocity")
        flyBody.Velocity = Vector3.new(0, 50, 0)
        flyBody.MaxForce = Vector3.new(0, math.huge, 0)
        flyBody.Parent = hrp
    else
        if flyBody then flyBody:Destroy() end
    end
end

-- Speed boost
local function boostSpeed()
    local hum = char:FindFirstChildOfClass("Humanoid")
    if hum then
        hum.WalkSpeed = 60
    end
end

-- Auto grow (spam fertilizer)
local function autoGrow()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local PlantsFolder = workspace:FindFirstChild("Plants")
    local fertilizeRemote = ReplicatedStorage:FindFirstChild("Remotes")
        and ReplicatedStorage.Remotes:FindFirstChild("Farm")
        and ReplicatedStorage.Remotes.Farm:FindFirstChild("Fertilize")

    if fertilizeRemote and PlantsFolder then
        for _, plant in pairs(PlantsFolder:GetChildren()) do
            fertilizeRemote:FireServer(plant)
        end
    end
end

-- Teleport ke Shop
local function teleportToShop()
    hrp.CFrame = CFrame.new(Vector3.new(100, 10, 100)) -- koordinat shop dummy
end

-- Auto sell
local function autoSell()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local sellRemote = ReplicatedStorage:FindFirstChild("Remotes")
        and ReplicatedStorage.Remotes:FindFirstChild("Sell")
    if sellRemote then
        sellRemote:FireServer()
    end
end

-- Tambah tombol ke GUI
createButton("Fly On/Off", 50, toggleFly)
createButton("Speed Boost", 90, boostSpeed)
createButton("Auto Grow", 130, autoGrow)
createButton("Teleport to Shop", 170, teleportToShop)
createButton("Auto Sell", 210, autoSell)
