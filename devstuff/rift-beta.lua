local KeyGuardLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/nathzzi/Rift-Android/refs/heads/main/keyguardian/keyguardianlibrary.lua"))()
local truedata = "5143f840f651404ca653fb30b6813fa4"
local falsedata = "b10102ef61c541b3b6600246efa44b72"

KeyGuardLibrary.Set({
	publicToken = "e423a2fdba5842a68919e6f8fb714064",
	privateToken = "930ecef53c674a3bb5bca1576577716f",
	trueData = truedata,
	falseData = falsedata
})

local service = KeyGuardLibrary.getService()

if isfile("RiftKey.lua") and (KeyGuardLibrary.validateDefaultKey(readfile("RiftKey.lua")) == truedata or KeyGuardLibrary.validatePremiumKey(readfile("RiftKey.lua")) == truedata) then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Spongebob-ass/Spongebob/refs/heads/main/ui-test.lua"))()
else
	local Rift_key = Instance.new("ScreenGui")
	local Key_frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Rift_title = Instance.new("TextLabel")
	local TextBox_frame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local Key_textbox = Instance.new("TextBox")
	local Validate_frame = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local Key_image = Instance.new("ImageLabel")
	local Key_validate = Instance.new("TextButton")
	local Rift_image = Instance.new("ImageLabel")
	local Get_frame = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local UIStroke_3 = Instance.new("UIStroke")
	local Key_image_2 = Instance.new("ImageLabel")
	local Key_get = Instance.new("TextButton")
	local Join_frame = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local UIStroke_4 = Instance.new("UIStroke")
	local Join = Instance.new("TextButton")

	Rift_key.Name = "Rift_key"
	Rift_key.Parent = cloneref(gethui())
	Rift_key.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Key_frame.Name = "Key_frame"
	Key_frame.Parent = Rift_key
	Key_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	Key_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Key_frame.BorderSizePixel = 0
	Key_frame.Position = UDim2.new(0.341549307, 0, 0.287531793, 0)
	Key_frame.Size = UDim2.new(0, 270, 0, 166)

	UICorner.Parent = Key_frame

	Rift_title.Name = "Rift_title"
	Rift_title.Parent = Key_frame
	Rift_title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Rift_title.BackgroundTransparency = 1.000
	Rift_title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Rift_title.BorderSizePixel = 0
	Rift_title.Position = UDim2.new(0.229629636, 0, 0.0818466768, 0)
	Rift_title.Size = UDim2.new(0, 145, 0, 15)
	Rift_title.Font = Enum.Font.Ubuntu
	Rift_title.Text = "Rift Android | Key System"
	Rift_title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Rift_title.TextSize = 14.000

	TextBox_frame.Name = "TextBox_frame"
	TextBox_frame.Parent = Key_frame
	TextBox_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	TextBox_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox_frame.BorderSizePixel = 0
	TextBox_frame.Position = UDim2.new(0.0296296291, 0, 0.269230753, 0)
	TextBox_frame.Size = UDim2.new(0, 254, 0, 29)

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = TextBox_frame

	UIStroke.Parent = TextBox_frame
	UIStroke.Color = Color3.fromRGB(57, 57, 57)

	Key_textbox.Name = "Key_textbox"
	Key_textbox.Parent = TextBox_frame
	Key_textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Key_textbox.BackgroundTransparency = 1.000
	Key_textbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Key_textbox.BorderSizePixel = 0
	Key_textbox.Size = UDim2.new(0, 254, 0, 29)
	Key_textbox.ClearTextOnFocus = false
	Key_textbox.Font = Enum.Font.SourceSans
	Key_textbox.PlaceholderText = "Put your key here!"
	Key_textbox.Text = ""
	Key_textbox.TextColor3 = Color3.fromRGB(194, 194, 194)
	Key_textbox.TextSize = 14.000
	Key_textbox.TextWrapped = true

	Validate_frame.Name = "Validate_frame"
	Validate_frame.Parent = Key_frame
	Validate_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	Validate_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Validate_frame.BorderSizePixel = 0
	Validate_frame.Position = UDim2.new(0.0296296291, 0, 0.540315092, 0)
	Validate_frame.Size = UDim2.new(0, 123, 0, 29)

	UICorner_3.CornerRadius = UDim.new(0, 5)
	UICorner_3.Parent = Validate_frame

	UIStroke_2.Parent = Validate_frame
	UIStroke_2.Color = Color3.fromRGB(57, 57, 57)

	Key_image.Name = "Key_image"
	Key_image.Parent = Validate_frame
	Key_image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Key_image.BackgroundTransparency = 1.000
	Key_image.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Key_image.BorderSizePixel = 0
	Key_image.Position = UDim2.new(0.048780486, 0, 0.206896558, 0)
	Key_image.Size = UDim2.new(0, 18, 0, 17)
	Key_image.Image = "rbxassetid://92190167828593"

	Key_validate.Name = "Key_validate"
	Key_validate.Parent = Validate_frame
	Key_validate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Key_validate.BackgroundTransparency = 1.000
	Key_validate.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Key_validate.BorderSizePixel = 0
	Key_validate.Position = UDim2.new(0.097560972, 0, 0, 0)
	Key_validate.Size = UDim2.new(0, 111, 0, 29)
	Key_validate.Font = Enum.Font.SourceSans
	Key_validate.Text = "Validate Key"
	Key_validate.TextColor3 = Color3.fromRGB(57, 57, 57)
	Key_validate.TextSize = 14.000
	Key_validate.TextStrokeColor3 = Color3.fromRGB(194, 194, 194)

	Rift_image.Name = "Rift_image"
	Rift_image.Parent = Key_frame
	Rift_image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Rift_image.BackgroundTransparency = 1.000
	Rift_image.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Rift_image.BorderSizePixel = 0
	Rift_image.Position = UDim2.new(0, 0, -0.00602409616, 0)
	Rift_image.Size = UDim2.new(0, 46, 0, 44)
	Rift_image.Image = "rbxassetid://135123682987938"

	Get_frame.Name = "Get_frame"
	Get_frame.Parent = Key_frame
	Get_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	Get_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Get_frame.BorderSizePixel = 0
	Get_frame.Position = UDim2.new(0.514814794, 0, 0.540315092, 0)
	Get_frame.Size = UDim2.new(0, 123, 0, 29)

	UICorner_4.CornerRadius = UDim.new(0, 5)
	UICorner_4.Parent = Get_frame

	UIStroke_3.Parent = Get_frame
	UIStroke_3.Color = Color3.fromRGB(57, 57, 57)

	Key_image_2.Name = "Key_image"
	Key_image_2.Parent = Get_frame
	Key_image_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Key_image_2.BackgroundTransparency = 1.000
	Key_image_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Key_image_2.BorderSizePixel = 0
	Key_image_2.Position = UDim2.new(0.048780486, 0, 0.206896558, 0)
	Key_image_2.Size = UDim2.new(0, 18, 0, 17)
	Key_image_2.Image = "rbxassetid://98863251704962"

	Key_get.Name = "Key_get"
	Key_get.Parent = Get_frame
	Key_get.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Key_get.BackgroundTransparency = 1.000
	Key_get.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Key_get.BorderSizePixel = 0
	Key_get.Position = UDim2.new(0.097560972, 0, 0, 0)
	Key_get.Size = UDim2.new(0, 111, 0, 29)
	Key_get.Font = Enum.Font.SourceSans
	Key_get.Text = "Get Key"
	Key_get.TextColor3 = Color3.fromRGB(57, 57, 57)
	Key_get.TextSize = 14.000
	Key_get.TextStrokeColor3 = Color3.fromRGB(194, 194, 194)

	Join_frame.Name = "Join_frame"
	Join_frame.Parent = Key_frame
	Join_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	Join_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Join_frame.BorderSizePixel = 0
	Join_frame.Position = UDim2.new(0.270370364, 0, 0.763206661, 0)
	Join_frame.Size = UDim2.new(0, 123, 0, 29)

	UICorner_5.CornerRadius = UDim.new(0, 5)
	UICorner_5.Parent = Join_frame

	UIStroke_4.Parent = Join_frame
	UIStroke_4.Color = Color3.fromRGB(57, 57, 57)

	Join.Name = "Join"
	Join.Parent = Join_frame
	Join.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Join.BackgroundTransparency = 1.000
	Join.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Join.BorderSizePixel = 0
	Join.Size = UDim2.new(0, 123, 0, 29)
	Join.Font = Enum.Font.SourceSans
	Join.Text = "Join regular ROBLOX"
	Join.TextColor3 = Color3.fromRGB(57, 57, 57)
	Join.TextSize = 14.000
	Join.TextStrokeColor3 = Color3.fromRGB(194, 194, 194)

	Key_validate.MouseButton1Click:Connect(function()
		local key = Key_textbox.Text

		local defaultresponse = KeyGuardLibrary.validateDefaultKey(key)
		local premiumresponse = KeyGuardLibrary.validatePremiumKey(key)

		if defaultresponse == truedata or premiumresponse == truedata then
			writefile("RiftKey.lua", key)
			Rift_key:Destroy()
			if premiumresponse == truedata then
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Spongebob-ass/Spongebob/refs/heads/main/ui-test.lua"))()
			else
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Spongebob-ass/Spongebob/refs/heads/main/ui-test.lua"))()
			end
		else
			Key_textbox.Text = "Invalid Key!"
			wait(1)
			Key_textbox.Text = ""
		end
	end)

	Key_get.MouseButton1Click:Connect(function()
		local link = KeyGuardLibrary.getLink()
		setclipboard(link)
		Key_textbox.Text = "Link copied!"
		wait(1)
		Key_textbox.Text = ""
	end)

	Join.MouseButton1Click:Connect(function()
		Rift_key:Destroy()
	end)
end

-- KEYLESS WOO HOO
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/Spongebob-ass/Spongebob/refs/heads/main/devstuff/rift-beta.lua"))()
