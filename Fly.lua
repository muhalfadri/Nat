-- fly.lua by muhalfadri
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")

local flying = true
local speed = 50

local bv = Instance.new("BodyVelocity")
bv.Velocity = Vector3.new(0, speed, 0)
bv.MaxForce = Vector3.new(0, math.huge, 0)
bv.Parent = hrp

task.delay(10, function()
    flying = false
    bv:Destroy()
    print("Fly selesai")
end)
