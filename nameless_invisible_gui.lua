-- Invisible + No Name GUI by muhalfadri
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "InvisibleAndNamelessGUI"

-- Fungsi membuat tombol
local function createButton(text, posY, color, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 140, 0, 40)
    btn.Position = UDim2.new(0, 10, 0, posY)
    btn.Text = text
    btn.BackgroundColor3 = color
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize
