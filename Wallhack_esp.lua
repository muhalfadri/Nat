-- wallhack_esp.lua by muhalfadri -- Menampilkan kotak ESP (box) di semua pemain lain

local Players = game:GetService("Players") local LocalPlayer = Players.LocalPlayer local RunService = game:GetService("RunService")

-- Fungsi untuk membuat ESP Box local function createESP(player) if player == LocalPlayer then return end

local character = player.Character or player.CharacterAdded:Wait()
local highlight = Instance.new("Highlight")
highlight.Name = "ESP_Highlight"
highlight.FillColor = Color3.fromRGB(255, 0, 0) -- warna merah
highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
highlight.FillTransparency = 0.5
highlight.OutlineTransparency = 0
highlight.Adornee = character
highlight.Parent = character

end

-- Tambahkan ESP ke semua pemain yang sudah ada for _, player in ipairs(Players:GetPlayers()) do if player ~= LocalPlayer then createESP(player) end end

-- Tambahkan ESP ke pemain baru yang join Players.PlayerAdded:Connect(function(player) player.CharacterAdded:Connect(function()\        wait(1) createESP(player) end) end)

print("✅ Wallhack ESP aktif: semua musuh terlihat.")

