local bullet = script.Parent

bullet.Touched:Connect(function(hit)
    local humanoid = hit.Parent:FindFirstChild("Humanoid")
    if humanoid then
        humanoid.Health = 0 -- 1 hit langsung KO
        bullet:Destroy()
    end
end)
