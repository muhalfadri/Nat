-- Ultra Speed 500 by muhalfadri
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

humanoid.WalkSpeed = 500
print("⚡ Kamu sekarang ngebut dengan kecepatan 500!")
