local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "Saber Simulator",
     Style = 3,
     SizeX = 500,
     SizeY = 250,
     Theme = "Dark"
})

local Farms = UI.New({
    Title = "Farms"
})

local TPS = UI.New({
    Title = "Teleports"
})

--[[
line break
]]--

Farms.Button({
    Text = "Swing",
    Callback = function()
       getgenv().swing = true

while wait() do    
    if getgenv().swing == true then
        game:GetService("ReplicatedStorage").Events.Clicked:FireServer()
    end
end
    end
})

Farms.Button({
    Text = "Swing Off",
    Callback = function()
       getgenv().swing = false

while wait() do    
    if getgenv().swing == true then
        game:GetService("ReplicatedStorage").Events.Clicked:FireServer()
    end
end
    end
})

Farms.Button({
    Text = "Loop Sell",
    Callback = function()
getgenv().sell = true

while wait() do
    if getgenv().sell == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(532, 187, 151);
        game:GetService("ReplicatedStorage").Events.Sell:FireServer()
    end
end
    end
})

Farms.Button({
    Text = "Unloop Sell",
    Callback = function()
getgenv().sell = false

while wait() do
    if getgenv().sell == true then
        game:GetService("ReplicatedStorage").Events.Sell:FireServer()
    end
end
    end
})

Farms.Button({
    Text = "Buy Max Swords",
    Callback = function()
local args = {
    [1] = "Swords"
}

    game:GetService("ReplicatedStorage").Events.BuyAll:FireServer(unpack(args))
end
})

Farms.Button({
    Text = "Buy Max Swords (loop)",
    Callback = function()
getgenv().buysword = true

while wait() do
    if getgenv().buysword == true then
    local args = {
            [1] = "Swords"
        }

            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer(unpack(args))
        end
    end
end
})

Farms.Button({
    Text = "Stop Buying Max Swords",
    Callback = function()
getgenv().buysword = false

while wait() do
    if getgenv().buysword == true then
    local args = {
            [1] = "Swords"
        }

            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer(unpack(args))
        end
    end
end
})

Farms.Button({
    Text = "Buy Max Backpacks",
    Callback = function()
        local args = {
            [1] = "Backpacks"
        }
        
        game:GetService("ReplicatedStorage").Events.BuyAll:FireServer(unpack(args))
end
})

Farms.Button({
    Text = "Buy Max Backpacks (loop)",
    Callback = function()
getgenv().buydna = true

while wait() do
    if getgenv().buydna == true then
        local args = {
            [1] = "Backpacks"
        }
        
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer(unpack(args))
        end
    end
end
})

Farms.Button({
    Text = "Stop Buying Max Backpacks",
    Callback = function()
getgenv().buydna = false

while wait() do
    if getgenv().buydna == true then
        local args = {
            [1] = "Backpacks"
        }
        
            game:GetService("ReplicatedStorage").Events.BuyAll:FireServer(unpack(args))
        end
    end
end
})

TPS.Button({
    Text = "Shop TP",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(474, 184, 53)
    end
})

TPS.Button({
    Text = "Skill TP",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(564, 183, 144)
    end
})

TPS.Button({
    Text = "Boss TP",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(367, 185, 167)
    end
})
