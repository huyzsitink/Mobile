local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.10615778, 0, 0.16217947, 0)
ImageButton.Size = UDim2.new(0, 40, 0, 40)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=83190276951914"

UICorner.CornerRadius = UDim.new(1, 10) 
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
repeat wait() until game:IsLoaded()
local Window = Fluent:CreateWindow({
    Title = "Special Hub Blox-Fruits [ Premium ]",
    SubTitle = "by Luna Guraaa",
    TabWidth = 157,
    Size = UDim2.fromOffset(450, 300),
    Acrylic = true,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
        Main0=Window:AddTab({ Title="Information" }),
        Main1=Window:AddTab({ Title="Script Main Farm" }),
        Main2=Window:AddTab({ Title="Hop Server" }),
        Main3=Window:AddTab({ Title="Coming Soon" }),
        Main4=Window:AddTab({ Title="Coming Soon" }),
       Main5=Window:AddTab({ Title="Coming Soon" }),
}
    Tabs.Main0:AddButton({
    Title = "Discord",
    Description = "Special Hub Community",
    Callback = function()
        setclipboard("https://discord.gg/CbcdrgGZ")
    end
})

    Tabs.Main0:AddButton({
    Title = "Config",
    Description = "No Need To Use",
    Callback = function()
        setclipboard("No Need")
    end
})

    Tabs.Main0:AddButton({
    Title = "GetKey",
    Description = "No Key Required",
    Callback = function()
        setclipboard("No Need")
    end
})
    
    Tabs.Main1:AddButton({
    Title="Main",
    Description="Script Main Premium",
    Callback=function()
	  local Settings = {
  JoinTeam = "Marines"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/newredz/BloxFruits/refs/heads/main/Source.luau"))(Settings)
  end
})

Tabs.Main1:AddButton({
    Title="KaiTun",
    Description="Kaitun Blox Fruits A-Z",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaAnarchist/GreenZ-Hub/refs/heads/main/KaitunDoughKing.lua"))()
  end
})