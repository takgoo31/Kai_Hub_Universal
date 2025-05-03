--THIS FILE WAS MADE BY: KAI SCRIPTS!!!
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Kai Hub | Universal " .. Fluent.Version,
    SubTitle = "by Kai Team",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Blox Fruits = Window.AddTab({ Title = "Blox Fruits", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Welcome to Kai Hub!",
        Content = "This version is the universal version! Explore our script. Thank you! ",
        SubContent = "READ: IF YOU CLOSE OUR UI/SCRIPT, RE-EXECUTE IT TO LOAD AGAIN!", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })

  Tabs.Main:AddParagraph({
        Title = "Kai Hub",
        Content = "Kai Hub is a type of script on Roblox that you can use FREE!"
    })

  Tabs.Main:AddButton({
        Title = "Kai Hub Community",
        Description = "Join to our COMMUNITY! (CLICK HERE)",
        Callback = function()
            Window:Dialog({
                Title = "Kai Hub | Universal",
                Content = "Copy our Discord Server Link",
                Buttons = {
                    {
                        Title = "Copy",
                        Callback = function()
                            setclipboard("https://discord.com/invite/wDMPK3QAmY")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled.")
                        end
                    }
                }
            })
        end
    })



  Window:SelectTab(1)

Fluent:Notify({
    Title = "Kai Hub | Universal",
    Content = "The script has been loaded successfully.",
    Duration = 15
})
