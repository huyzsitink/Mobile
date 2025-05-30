local player = game.Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "DoughOverlay"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = player:WaitForChild("PlayerGui")

local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0)
background.BackgroundColor3 = Color3.new(0, 0, 0)
background.BackgroundTransparency = 0.4
background.Visible = true
background.Parent = gui

local topText = Instance.new("TextLabel")
topText.Size = UDim2.new(1, 0, 0.1, 0)
topText.Position = UDim2.new(0, 0, 0, 0)
topText.BackgroundTransparency = 1
topText.Text = "Special Hub Premium Kaitun"
topText.TextColor3 = Color3.fromRGB(255, 255, 255)
topText.TextScaled = true
topText.Font = Enum.Font.FredokaOne
topText.Parent = background

local statusText = Instance.new("TextLabel")
statusText.Size = UDim2.new(1, 0, 0.05, 0)
statusText.Position = UDim2.new(0, 0, 0.08, 0)
statusText.BackgroundTransparency = 1
statusText.Text = "Auto Farm [ Kaitun ]"
statusText.TextColor3 = Color3.fromRGB(255, 255, 255)
statusText.TextScaled = true
statusText.Font = Enum.Font.FredokaOne
statusText.Parent = background

local timeLabel = Instance.new("TextLabel")
timeLabel.Size = UDim2.new(1, 0, 0.04, 0)
timeLabel.Position = UDim2.new(0, 0, 0.9, 0)
timeLabel.BackgroundTransparency = 1
timeLabel.Text = "Time: 0 Hours 0 Minutes 0 Seconds"
timeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
timeLabel.TextScaled = true
timeLabel.Font = Enum.Font.FredokaOne
timeLabel.Parent = background

local logo = Instance.new("ImageLabel")
logo.Size = UDim2.new(0, 200, 0, 200)
logo.Position = UDim2.new(0.5, -100, 0.4, -100)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://102687897244327"
logo.Parent = background

local infoLabel = Instance.new("TextLabel")
infoLabel.Size = UDim2.new(0.95, 0, 0.05, 0)
infoLabel.Position = UDim2.new(0.025, 0, 0.94, 0)
infoLabel.BackgroundTransparency = 1
infoLabel.TextColor3 = Color3.new(1, 1, 1)
infoLabel.TextScaled = true
infoLabel.Font = Enum.Font.FredokaOne
infoLabel.Text = "Loading..."
infoLabel.Parent = background

spawn(function()
	while wait(1) do
		pcall(function()
			local level = player.Data.Level.Value
			local beli = player.Data.Beli.Value
			local frags = player.Data.Fragments.Value
			infoLabel.Text = "Player: " .. player.DisplayName .. " | Level: " .. level .. " | Beli: " .. beli .. " | Fragments: " .. frags
		end)
	end
end)

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 120, 0, 40)
toggleButton.Position = UDim2.new(0, 15, 0, 70)
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.BackgroundTransparency = 0.1
toggleButton.BorderSizePixel = 0
toggleButton.Text = "Open"
toggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
toggleButton.TextScaled = true
toggleButton.Font = Enum.Font.GothamSemibold
toggleButton.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = toggleButton

local isOpen = false
toggleButton.MouseButton1Click:Connect(function()
	isOpen = not isOpen
	background.Visible = isOpen
	toggleButton.Text = isOpen and "Close" or "Open"
end)

local seconds = 0
spawn(function()
	while wait(1) do
		seconds += 1
		local hrs = math.floor(seconds / 3600)
		local mins = math.floor((seconds % 3600) / 60)
		local secs = seconds % 60
		timeLabel.Text = "Time: " .. hrs .. " Hours " .. mins .. " Minutes " .. secs .. " Seconds"
	end
end)
getgenv().Hide_UI = true
getgenv().BlackScreen = false
_G.HopFruit1M = false
_G.KaitunConfig = {
    ["Actions Allowed"] = {
      ["Awakening Fruit"] = true,
      ["Shark Anchor"] = true,
      ["Mirror Fractal"] = true,
      ["Soul Guitar"] = true,
      ["Pole (1st Form)"] = true,
      ["Upgrading Race"] = true,
      ["Farming Boss Drop When Maxed Level"] = false,
      ["Rainbown Haki"] = true,
      ["Cursed Dual Katana"] = true,
      ["Buy accessories"] = true,
      ["Buy Hakis"] = true,
      ["Buy Guns"] = true,
      ["Buy Swords"] = true,
      ["Upgrade Weapons"] = true,
      ["Farming Boss Drops When X2 Expired"] = true,
      ["Mirage Puzzle"] = true,
      ["Saber"] = true
    },
    ["Fps Boosting"] = true,
    ["Fruit Snipping"] = true,
    ["Fruit Eating"] = false,
    ["High Ping Hop"] = true,
    ["Fruit Choosen"] = {
      ["T-Rex-T-Rex"] = true,
      ["Shadow-Shadow"] = true,
      ["Mammoth-Mammoth"] = true,
      ["Gravity-Gravity"] = true,
      ["Spirit-Spirit"] = true,
      ["Dark-Dark"] = true,
      ["Rocket-Rocket"] = true,
      ["Control-Control"] = true,
      ["Dough-Dough"] = true,
      ["Leopard-Leopard"] = true,
      ["Venom-Venom"] = true,
      ["Dragon-Dragon"] = true,
      ["Diamond-Diamond"] = true,
      ["Kitsune-Kitsune"] = true,
      ["Spring-Spring"] = true
    },
    ["Player Nearing Hop"] = true,
    ["Allow Stored"] = true,
    ["Race Choosen"] = {
      ["Human"] = true
    },
    ["Race Snipping"] = true,
    ["Tween Speed"] = 350,
    ["Same Y Tween"] = true,
}
loadstring(game:HttpGet('https://raw.githubusercontent.com/memaybeohub/NewPage/main/Kaitun.lua'))()

end)
