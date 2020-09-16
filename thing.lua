local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "Downtown Roleplay",
     Style = 3,
     SizeX = 450,
     SizeY = 250,
     Theme = "Dark"
})

local Main = UI.New({
    Title = "Main"
})

local Tps = UI.New({
    Title = "Teleports"
})

Main.Button({
    Text = "Stop Farming Shop",
    Callback = function()
        getgenv().shop = true

        while wait(4) do
            if getgenv().shop == true then
            game:GetService("ReplicatedStorage").Events.SaleXd:FireServer(LocalPlayer)
        end
    end
end
})

Main.Button({
    Text = "Stop Farming Shop",
    Callback = function()
        getgenv().shop = false

        while wait(4) do
            if getgenv().shop == true then
            game:GetService("ReplicatedStorage").Events.SaleXd:FireServer(LocalPlayer)
        end
    end
end
})

-- teleport section

Tps.Button({
    Text = "Teleport To Spawn",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(433, -14, 162) 
    end
})

Tps.Button({
    Text = "Teleport Outside Of Spawn",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(193, -6, 162)  --110, 4, 73
    end
})

Tps.Button({
    Text = "Teleport Inside Robine Spawn",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(110, 4, 73)
    end
})
