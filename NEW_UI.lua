local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Unknown56406516401563456/Peacock-Lib/main/src.lua"))()

local Window = Library:CreateLib {
	name = "Kai Hub | Universal"
}

--Tabs
local Tab = Window:NewTab({
	name = "Main",
	icon = "rbxassetid://3926305904"
})

local Button = Tab:NewButton({
	name = "Join to our Discord Community"
})
Button:SetCallback(function()
    setclipboard("https://discord.com/invite/wDMPK3QAmY")
end)

local Label = Tab:NewLabel({
	name = "Name"
})

local Slider = Tab:NewSlider({
	name = "Walkspeed",
	min = "16", -- (min 16) to (max 100) min is the lowest max is the highest and default choose to 16 to 100
	max = "100",
	default = "16"
})
Slider:SetCallback(function(v)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v -- if you want JumpPower Change the WalkSpeed To JumpPower
end)

local Tab = Window:NewTab({
	name = "Player",
	icon = "rbxassetid://3926305904"
	})
