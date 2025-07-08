-- Force Speed 500 terus menerus
local player = game.Players.LocalPlayer
while true do
    local char = player.Character or player.CharacterAdded:Wait()
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = 500
    end
    task.wait(0.2) -- setiap 0.2 detik paksa speed
end
