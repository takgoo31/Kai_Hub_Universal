Exemple:
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/discoart/FluentPlus/refs/heads/main/release.lua", true))()


Button_Icon = "rbxassetid://137592432303285"
              

local Window = Fluent:CreateWindow({
    Title = "AAAA",
    SubTitle = "example",
    TabWidth = 150,
    Size = UDim2.fromOffset(400, 340),
    Acrylic = false,
    Theme = "Dark"
})

local Main = Window:AddTab({
    Title = "Main",
    Icon = "home"
})
