local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "Mining Sim Codes",
     Style = 3,
     SizeX = 200,
     SizeY = 115,
     Theme = "Dark"
})

local Codes = UI.New({
    Title = "Codes"
})

--[[
    when the
]]--

Codes.Button({
    Text = "All Normal Codes",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/RevertSucks/scripts/mining-sim/codes%20mining%20sim.lua"))()
    end
})

Codes.Button({
    Text = "5-Day Account Age Codes",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/RevertSucks/scripts/mining-sim/codes%20mining%20sim-5day.lua"))()
    end
})
