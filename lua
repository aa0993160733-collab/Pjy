local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "Lucky Block UI",
    LoadingTitle = "Loading...",
    LoadingSubtitle = "By You",
    ConfigurationSaving = {
        Enabled = false
    }
})

local Tab = Window:CreateTab("Main", 4483362458)

local SpawnLuckyBlock = game:GetService("ReplicatedStorage"):WaitForChild("SpawnLuckyBlock")

local Enabled = false

task.spawn(function()
    while true do
        if Enabled then
            pcall(function()
                SpawnLuckyBlock:FireServer()
            end)
        end
        task.wait(0.1)
    end
end)

Tab:CreateToggle({
    Name = "Auto Spawn Lucky Block",
    CurrentValue = false,
    Flag = "AutoSpawn",
    Callback = function(Value)
        Enabled = Value
    end
})
