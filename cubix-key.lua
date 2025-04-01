local kloadstring = clonefunction(loadstring)
local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

local secure_httpget = function(url)
	local res = httprequest({
		Url = url,
		Method = "GET",
		Headers = {
			["Executor"] = identifyexecutor(),
		},
	})
	return res.Body
end

load = function(path)
	return kloadstring(secure_httpget(path))()
end

local spooftable = function(tbl)
	local oldTbl = tbl
	local newTbl = setmetatable({}, {
		__index = function(_, idx)
			return oldTbl[idx]
		end,
	})
	return newTbl
end

local get_client_id = function()
	local clientId
	if identifyexecutor and string.find(identifyexecutor(), "Delta") then
		clientId = gethwid()
	else
		clientId = game:GetService("RbxAnalyticsService"):GetClientId()
	end
	clientId = string.gsub(clientId, "-", "")
	return clientId
end

local KeyGuardLibrary = {}
KeyGuardLibrary.__index = KeyGuardLibrary
local json = loadstring(game:HttpGet("https://raw.githubusercontent.com/olympusx00/1/main/2"))()
local HashLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/olympusx00/1/main/1"))()
local self = {}

function KeyGuardLibrary.Set(settings)
	self.publicToken = settings.publicToken
	self.privateToken = settings.privateToken
	self.trueData = settings.trueData
	self.falseData = settings.falseData
end

function checkDataResponse(data)
	if data.statusCode == 404 then
		return self.falseData
	end
	if data.message == "KEY_NOT_FOUND" or data.message == "KEY_NOT_COMPLETED" or data.message == "KEY_EXPIRED" or data.message == "KEY_INVALID_HWID" or data.message == "KEY_BANNED" or data.message == "KEY_BLACKLISTED" then
		return self.falseData
	end
end

function KeyGuardLibrary.getService()
	local service = secure_httpget("https://keyguardian.org/api/services/public/get/" .. self.publicToken)
	return json.decode(service)
end

function KeyGuardLibrary.getLink()
	local service = KeyGuardLibrary.getService()
	return "https://keyguardian.org/a/" .. service.id .. "?id=" .. get_client_id()
end

function KeyGuardLibrary.validateDefaultKey(key)
	local response = secure_httpget("https://keyguardian.org/api/whitelist/v1/validate/default-key/" .. self.publicToken .. "/" .. key .. "/" .. get_client_id())
	local data = json.decode(response)
	local checked = checkDataResponse(data)
	if checked then
		return checked
	end
	return HashLibrary.sha512(self.privateToken .. key) == data.message and self.trueData or self.falseData
end

function KeyGuardLibrary.validatePremiumKey(key)
	local response = secure_httpget("https://keyguardian.org/api/whitelist/v1/validate/premium-key/" .. self.publicToken .. "/" .. key .. "/" .. get_client_id())
	local data = json.decode(response)
	local checked = checkDataResponse(data)
	if checked then
		return checked
	end
	return HashLibrary.sha512(self.privateToken .. key) == data.message and self.trueData or self.falseData
end

setmetatable(KeyGuardLibrary, {
	__index = function(self, key)
		return rawget(self, key)
	end,
	__newindex = function(self, key, value)
		if getfenv(2) ~= value then
			error("This metatable is protected", 2)
		end
		rawset(self, key, value)
	end,
	__metatable = "This metatable is protected.",
})

local truedata = "5143f840f651404ca653fb30b6813fa4"
local falsedata = "b10102ef61c541b3b6600246efa44b72"

KeyGuardLibrary.Set({
	publicToken = "e423a2fdba5842a68919e6f8fb714064",
	privateToken = "930ecef53c674a3bb5bca1576577716f",
	trueData = truedata,
	falseData = falsedata
})

local service = KeyGuardLibrary.getService()

