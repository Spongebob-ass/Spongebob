-- # yeah fuck this ui, i've made this for a test and probably will be used as the main ui for rift 

if _G.RiftLoaded then -- # simple check
  maketoast("The exploit is already running!")
  return
end

-- # custom exploit table ofc
local autoExec = clonefunction(client.enableautoexec) 
local secureString = clonefunction(client.securestring) -- # will be used for webhooks & urls later or sooner

setreadonly(client, false)
client.enableautoexec = nullptr
client.execute = nullptr
setreadonly(client, true)

-- # clearing our custom table
getgenv().client = nullptr

-- # enabling autoexec
autoExec()

-- # user interface properties
local Rift = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local PlaceholderFrame = Instance.new("ScrollingFrame")
local UIStroke = Instance.new("UIStroke")
local UICorner_2 = Instance.new("UICorner")
local CheatBox = Instance.new("TextBox")
local Buttons = Instance.new("Folder")
local Execute = Instance.new("Frame")
local UIStroke_2 = Instance.new("UIStroke")
local UICorner_3 = Instance.new("UICorner")
local ExecuteButton = Instance.new("ImageButton")
local Clear = Instance.new("Frame")
local UIStroke_3 = Instance.new("UIStroke")
local UICorner_4 = Instance.new("UICorner")
local ClearButton = Instance.new("ImageButton")
local Paste = Instance.new("Frame")
local UIStroke_4 = Instance.new("UIStroke")
local UICorner_5 = Instance.new("UICorner")
local PasteButton = Instance.new("ImageButton")
local Exit = Instance.new("Frame")
local UIStroke_5 = Instance.new("UIStroke")
local UICorner_6 = Instance.new("UICorner")
local ExitButton = Instance.new("ImageButton")
local Images = Instance.new("Folder")
local Logo = Instance.new("ImageLabel")
local Toggle = Instance.new("ImageButton")
local UICorner_7 = Instance.new("UICorner")
local UIStroke_6 = Instance.new("UIStroke")

--Properties:

Rift.Name = "Rift"
Rift.Parent = cloneref(gethui())
Rift.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Rift.ResetOnSpawn = false
Rift.IgnoreGuiInset = true

_G.RiftLoaded = true -- # mark our ui as loaded

Main.Name = "Main"
Main.Parent = Rift
Main.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.25, 0, 0.162849873, 0)
Main.Size = UDim2.new(0, 425, 0, 278)
Main.Visible = false
Main.Active = true
Main.Draggable = true

UICorner.CornerRadius = UDim.new(0, 7)
UICorner.Parent = Main

PlaceholderFrame.Name = "PlaceholderFrame"
PlaceholderFrame.Parent = Main
PlaceholderFrame.Active = true
PlaceholderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlaceholderFrame.BackgroundTransparency = 1.000
PlaceholderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlaceholderFrame.BorderSizePixel = 0
PlaceholderFrame.Position = UDim2.new(0.0235294122, 0, 0.111510791, 0)
PlaceholderFrame.Size = UDim2.new(0, 406, 0, 186)
PlaceholderFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
PlaceholderFrame.ScrollBarThickness = 3

UIStroke.Parent = PlaceholderFrame
UIStroke.Color = Color3.fromRGB(67, 67, 67)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = PlaceholderFrame

CheatBox.Name = "CheatBox"
CheatBox.Parent = PlaceholderFrame
CheatBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheatBox.BackgroundTransparency = 1.000
CheatBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
CheatBox.BorderSizePixel = 0
CheatBox.Position = UDim2.new(0.0123152705, 0, 0.0101978239, 0)
CheatBox.Size = UDim2.new(0, 397, 0, 202)
CheatBox.ClearTextOnFocus = false
CheatBox.Font = Enum.Font.SourceSans
CheatBox.MultiLine = true
CheatBox.Text = ""
CheatBox.TextColor3 = Color3.fromRGB(255, 255, 255)
CheatBox.TextSize = 10.000
CheatBox.TextWrapped = true
CheatBox.TextXAlignment = Enum.TextXAlignment.Left
CheatBox.TextYAlignment = Enum.TextYAlignment.Top

Buttons.Name = "Buttons"
Buttons.Parent = Main

Execute.Name = "Execute"
Execute.Parent = Buttons
Execute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Execute.BackgroundTransparency = 1.000
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.887058794, 0, 0.812949657, 0)
Execute.Size = UDim2.new(0, 39, 0, 39)

UIStroke_2.Parent = Execute
UIStroke_2.Color = Color3.fromRGB(67, 67, 67)

