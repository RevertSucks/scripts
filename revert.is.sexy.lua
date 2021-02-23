local id = game.PlaceId
local loaded = "Has Been Loaded"

if id == 2636441885 then
_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Speed City")
local b = w:CreateFolder("Auto Farms")
local c = w:CreateFolder("Teleports")
local msg = Instance.new("Message", Workspace)

black = false
b:Toggle("Black Orbs",function(bool)
   black = bool
end)

game:GetService('RunService').Heartbeat:connect(function()
    if black == true then
        wait(.1) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.GhostCity.GhostOrbsMega.GhostMega2.Core.CFrame
    end
end)

white = false
b:Toggle("White Orbs",function(bool)
   white = bool
end)

game:GetService('RunService').Heartbeat:connect(function()
    if white == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.GhostCity.GhostOrbsMega.GhostMega.Core.CFrame
    end
end)

GiantBeach = false
b:Toggle("Giant Beach Orbs",function(bool)
   GiantBeach = bool
end)

game:GetService('RunService').Heartbeat:connect(function()
    if GiantBeach == true then
        wait(.1) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BeachMap.BeachOrbsMega.OceanOrbMega.Core.CFrame
    end
end)

happy = false
b:Toggle("Happy Ghost",function(bool)
   happy = bool
end)

game:GetService('RunService').Heartbeat:connect(function()
    if happy == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.GhostCity.GhostOrbsMega.Happy.Crate.CFrame
    end
end)

king = false
b:Toggle("King Ghost",function(bool)
   king = bool
end)

game:GetService('RunService').Heartbeat:connect(function()
    if king == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.GhostCity.GhostOrbsMega["King Ghost"].Crate.CFrame
    end
end)

zombie = false
b:Toggle("Zombie Ghost",function(bool)
   zombie = bool
end)

game:GetService('RunService').Heartbeat:connect(function()
    if zombie == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.GhostCity.GhostOrbsMega["Zombie Ghost"].Crate.CFrame
    end
end)

c:Button("Inf Road",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(22,1550,-1993)
end)

c:Button("Beach",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3623,67,1083)
end)

c:Button("Ghost City",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3841,-33,7267)
end)

msg.Text = "Only Farms Ghost, Giant Orbs And Chest Because Everything Else is Detected"
wait(3)
msg:Destroy()

print("Speed City", loaded)
else
    if id == 5546188609 then
    _G.ToggleColor = Color3.fromRGB(255,0,0)
    _G.ButtonColor = Color3.fromRGB(0,255,0)
    _G.SliderColor = Color3.fromRGB(0,0,255)
    local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
    local w = library:CreateWindow("Sycthe Sim")
    local b = w:CreateFolder("Auto Farms")
    local c = w:CreateFolder("Misc")
    local msg = Instance.new("Message", Workspace)

    swingscythe = false
    b:Toggle("Swing",function(bool)
        swingscythe = bool
    end)
        
    game:GetService('RunService').Heartbeat:connect(function()
        if swingscythe == true then
            game:GetService("ReplicatedStorage").ScytheEvent:FireServer("DoubleBlackWhitePlasmaScythe")
        end
    end)

    swingscythemax = false
    b:Toggle("Swing - Max Boost",function(bool)
        swingscythemax = bool
    end)
        
    game:GetService('RunService').Heartbeat:connect(function()
        if swingscythemax == true then
            game:GetService("ReplicatedStorage").ScytheEvent:FireServer("DoubleBlackWhitePlasmaScythe")
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.DiscoArea.Part.CFrame
        end
    end)

    farm = false
    b:Toggle("Farm Coins",function(bool)
        farm = bool
    end)
        
    game:GetService('RunService').Heartbeat:connect(function()
        if farm == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.KingHills.King4.CFrame
        end
    end)

    c:Toggle("Music On/Off",function(bool)
        game.Players.LocalPlayer.MainMusic.Playing = bool
    end)

    msg.Text = "Swing Max Boost Does NOT Work With Farm Coins"
    wait(3)
    msg:Destroy()
print("Scythe Simulator", loaded)
else
    local msg = Instance.new("Message", Workspace)
    msg.Text = "Invalid Game Retard - If Your in A Valid Game Contact {Clan Tag} Name#0202"
    wait(3)
    msg:Destroy()
end
end