if isfile("CubixKey.lua") and (KeyGuardLibrary.validateDefaultKey(readfile("CubixKey.lua")) == truedata or KeyGuardLibrary.validatePremiumKey(readfile("CubixKey.lua")) == truedata) then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/nathzzi/Rift-Android/refs/heads/main/scripts/cubix.lua"))()
else
	local CubixKeySystem = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local KeyLabel = Instance.new("TextLabel")
	local Line = Instance.new("Frame")
	local TextBoxFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local TextBox = Instance.new("TextBox")
	local ValidateKeyFrame = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local ValidateKeyButton = Instance.new("TextButton")
	local GetKeyFrame = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local GetKeyButton = Instance.new("TextButton")
	local Note = Instance.new("TextLabel")

	CubixKeySystem.Name = "CubixKeySystem"
	CubixKeySystem.Parent = gethui()
	CubixKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = CubixKeySystem
	Main.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.328551471, 0, 0.247542888, 0)
	Main.Size = UDim2.new(0, 304, 0, 160)

	UICorner.Parent = Main

	KeyLabel.Name = "KeyLabel"
	KeyLabel.Parent = Main
	KeyLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KeyLabel.BackgroundTransparency = 1.000
	KeyLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	KeyLabel.BorderSizePixel = 0
	KeyLabel.Position = UDim2.new(0.171052635, 0, 0, 0)
	KeyLabel.Size = UDim2.new(0, 200, 0, 22)
	KeyLabel.Font = Enum.Font.Ubuntu
	KeyLabel.Text = "Cubix - Key System"
	KeyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	KeyLabel.TextSize = 11.000

	Line.Name = "Line"
	Line.Parent = Main
	Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0.02631584, 0, 0.134199128, 0)
	Line.Size = UDim2.new(0, 289, 0, 1)

	TextBoxFrame.Name = "TextBoxFrame"
	TextBoxFrame.Parent = Main
	TextBoxFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	TextBoxFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBoxFrame.BorderSizePixel = 0
	TextBoxFrame.Position = UDim2.new(0.02631584, 0, 0.375884533, 0)
	TextBoxFrame.Size = UDim2.new(0, 289, 0, 25)

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = TextBoxFrame

	TextBox.Parent = TextBoxFrame
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BackgroundTransparency = 1.000
	TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(-0.00346015487, 0, 0, 0)
	TextBox.Size = UDim2.new(0, 288, 0, 25)
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.Ubuntu
	TextBox.PlaceholderText = "Place key here"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextSize = 10.000
	TextBox.TextWrapped = true

	ValidateKeyFrame.Name = "ValidateKeyFrame"
	ValidateKeyFrame.Parent = Main
	ValidateKeyFrame.BackgroundColor3 = Color3.fromRGB(98, 1, 138)
	ValidateKeyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ValidateKeyFrame.BorderSizePixel = 0
	ValidateKeyFrame.Position = UDim2.new(0.0263158903, 0, 0.668500066, 0)
	ValidateKeyFrame.Size = UDim2.new(0, 125, 0, 35)

	UICorner_3.CornerRadius = UDim.new(0, 5)
	UICorner_3.Parent = ValidateKeyFrame

	ValidateKeyButton.Name = "ValidateKeyButton"
	ValidateKeyButton.Parent = ValidateKeyFrame
	ValidateKeyButton.BackgroundColor3 = Color3.fromRGB(26, 0, 36)
	ValidateKeyButton.BackgroundTransparency = 1.000
	ValidateKeyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ValidateKeyButton.BorderSizePixel = 0
	ValidateKeyButton.Size = UDim2.new(0, 125, 0, 35)
	ValidateKeyButton.Font = Enum.Font.Roboto
	ValidateKeyButton.Text = "Validate Key"
	ValidateKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	ValidateKeyButton.TextSize = 14.000
	ValidateKeyButton.MouseButton1Click:Connect(function()
		local key = TextBox.Text
		local defaultresponse = KeyGuardLibrary.validateDefaultKey(key)
		local premiumresponse = KeyGuardLibrary.validatePremiumKey(key)
		
		if defaultresponse == truedata or premiumresponse == truedata then
			writefile("CubixKey.lua", key)
			CubixKeySystem:Destroy()
			if premiumresponse == truedata then
				loadstring(game:HttpGet("https://raw.githubusercontent.com/nathzzi/Rift-Android/refs/heads/main/scripts/cubix.lua"))()
			else
				loadstring(game:HttpGet("https://raw.githubusercontent.com/nathzzi/Rift-Android/refs/heads/main/scripts/cubix.lua"))()
			end
		else
			TextBox.Text = "Invalid Key!"
			wait(1)
			TextBox.Text = ""
		end
	end)

	GetKeyFrame.Name = "GetKeyFrame"
	GetKeyFrame.Parent = Main
	GetKeyFrame.BackgroundColor3 = Color3.fromRGB(98, 1, 138)
	GetKeyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GetKeyFrame.BorderSizePixel = 0
	GetKeyFrame.Position = UDim2.new(0.56578958, 0, 0.668500066, 0)
	GetKeyFrame.Size = UDim2.new(0, 125, 0, 35)

	UICorner_4.CornerRadius = UDim.new(0, 5)
	UICorner_4.Parent = GetKeyFrame

	GetKeyButton.Name = "GetKeyButton"
	GetKeyButton.Parent = GetKeyFrame
	GetKeyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GetKeyButton.BackgroundTransparency = 1.000
	GetKeyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GetKeyButton.BorderSizePixel = 0
	GetKeyButton.Size = UDim2.new(0, 125, 0, 35)
	GetKeyButton.Font = Enum.Font.Roboto
	GetKeyButton.Text = "Get Key"
	GetKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	GetKeyButton.TextSize = 14.000
	GetKeyButton.MouseButton1Click:Connect(function()
		local keylink = KeyGuardLibrary.getLink()
		setclipboard(keylink)
		TextBox.Text = "Key link copied!"
		wait(1)
		TextBox.Text = ""
	end)

	Note.Name = "Note"
	Note.Parent = Main
	Note.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Note.BackgroundTransparency = 1.000
	Note.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Note.BorderSizePixel = 0
	Note.Position = UDim2.new(0.0723684207, 0, 0.227280423, 0)
	Note.Size = UDim2.new(0, 260, 0, 10)
	Note.Font = Enum.Font.Ubuntu
	Note.Text = "Complete 1 step of ads to get access to Cubix Android."
	Note.TextColor3 = Color3.fromRGB(255, 255, 255)
	Note.TextSize = 9.000
	Note.TextWrapped = true
end