UICorner_3.CornerRadius = UDim.new(0, 7)
UICorner_3.Parent = Execute

ExecuteButton.Name = "ExecuteButton"
ExecuteButton.Parent = Execute
ExecuteButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton.BackgroundTransparency = 1.000
ExecuteButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecuteButton.BorderSizePixel = 0
ExecuteButton.Position = UDim2.new(0.128205135, 0, 0.179487184, 0)
ExecuteButton.Size = UDim2.new(0, 29, 0, 25)
ExecuteButton.Image = "rbxassetid://129460670831980"

Clear.Name = "Clear"
Clear.Parent = Buttons
Clear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clear.BackgroundTransparency = 1.000
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.769411743, 0, 0.812949657, 0)
Clear.Size = UDim2.new(0, 39, 0, 39)

UIStroke_3.Parent = Clear
UIStroke_3.Color = Color3.fromRGB(67, 67, 67)

UICorner_4.CornerRadius = UDim.new(0, 7)
UICorner_4.Parent = Clear

ClearButton.Name = "ClearButton"
ClearButton.Parent = Clear
ClearButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClearButton.BackgroundTransparency = 1.000
ClearButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClearButton.BorderSizePixel = 0
ClearButton.Position = UDim2.new(0.179487184, 0, 0.15384616, 0)
ClearButton.Size = UDim2.new(0, 27, 0, 26)
ClearButton.Image = "rbxassetid://102236659532463"

Paste.Name = "Paste"
Paste.Parent = Buttons
Paste.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Paste.BackgroundTransparency = 1.000
Paste.BorderColor3 = Color3.fromRGB(0, 0, 0)
Paste.BorderSizePixel = 0
Paste.Position = UDim2.new(0.651764691, 0, 0.812949657, 0)
Paste.Size = UDim2.new(0, 39, 0, 39)

UIStroke_4.Parent = Paste
UIStroke_4.Color = Color3.fromRGB(67, 67, 67)

UICorner_5.CornerRadius = UDim.new(0, 7)
UICorner_5.Parent = Paste

PasteButton.Name = "PasteButton"
PasteButton.Parent = Paste
PasteButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PasteButton.BackgroundTransparency = 1.000
PasteButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
PasteButton.BorderSizePixel = 0
PasteButton.Position = UDim2.new(0.205128208, 0, 0.179487184, 0)
PasteButton.Size = UDim2.new(0, 26, 0, 25)
PasteButton.Image = "rbxassetid://124716636589273"

Exit.Name = "Exit"
Exit.Parent = Buttons
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.0235294122, 0, 0.816546738, 0)
Exit.Size = UDim2.new(0, 35, 0, 39)

UIStroke_5.Parent = Exit
UIStroke_5.Color = Color3.fromRGB(67, 67, 67)

UICorner_6.CornerRadius = UDim.new(0, 7)
UICorner_6.Parent = Exit

ExitButton.Name = "ExitButton"
ExitButton.Parent = Exit
ExitButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExitButton.BackgroundTransparency = 1.000
ExitButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExitButton.BorderSizePixel = 0
ExitButton.Position = UDim2.new(0.15384616, 0, 0.179487184, 0)
ExitButton.Size = UDim2.new(0, 26, 0, 25)
ExitButton.Image = "rbxassetid://92389396420562"

Images.Name = "Images"
Images.Parent = Main

Logo.Name = "Logo"
Logo.Parent = Images
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.44941175, 0, -0.0251798555, 0)
Logo.Size = UDim2.new(0, 44, 0, 44)
Logo.Image = "rbxassetid://123834853876957"

Toggle.Name = "Toggle"
Toggle.Parent = Rift
Toggle.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0.846244156, 0, 0.0203562342, 0)
Toggle.Size = UDim2.new(0, 40, 0, 41)
Toggle.Image = "rbxassetid://104734255582257"

UICorner_7.CornerRadius = UDim.new(1, 0)
UICorner_7.Parent = Toggle

UIStroke_6.Parent = Toggle

-- Scripts:

