local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Kai Hub | Universal",
    LoadingTitle = "Welcome to Kai Hub!",
    LoadingSubtitle = "by Kai Team",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Kai Hub"
    },
    Discord = {
       Enabled = true,
       Invite = "wDMPK3QAmY", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = false -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

Rayfield:Notify({
   Title = "Kai Hub | Universal",
   Content = "Welcome to Kai Hub!",
   Duration = 8.5,
   Image = 10747371901,
})
--Tabs
 local MainTab = Window:CreateTab("Main", 10723407389) -- Title, Image 
 local PlayerTab = Window:CreateTab("Player", 10747373176) -- Title, Image 
 local GameScriptsTab = Window:CreateTab("Scripts", 10723395215) -- Title, Image 
 local SettingsTab = Window:CreateTab("Settings", 10734950309) -- Title, Image
 
-- MainTab 
local DiscordSection = MainTab:CreateSection("Discord Community")
local DiscordButton = MainTab:CreateButton({
   Name = "Join to our Discord Server! [CLICK HERE]",
   Callback = function()
   setclipboard("https://discord.com/invite/wDMPK3QAmY")
   end,
})

local KaiSection = MainTab:CreateSection("Kai Hub | UNIVERSAL")
local Paragraph = MainTab:CreateParagraph({Title = "Kai Team", Content = "Hello! Thank you for using our scripts. If you want to be updated on our scripts, join to our Discord Community."})
local Paragraph = MainTab:CreateParagraph({Title = "Kai Hub Updates!", Content = "Universal Script (v1.0.0)   [+] Blox Fruits [+] Settings [+] and MORE!"})

-- PlayerTab SECTION MAIN
local PlayerSection = PlayerTab:CreateSection("Movement Settings")
-- Walkspeed
local WalkSpeedEnabled = false
local WalkSpeedValue = 16

-- Toggle for enabling WalkSpeed
local Toggle = PlayerTab:CreateToggle({
    Name = "Enable WalkSpeed",
    CurrentValue = false,
    Flag = "EnableWalkSpeed", -- Unique ID for saving/loading
    Callback = function(Value)
        WalkSpeedEnabled = Value
        if Value then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeedValue
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end,
})

-- Slider for controlling WalkSpeed
local Slider = PlayerTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {16, 100},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "WalkSpeedSlider", -- Unique ID for saving/loading
    Callback = function(Value)
        WalkSpeedValue = Value
        if WalkSpeedEnabled then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    end,
})

-- Dash Length 
local DashEnabled = false
local DashLength = 10

-- Toggle for enabling Dash Length
local DashToggle = PlayerTab:CreateToggle({
    Name = "Enable Dash Length",
    CurrentValue = false,
    Flag = "EnableDashLength", -- Unique ID for saving/loading
    Callback = function(Value)
        DashEnabled = Value
        if Value then
            game.Players.LocalPlayer.Character:SetAttribute("DashLength", DashLength)
        else
            game.Players.LocalPlayer.Character:SetAttribute("DashLength", 10) -- Reset to default when toggled off
        end
    end,
})

-- Slider for controlling Dash Length (your existing slider)
local DashSlider = PlayerTab:CreateSlider({
    Name = "Dash Length",
    Range = {10, 1000},
    Increment = 1,
    Suffix = "Length",
    CurrentValue = 10,
    Flag = "DashLengthSlider", -- Unique ID for saving/loading
    Callback = function(Value)
        DashLength = Value
        if DashEnabled then
            game.Players.LocalPlayer.Character:SetAttribute("DashLength", Value)
        end
    end,
})

-- Jump Height
local JumpHeightEnabled = false
local JumpHeightValue = 50  -- Default Jump Power

-- Toggle for enabling Jump Height modification
local JumpToggle = PlayerTab:CreateToggle({
    Name = "Enable Jump Height",
    CurrentValue = false,
    Flag = "EnableJumpHeight", -- Unique ID for saving/loading
    Callback = function(Value)
        JumpHeightEnabled = Value
        if Value then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpHeightValue
        else
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 -- Default Jump Power when toggled off
        end
    end,
})

-- Slider for controlling Jump Height
local JumpSlider = PlayerTab:CreateSlider({
    Name = "Jump Height",
    Range = {10, 500},
    Increment = 1,
    Suffix = "Height",
    CurrentValue = 50,
    Flag = "JumpHeightSlider", -- Unique ID for saving/loading
    Callback = function(Value)
        JumpHeightValue = Value
        if JumpHeightEnabled then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    end,
})


-- Game Scripts
local READSection = GameScriptsTab:CreateSection("READ THIS!!!")
local Paragraph = GameScriptsTab:CreateParagraph({Title = "READ : GAME SCRIPTS", Content = "Game Scripts will be in this Tab. Just find the game that you want :) MORE GAMES SUPPORT SOON!"})
local BFRUITSection = GameScriptsTab:CreateSection("BLOX FRUITS")
local Button = GameScriptsTab:CreateButton({
   Name = "Redz Hub",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/newredz/BloxFruits/refs/heads/main/Source.luau"))(Settings)
   end,
})





