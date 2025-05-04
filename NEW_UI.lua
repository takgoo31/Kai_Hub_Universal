local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Unknown56406516401563456/Peacock-Lib/main/src.lua"))()

local Window = Library:CreateLib {
	name = "Kai Hub | Universal"
}

--Tabs
local Tab = Window:NewTab({
	name = "Main",
	icon = "rbxassetid://3926305904"
})

local Tab = Window:NewTab({
	name = "Player",
	icon = "rbxassetid://3926305904"
	})

local Button = Tab:NewButton({
	name = "Join to our Discord Community"
})
Button:SetCallback(function()
    setclipboard("https://discord.com/invite/wDMPK3QAmY")
end)