local function QNSXKEX_script() -- CheatBox.LocalScript 
	local script = Instance.new('LocalScript', CheatBox)

	local syntax = {}
	local keywords = {
		lua = {
			"and", "break", "or", "else", "elseif", "if", "then", "until", "repeat", "while", "do", "for", "in", "end",
			"local", "return", "function", "export"
		},
		rbx = {
			"game", "workspace", "script", "math", "string", "table", "task", "wait", "select", "next", "Enum",
			"error", "warn", "tick", "assert", "shared", "loadstring", "tonumber", "tostring", "type",
			"typeof", "unpack", "print", "Instance", "CFrame", "Vector3", "Vector2", "Color3", "UDim", "UDim2", "Ray", "BrickColor",
			"OverlapParams", "RaycastParams", "Axes", "Random", "Region3", "Rect", "TweenInfo",
			"collectgarbage", "not", "utf8", "pcall", "xpcall", "_G", "setmetatable", "getmetatable", "os", "pairs", "ipairs"
		},
		operators = {
			"#", "+", "-", "*", "%", "/", "^", "=", "~=", "<", ">", ",", ".", "(", ")", "{", "}", "[", "]", ";", ":"
		}
	}
	
	local colors = {
		numbers = Color3.fromRGB(209, 154, 102),
		boolean = Color3.fromRGB(229, 192, 123),
		operator = Color3.fromRGB(171, 178, 191),
		lua = Color3.fromRGB(86, 156, 214),
		rbx = Color3.fromRGB(86, 182, 194),
		str = Color3.fromRGB(152, 195, 121),
		comment = Color3.fromRGB(127, 132, 142),
		null = Color3.fromRGB(79, 79, 79),
		call = Color3.fromRGB(229, 192, 123),
		self_call = Color3.fromRGB(209, 154, 102),
		local_color = Color3.fromRGB(199, 146, 234),
		function_color = Color3.fromRGB(241, 122, 124),
		self_color = Color3.fromRGB(146, 134, 234),
		local_property = Color3.fromRGB(97, 175, 239),
	}
	
	local function createKeywordSet(keywords)
		local keywordSet = {}
		for _, keyword in ipairs(keywords) do
			keywordSet[keyword] = true
		end
		return keywordSet
	end
	
	local luaSet = createKeywordSet(keywords.lua)
	local rbxSet = createKeywordSet(keywords.rbx)
	local operatorsSet = createKeywordSet(keywords.operators)
	
	local function color3ToHex(color)
		return string.format("%02X%02X%02X", color.R * 255, color.G * 255, color.B * 255)
	end
	
	local function getHighlight(tokens, index)
		local token = tokens[index]
	
		if tonumber(token) then
			return colors.numbers
		elseif token == "nil" then
			return colors.null
		elseif token:sub(1, 2) == "--" then
			return colors.comment
		elseif operatorsSet[token] then
			return colors.operator
		elseif luaSet[token] then
			return colors.lua
		elseif rbxSet[token] then
			return colors.rbx
		elseif token:sub(1, 1) == "\"" or token:sub(1, 1) == "'" then
			return colors.str
		elseif token == "true" or token == "false" then
			return colors.boolean
		end
	
		if tokens[index + 1] == "(" then
			if tokens[index - 1] == ":" then
				return colors.self_call
			end
			return colors.call
		end
	
		if tokens[index - 1] == "." then
			if tokens[index - 2] == "Enum" then
				return colors.rbx
			end
			return colors.local_property
		end
	end
	
	function syntax.run(source)
		local tokens = {}
		local currentToken = ""
	
		local inString = false
		local inComment = false
		local commentPersist = false
	
		for i = 1, #source do
			local character = source:sub(i, i)
	
			if inComment then
				if character == "\n" and not commentPersist then
					table.insert(tokens, currentToken)
					table.insert(tokens, character)
					currentToken = ""
					inComment = false
				elseif source:sub(i - 1, i) == "]]" and commentPersist then
					currentToken ..= "]"
					table.insert(tokens, currentToken)
					currentToken = ""
					inComment = false
					commentPersist = false
				else
					currentToken = currentToken .. character
				end
			elseif inString then
				if character == inString and source:sub(i-1, i-1) ~= "\\" or character == "\n" then
					currentToken = currentToken .. character
					inString = false
				else
					currentToken = currentToken .. character
				end
			else
				if source:sub(i, i + 1) == "--" then
					table.insert(tokens, currentToken)
					currentToken = "-"
					inComment = true
					commentPersist = source:sub(i + 2, i + 3) == "[["
				elseif character == "\"" or character == "'" then
					table.insert(tokens, currentToken)
					currentToken = character
					inString = character
				elseif operatorsSet[character] then
					table.insert(tokens, currentToken)
					table.insert(tokens, character)
					currentToken = ""
				elseif character:match("[%w_]") then
					currentToken = currentToken .. character
				else
					table.insert(tokens, currentToken)
					table.insert(tokens, character)
					currentToken = ""
				end
			end
		end
	
		table.insert(tokens, currentToken)
	
		local highlighted = {}
	
		for i, token in ipairs(tokens) do
			local highlight = getHighlight(tokens, i)
			if highlight then
				local hexColor = color3ToHex(highlight)
				local syntax = string.format('<font color="#%s">%s</font>', hexColor, token:gsub("<", "&lt;"):gsub(">", "&gt;"))
				table.insert(highlighted, syntax)
			else
				table.insert(highlighted, token)
			end
		end
	
		return table.concat(highlighted)
	end
	
	local UserInputService = game:GetService("UserInputService")
	
	local scrollingFrame = script.Parent.Parent
	local textBox = script.Parent
	local isEditing = false
	local originalSize = textBox.Size
	local frame = scrollingFrame
	
	local function updateCanvasSize()
		local textSize = textBox.TextBounds
		textBox.Size = UDim2.new(1, 0, 0, textSize.Y + 10)
		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, textBox.AbsoluteSize.Y)
	end
	
	local function updateHighlighting()
		if isEditing then return end
	
		local cleanText = textBox.Text:gsub("<[^>]->", "")
		local highlightedText = syntax.run(cleanText)
	
		textBox.RichText = true
		textBox.Text = highlightedText
		updateCanvasSize()
	end
	
	textBox.Focused:Connect(function()
		isEditing = true
		textBox.Size = originalSize
		textBox.RichText = false
		textBox.Text = textBox.Text:gsub("<[^>]->", "")
	end)
	
	textBox.FocusLost:Connect(function()
		isEditing = false
		updateHighlighting()
	end)
	
	textBox:GetPropertyChangedSignal("Text"):Connect(function()
		updateHighlighting()
	end)
	
	textBox:GetPropertyChangedSignal("TextSize"):Connect(updateCanvasSize)
	textBox:GetPropertyChangedSignal("Font"):Connect(updateCanvasSize)
	
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch then
			textBox:CaptureFocus()
		end
	end)
	
	textBox.Text = '-- Put your scripts here!'
	updateHighlighting()
