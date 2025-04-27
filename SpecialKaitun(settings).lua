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
getgenv().ConfigsKaitun = {
	["Safe Mode"] = false, -- Will be pass all anti cheat (but slow farm)
	
	["Melee"] = {
		["Death Step"] = true,
		["Electric Claw"] = true,
		["Dragon Talon"] = true,
		["Sharkman Karate"] = true,
		["Superhuman"] = true,
		["God Human"] = true,
	},

	["Sword"] = {
		-- : World 1
		["Saber"] = true,
		["Pole"] = true,
		-- : World 2
		["Midnight Blade"] = true,
		["Shisui"] = true,
		["Saddi"] = true,
		["Wando"] = true,
		["Rengoku"] = true,
		["True Triple Katana"] = true,
		-- : World 3
		["Yama"] = true,
		["Tushita"] = true,
		["Canvander"] = true,
		["Buddy Sword"] = true,
		["Twin Hooks"] = true,
		["Hallow Scythe"] = true,
		["Cursed Dual Katana"] = true,
	},

	["Gun"] = {
		-- : World 2
		["Kabucha"] = true,
		-- : World 3
		["Venom Bow"] = true,
		["Skull Guitar"] = true,
	},

	["Mastery"] = {
		["Melee"] = true,
		["Sword"] = true,
		["Devil Fruits"] = false,

		["Configs"] = {
			["Selected All Sword"] = true,
			["Select Sword"] = {"Cursed Dual Katana"},
		}
	},

	["Race"] = {
		["v2"] = true,
		["v3"] = true,
		["Locked"] = {
			["Mink"] = true,
			["Human"] = true,
			["Skypiea"] = true,
			["Fishman"] = true,
		},
	},

	["Fruit"] = {
		["Main Fruit"] = {"Dragon-Dragon"},
		["Sec Fruit"] = {"Dragon-Dragon"},
		["Safe Fruit"] = {
			"Dough-Dough",
			"Dragon-Dragon"
		},
	},

	["Quest"] = {
		["Rainbow Haki"] = true,
		["Pull Lever"] = true,
		["Musketeer Hat"] = true,
		["Dough Mirror"] = true,
		["Shark Anchor"] = {
			["Enable"] = true,
			["Money"] = 100_000_000,
		},
	},

	["Currency"] = {
		["Lock Fragment"] = 100_000,
	},

	["Performance"] = {
		["White Screen"] = false,
		["Booster FPS"] = true,
		["Lock FPS"] = 240,
		["AFK Timeout"] = 150,
	},
}
loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()
