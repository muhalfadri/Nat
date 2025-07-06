-- Disappear Script by muhalfadri (untuk Curi Brainrot dan sejenis)
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

-- Hilangkan semua part karakter
for _, part in pairs(char:GetDescendants()) do
    if part:IsA("BasePart") then
        part.Transparency = 1
        part.CanCollide = false
    elseif part:IsA("Decal") then
        part.Transparency = 1
    end
end

-- Hapus NameTag
for _, v in pairs(char:GetDescendants()) do
    if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
        v:Destroy()
    end
end

-- Hapus nama di leaderboard (opsional)
pcall(function()
    player.Name = ""
    player.DisplayName = ""
end)

print("✅ Kamu sekarang menghilang dari dunia 🌫️")
