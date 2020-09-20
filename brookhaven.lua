local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "{Clan Tag} Name | あなたにファック#0202",
     Style = 3,
     SizeX = 400,
     SizeY = 225,
     Theme = "Dark"
})

local Page = UI.New({
    Title = "One Time TPs"
})

local Loop = UI.New({
    Title = "Loop TPs"
})

Page.TextField({
    Text = "Get on Back",
    Callback = function(value)
        local string_1 = "BothWantPiggyBackRide";
        local userdata_1 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_1, userdata_1);
    end
})

Page.TextField({
    Text = "Get in Arms",
    Callback = function(value)
        local string_1 = "BothWantCarryHurt";
        local userdata_1 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_1, userdata_1);
    end
})

Page.TextField({
    Text = "Get on Shoulders",
    Callback = function(value)
        local string_1 = "BothWantShoulders";
        local userdata_1 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_1, userdata_1);
        
    end
})

--[[
    2nd page
]]--

Loop.TextField({
    Text = "Loop Get on Back",
    Callback = function(value)
        getgenv().back = true

while wait() do
    if getgenv().back == true then
        local string_1 = "BothWantPiggyBackRide";
        local userdata_1 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_1, userdata_1);
        end
    end
end
})

Loop.Button({
    Text = "Stop Loop Get on Back",
    Callback = function(value)
        getgenv().back = false

while wait() do
    if getgenv().back == true then
        local string_1 = "BothWantPiggyBackRide";
        local userdata_1 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_1, userdata_1);
        end
    end
end
})

Loop.TextField({
    Text = "Loop Get in Arms",
    Callback = function(value)
        getgenv().arms = true

while wait() do
    if getgenv().arms == true then
        local string_1 = "BothWantCarryHurt";
        local userdata_1 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_1, userdata_1);
        end
    end
end
})

Loop.Button({
    Text = "Stop Loop Get in Arms",
    Callback = function(value)
        getgenv().arms = false

while wait() do
    if getgenv().arms == true then
        local string_1 = "BothWantCarryHurt";
        local userdata_1 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_1, userdata_1);
        end
    end
end
})

Loop.TextField({
    Text = "Loop Get on Shoulders",
    Callback = function(value)
        getgenv().arms = true

while wait() do
    if getgenv().arms == true then
        local string_1 = "BothWantShoulders";
        local userdata_1 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_1, userdata_1);
        end
    end
end
})

Loop.Button({
    Text = "Stop Loop Get on Shoulders",
    Callback = function(value)
        getgenv().arms = false

while wait() do
    if getgenv().arms == true then
        local string_1 = "BothWantShoulders";
        local userdata_1 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_1, userdata_1);
        end
    end
end
})
