--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[[
Credits goes to REDz.
And you can find more here! [This is v5 version]
https://github.com/REDzHUB/RedzLibV5
And maybe some things may not work correctly (doesn't to me)
]]--

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()

local Window = redzlib:MakeWindow({
  Title = "Kai Hub | Universal",
  SubTitle = "by: Takgoo",
  SaveFolder = "Redz Config"
})

--Tabs

local Main = Window:MakeTab({"Main", "cool"})

--Buttons

Tab1:AddButton({"Redz Hub", function(v)
v = loadstring(game:HttpGet("https://raw.githubusercontent.com/newredz/BloxFruits/refs/heads/main/Source.luau"))(Settings)
end})

local Toggle1 = Tab1:AddToggle({
  Name = "Speed",
  Description = "soon",
  Default = false
})

Tab1:AddSlider({
  Name = "Speed",
  Min = 1,
  Max = 100,
  Increase = 1,
  Default = 16,
  Callback = function(Value)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end
})
