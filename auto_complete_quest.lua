-- auto_complete_quest.lua by muhalfadri -- Menyelesaikan quest secara otomatis jika server mengizinkan remote FireServer()

local ReplicatedStorage = game:GetService("ReplicatedStorage") local player = game.Players.LocalPlayer

-- Ganti "Quest" dan "Complete" jika remote punya nama berbeda local questRemote = ReplicatedStorage:FindFirstChild("Remotes") and ReplicatedStorage.Remotes:FindFirstChild("Quest") and ReplicatedStorage.Remotes.Quest:FindFirstChild("Complete")

if not questRemote then warn("❌ Remote quest tidak ditemukan. Tidak bisa lanjut.") return end

-- Daftar ID atau nama quest (kalau kamu tahu ID-nya bisa lebih akurat) local questList = { "Tutorial1", "Tutorial2", "Plant5Seeds", "Harvest3Plants", "SellSomething", "ClaimDailyReward", "ReachLevel5", "GivePetToFriend" -- Tambahkan quest lainnya jika tahu ID-nya }

for _, questID in ipairs(questList) do questRemote:FireServer(questID) wait(0.3) -- delay biar gak terlalu spam end

print("✅ Semua quest dicoba untuk diselesaikan secara otomatis.")

