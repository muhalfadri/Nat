-- stealth_mode.lua by muhalfadri -- Mode siluman: transparan + speed boost + ESP musuh

local player = game.Players.LocalPlayer local char = player.Character or player.CharacterAdded:Wait() local hrp = char:WaitForChild("HumanoidRootPart")

-- 1. Transparan dan hilangkan fisik for _, part in pairs(char:GetDescendants()) do if part:IsA("BasePart") then part.Transparency = 1 part.CanCollide = false elseif part:IsA("Decal") then part.Transparency = 1 end end

-- 2. Speed boost local hum = char:FindFirstChildOfClass("Humanoid") if hum then hum.WalkSpeed = 70 end

-- 3. ESP Musuh (tampilkan nama musuh dari jauh) for _, other in pairs(game.Players:GetPlayers()) do if other ~= player and other.Character then local head = other.Character:FindFirstChild("Head") if head and not head:FindFirstChild("ESP") then local esp = Instance.new("BillboardGui", head) esp.Name = "ESP" esp.Size = UDim2.new(0, 100, 0, 40) esp.AlwaysOnTop = true esp.StudsOffset = Vector3.new(0, 2, 0)

local label = Instance.new("TextLabel", esp)
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.TextColor3 = Color3.fromRGB(255, 0, 0)
        label.TextStrokeTransparency = 0.5
        label.Text = other.Name
        label.Font = Enum.Font.GothamBold
        label.TextScaled = true
    end
end

end

print("✅ Mode siluman aktif: transparan, cepat, dan kamu bisa lihat semua musuh.")

