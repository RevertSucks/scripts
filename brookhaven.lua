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
        local string_11 = "BothWantPiggyBackRide";
        local userdata_11 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_11, userdata_11);
    end
})

Page.TextField({
    Text = "Get in Arms",
    Callback = function(value)
        local string_12 = "BothWantCarryHurt";
        local userdata_12 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_12, userdata_12);
    end
})

Page.TextField({
    Text = "Get on Shoulders",
    Callback = function(value)
        local string_13 = "BothWantShoulders";
        local userdata_13 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_13, userdata_13);
        
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
        local string_14 = "BothWantPiggyBackRide";
        local userdata_14 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_14, userdata_14);
        end
    end
end
})

Loop.Button({
    Text = "Stop Loop Get on Back",
    Callback = function(value)
    getgenv().back = false
end
})

Loop.TextField({
    Text = "Loop Get in Arms",
    Callback = function(value)
        getgenv().arms = true
while wait() do
    if getgenv().arms == true then
        local string_15 = "BothWantCarryHurt";
        local userdata_15 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_15, userdata_15);
        end
    end
end
})

Loop.Button({
    Text = "Stop Loop Get in Arms",
    Callback = function(value)
    getgenv().arms = false
end
})

Loop.TextField({
    Text = "Loop Get on Shoulders",
    Callback = function(value)
        getgenv().shoulders = true

while wait() do
    if getgenv().shoulders == true then
        local string_16 = "BothWantShoulders";
        local userdata_16 = game:GetService("Players")[value];
        local Target = game:GetService("ReplicatedStorage").RemoteEvents.PlayerTriggerEvent;
        Target:FireServer(string_16, userdata_16);
        end
    end
end
})

Loop.Button({
    Text = "Stop Loop Get on Shoulders",
    Callback = function(value)
    getgenv().shoulders = false
end
})