end
coroutine.wrap(QNSXKEX_script)()
local function JLQCBR_script() -- ExecuteButton.LocalScript 
	local script = Instance.new('LocalScript', ExecuteButton)

	local btn = script.Parent
	local textbox = script.Parent.Parent.Parent.Parent.PlaceholderFrame.CheatBox
	
	btn.MouseButton1Click:Connect(function()
		local code = textbox.Text:gsub("<[^>]->", "")
		local success, result = pcall(function()
			return loadstring(textbox.Text)()
		end)
		
		if not success then
			maketoast("Failed to execute script:\n" .. tostring(result))
		else
			maketoast("Script executed successfully!")
		end
	end)
end
coroutine.wrap(JLQCBR_script)()
local function YORYAG_script() -- ClearButton.LocalScript 
	local script = Instance.new('LocalScript', ClearButton)

	local btn = script.Parent
	local textbox = script.Parent.Parent.Parent.Parent.PlaceholderFrame.CheatBox
	
	btn.MouseButton1Click:Connect(function()
		textbox.Text = ""
	end)
end
coroutine.wrap(YORYAG_script)()
local function NLVOBX_script() -- PasteButton.LocalScript 
	local script = Instance.new('LocalScript', PasteButton)

	local btn = script.Parent
	local textbox = script.Parent.Parent.Parent.Parent.PlaceholderFrame.CheatBox
	
	btn.MouseButton1Click:Connect(function()
		textbox.Text = getclipboard()
	end)
end
coroutine.wrap(NLVOBX_script)()
local function ECTHWO_script() -- ExitButton.LocalScript 
	local script = Instance.new('LocalScript', ExitButton)

	local btn = script.Parent
	local frame = script.Parent.Parent.Parent.Parent
	local image = script.Parent.Parent.Parent.Parent.Parent.Toggle
	
	btn.MouseButton1Click:Connect(function()
		frame.Visible = false
		image.Visible = true
	end)
end
coroutine.wrap(ECTHWO_script)()
local function XPPWH_script() -- Toggle.LocalScript 
	local script = Instance.new('LocalScript', Toggle)

	local btn = script.Parent
	local frame = script.Parent.Parent.Main
	
	btn.MouseButton1Click:Connect(function()
		btn.Visible = false
		frame.Visible = true
	end)
end
coroutine.wrap(XPPWH_script)()
