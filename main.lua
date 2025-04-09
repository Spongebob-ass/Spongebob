if _G.RiftLoaded then
	return
end

makefolder('riftscripts')
writefile('riftscripts/Fly V3', 'loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()')
writefile('riftscripts/Redz Hub', 'loadstring(game:HttpGet("https://pastefy.app/ACOX6D6h/raw"))()')
writefile('riftscripts/Infinite Yield', 'loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()')
writefile('riftscripts/UNC Check', 'loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/refs/heads/main/UNCCheckEnv.lua"))()')

_G.RiftLoaded = true

-- [[ Init Script ]] --
getgenv().randomstring = newcclosure(function(len)
    assert(typeof(len) == "number", "Expected a number for length")
    assert(len > 0, "Length must be greater than 0")

    local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local random_str = ""

    for i = 1, len do
        local rand = math.random(1, #charset)
        random_str = random_str .. charset:sub(rand, rand)
    end

    return random_str
end)

-- [[ Internal Functions ]] --
local _enableautoexec = clonefunction( client.enableautoexec )
setreadonly(client, false);
client.enableautoexec = nil
client.execute = nil
setreadonly(client, true);

getgenv().client = nil

-- [[ Autoexecute ]] --

_enableautoexec()

-- [[ Interface ]] --

local Players = game:GetService('Players')
local LogService = game:GetService("LogService")

local riftTabs = {}

local Rift = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TitleFrame = Instance.new("Frame")
local Logo = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local TopBarFrame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Exit = Instance.new("ImageButton")
local Home = Instance.new("ImageButton")
local Executor = Instance.new("ImageButton")
local Settings = Instance.new("ImageButton")
local AboutFrame = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local KeyStatus = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local KeyTitle = Instance.new("TextLabel")
local Status = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local KEYLESS = Instance.new("TextLabel")
local DiscordStatus = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local DiscordTitle = Instance.new("TextLabel")
local DiscordButton = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local User = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local HelloText = Instance.new("TextLabel")
local UserImage = Instance.new("ImageLabel")
local Quick = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local ConsoleHub = Instance.new("ScrollingFrame")
local ConsoleLayout = Instance.new("UIListLayout")
local CheatFrame = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local TextBoxFrame = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local Execute = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local Clear = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local ExecuteClipboard = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local Copy = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local FileFrame = Instance.new("Frame")
local UICorner_19 = Instance.new("UICorner")
local FileScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local AddScript = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local SaveScriptFrame = Instance.new("Frame")
local UICorner_24 = Instance.new("UICorner")
local SaveTitle = Instance.new("TextLabel")
local ScriptName = Instance.new("TextBox")
local UICorner_25 = Instance.new("UICorner")
local ScriptContent = Instance.new("TextBox")
local UICorner_26 = Instance.new("UICorner")
local SaveScript = Instance.new("TextButton")
local UICorner_27 = Instance.new("UICorner")

local Open = Instance.new("ImageButton")
local UICorner_24 = Instance.new("UICorner")

local function addMessage(text, color)
    local label = Instance.new("TextLabel")

    label.Size = UDim2.new(1, 0, 0, 25)
    label.BackgroundTransparency = 1
    label.TextColor3 = color
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Text = text
    label.Parent = ConsoleHub

    local layout = ConsoleHub:FindFirstChildOfClass("UIListLayout")
    ConsoleHub.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)

    ConsoleHub.CanvasPosition = Vector2.new(0, ConsoleHub.CanvasSize.Y.Offset)
end

--> rewritten version of [ https://devforum.roblox.com/t/realtime-richtext-lua-syntax-highlighting/2500399 ], thanks to this forum it was possible!
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
		"#", "+", "-", "*", "%", "/", "^", "=", "~", "=", "<", ">", ",", ".", "(", ")", "{", "}", "[", "]", ";", ":"
	}
}

local colors = {
	numbers = Color3.fromRGB(255, 198, 0),
	boolean = Color3.fromRGB(214, 128, 23),
	operator = Color3.fromRGB(232, 210, 40),
	lua = Color3.fromRGB(160, 87, 248),
	rbx = Color3.fromRGB(146, 180, 253),
	str = Color3.fromRGB(56, 241, 87),
	comment = Color3.fromRGB(103, 110, 149),
	null = Color3.fromRGB(79, 79, 79),
	call = Color3.fromRGB(130, 170, 255),
	self_call = Color3.fromRGB(227, 201, 141),
	local_color = Color3.fromRGB(199, 146, 234),
	function_color = Color3.fromRGB(241, 122, 124),
	self_color = Color3.fromRGB(146, 134, 234),
	local_property = Color3.fromRGB(129, 222, 255),
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

local function getHighlight(tokens, index)
	local token = tokens[index]

	if colors[token .. "_color"] then
		return colors[token .. "_color"]
	end

	if tonumber(token) then
		return colors.numbers
	elseif token == "nil" then
		return colors.null
	elseif token:sub(1, 2) == "--" then
		return colors.comment
	elseif operatorsSet[token] then
		return colors.operator
	elseif luaSet[token] then
		return colors.rbx
	elseif rbxSet[token] then
		return colors.lua
	elseif token:sub(1, 1) == "\"" or token:sub(1, 1) == "\'" then
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
			elseif character == "\"" or character == "\'" then
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
			local syntax = string.format("<font color = \"#%s\">%s</font>", highlight:ToHex(), token:gsub("<", "&lt;"):gsub(">", "&gt;"))
			
			table.insert(highlighted, syntax)
		else
			table.insert(highlighted, token)
		end
	end

	return table.concat(highlighted)
end
-- Properties

Rift.Name = "Rift"
Rift.Parent = gethui()
Rift.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Rift.IgnoreGuiInset = true
Rift.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = Rift
MainFrame.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
MainFrame.BackgroundTransparency = 0.10000000149011612
MainFrame.BorderColor3 = Color3.new(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 550, 0, 288)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.Parent = MainFrame

TitleFrame.Name = "TitleFrame"
TitleFrame.Parent = MainFrame
TitleFrame.BackgroundColor3 = Color3.new(0.027451, 0.027451, 0.027451)
TitleFrame.BackgroundTransparency = 0.20000000298023224
TitleFrame.BorderColor3 = Color3.new(0, 0, 0)
TitleFrame.BorderSizePixel = 0
TitleFrame.Position = UDim2.new(0.0236363634, 0, 0.0520833321, 0)
TitleFrame.Size = UDim2.new(0, 123, 0, 37)

Logo.Name = "Logo"
Logo.Parent = TitleFrame
Logo.BackgroundColor3 = Color3.new(1, 1, 1)
Logo.BackgroundTransparency = 1
Logo.BorderColor3 = Color3.new(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(-0.00523128361, 0, -0.114982814, 0)
Logo.Size = UDim2.new(0, 48, 0, 44)
Logo.Image = "rbxassetid://135123682987938"

UICorner_2.Parent = TitleFrame

Title.Name = "Title"
Title.Parent = TitleFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(-0.906518221, 0, 0.243238702, 0)
Title.Size = UDim2.new(0, 378, 0, 17)
Title.Font = Enum.Font.Ubuntu
Title.Text = "Rift Android"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 12
Title.TextWrapped = true

TopBarFrame.Name = "TopBarFrame"
TopBarFrame.Parent = MainFrame
TopBarFrame.BackgroundColor3 = Color3.new(0.027451, 0.027451, 0.027451)
TopBarFrame.BackgroundTransparency = 0.30000001192092896
TopBarFrame.BorderColor3 = Color3.new(0, 0, 0)
TopBarFrame.BorderSizePixel = 0
TopBarFrame.Position = UDim2.new(0.267806739, 0, 0.0500112101, 0)
TopBarFrame.Size = UDim2.new(0, 389, 0, 40)

UICorner_3.Parent = TopBarFrame

Exit.Name = "Exit"
Exit.Parent = TopBarFrame
Exit.BackgroundColor3 = Color3.new(1, 1, 1)
Exit.BackgroundTransparency = 1
Exit.BorderColor3 = Color3.new(0, 0, 0)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.894601524, 0, 0.100000001, 0)
Exit.Size = UDim2.new(0, 30, 0, 30)
Exit.Image = "rbxassetid://135632179136026"
Exit.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
    Open.Visible = true
end)

Home.Name = "Home"
Home.Parent = TopBarFrame
Home.BackgroundColor3 = Color3.new(1, 1, 1)
Home.BackgroundTransparency = 1
Home.BorderColor3 = Color3.new(0, 0, 0)
Home.BorderSizePixel = 0
Home.Position = UDim2.new(0.0462724939, 0, 0.174999997, 0)
Home.Size = UDim2.new(0, 26, 0, 25)
Home.Image = "rbxassetid://110945023407983"
Home.MouseButton1Click:Connect(function()
    for i,v in riftTabs do
        v.Visible = false
    end
    riftTabs.About.Visible = true
end)

Executor.Name = "Executor"
Executor.Parent = TopBarFrame
Executor.BackgroundColor3 = Color3.new(1, 1, 1)
Executor.BackgroundTransparency = 1
Executor.BorderColor3 = Color3.new(0, 0, 0)
Executor.BorderSizePixel = 0
Executor.Position = UDim2.new(0.151670948, 0, 0.174999997, 0)
Executor.Size = UDim2.new(0, 26, 0, 25)
Executor.Image = "rbxassetid://81538359508312"
Executor.MouseButton1Click:Connect(function()
    for i,v in riftTabs do
        v.Visible = false
    end
    riftTabs.Code.Visible = true
end)

Settings.Name = "Settings"
Settings.Parent = TopBarFrame
Settings.BackgroundColor3 = Color3.new(1, 1, 1)
Settings.BackgroundTransparency = 1
Settings.BorderColor3 = Color3.new(0, 0, 0)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.25449872, 0, 0.174999997, 0)
Settings.Size = UDim2.new(0, 26, 0, 25)
Settings.Image = "rbxassetid://133115974588634"
Settings.MouseButton1Click:Connect(function()
    for i,v in riftTabs do
        v.Visible = false
    end
    riftTabs.FileTab.Visible = true
end)
AboutFrame.Name = "AboutFrame"
AboutFrame.Parent = MainFrame
AboutFrame.BackgroundColor3 = Color3.new(0.027451, 0.027451, 0.027451)
AboutFrame.BackgroundTransparency = 0.30000001192092896
AboutFrame.BorderColor3 = Color3.new(0, 0, 0)
AboutFrame.BorderSizePixel = 0
AboutFrame.Position = UDim2.new(0.0236363634, 0, 0.222926244, 0)
AboutFrame.Size = UDim2.new(0, 524, 0, 205)
riftTabs.About = AboutFrame

UICorner_4.Parent = AboutFrame

KeyStatus.Name = "KeyStatus"
KeyStatus.Parent = AboutFrame
KeyStatus.BackgroundColor3 = Color3.new(0.027451, 0.027451, 0.027451)
KeyStatus.BackgroundTransparency = 0.10000000149011612
KeyStatus.BorderColor3 = Color3.new(0, 0, 0)
KeyStatus.BorderSizePixel = 0
KeyStatus.Position = UDim2.new(0.610687017, 0, 0.0637068599, 0)
KeyStatus.Size = UDim2.new(0, 192, 0, 77)

UICorner_5.Parent = KeyStatus

KeyTitle.Name = "KeyTitle"
KeyTitle.Parent = KeyStatus
KeyTitle.BackgroundColor3 = Color3.new(1, 1, 1)
KeyTitle.BackgroundTransparency = 1
KeyTitle.BorderColor3 = Color3.new(0, 0, 0)
KeyTitle.BorderSizePixel = 0
KeyTitle.Position = UDim2.new(0.119791664, 0, 0.0578034669, 0)
KeyTitle.Size = UDim2.new(0, 145, 0, 20)
KeyTitle.Font = Enum.Font.BuilderSans
KeyTitle.Text = "Key System Status"
KeyTitle.TextColor3 = Color3.new(1, 1, 1)
KeyTitle.TextSize = 18

Status.Name = "Status"
Status.Parent = KeyStatus
Status.BackgroundColor3 = Color3.new(0.0117647, 0.458824, 0.054902)
Status.BorderColor3 = Color3.new(0, 0, 0)
Status.BorderSizePixel = 0
Status.Position = UDim2.new(0.0625, 0, 0.421965331, 0)
Status.Size = UDim2.new(0, 167, 0, 27)

UICorner_6.Parent = Status

KEYLESS.Name = "KEYLESS"
KEYLESS.Parent = Status
KEYLESS.BackgroundColor3 = Color3.new(1, 1, 1)
KEYLESS.BackgroundTransparency = 1
KEYLESS.BorderColor3 = Color3.new(0, 0, 0)
KEYLESS.BorderSizePixel = 0
KEYLESS.Position = UDim2.new(0.0658994243, 0, 0.0948407203, 0)
KEYLESS.Size = UDim2.new(0, 145, 0, 20)
KEYLESS.Font = Enum.Font.BuilderSans
KEYLESS.Text = "N/A"
KEYLESS.TextColor3 = Color3.new(1, 1, 1)
KEYLESS.TextSize = 14

DiscordStatus.Name = "DiscordStatus"
DiscordStatus.Parent = AboutFrame
DiscordStatus.BackgroundColor3 = Color3.new(0.027451, 0.027451, 0.027451)
DiscordStatus.BackgroundTransparency = 0.10000000149011612
DiscordStatus.BorderColor3 = Color3.new(0, 0, 0)
DiscordStatus.BorderSizePixel = 0
DiscordStatus.Position = UDim2.new(0.608778656, 0, 0.523322403, 0)
DiscordStatus.Size = UDim2.new(0, 192, 0, 80)

UICorner_7.Parent = DiscordStatus

DiscordTitle.Name = "DiscordTitle"
DiscordTitle.Parent = DiscordStatus
DiscordTitle.BackgroundColor3 = Color3.new(1, 1, 1)
DiscordTitle.BackgroundTransparency = 1
DiscordTitle.BorderColor3 = Color3.new(0, 0, 0)
DiscordTitle.BorderSizePixel = 0
DiscordTitle.Position = UDim2.new(0.119791664, 0, 0.0578034669, 0)
DiscordTitle.Size = UDim2.new(0, 145, 0, 20)
DiscordTitle.Font = Enum.Font.BuilderSans
DiscordTitle.Text = "Join our discord today!"
DiscordTitle.TextColor3 = Color3.new(1, 1, 1)
DiscordTitle.TextSize = 18

DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = DiscordStatus
DiscordButton.BackgroundColor3 = Color3.new(0.00784314, 0.458824, 0.596078)
DiscordButton.BorderColor3 = Color3.new(0, 0, 0)
DiscordButton.BorderSizePixel = 0
DiscordButton.Position = UDim2.new(0.063000001, 0, 0.421999991, 0)
DiscordButton.Size = UDim2.new(0, 167, 0, 27)
DiscordButton.Font = Enum.Font.BuilderSans
DiscordButton.Text = "COPY LINK"
DiscordButton.TextColor3 = Color3.new(1, 1, 1)
DiscordButton.TextSize = 14
DiscordButton.MouseButton1Click:Connect(function()
    setclipboard('https://discord.gg/qHYpUczaPD')
end)

UICorner_8.Parent = DiscordButton

User.Name = "User"
User.Parent = AboutFrame
User.BackgroundColor3 = Color3.new(0.027451, 0.027451, 0.027451)
User.BackgroundTransparency = 0.10000000149011612
User.BorderColor3 = Color3.new(0, 0, 0)
User.BorderSizePixel = 0
User.Position = UDim2.new(0.0209923666, 0, 0.0634146333, 0)
User.Size = UDim2.new(0, 294, 0, 59)

UICorner_9.Parent = User

HelloText.Name = "HelloText"
HelloText.Parent = User
HelloText.BackgroundColor3 = Color3.new(1, 1, 1)
HelloText.BackgroundTransparency = 1
HelloText.BorderColor3 = Color3.new(0, 0, 0)
HelloText.BorderSizePixel = 0
HelloText.Position = UDim2.new(-0.0408163257, 0, 0.288135588, 0)
HelloText.Size = UDim2.new(0, 235, 0, 24)
HelloText.Font = Enum.Font.BuilderSansMedium
HelloText.Text = "Hello, User"
HelloText.TextColor3 = Color3.new(1, 1, 1)
HelloText.TextSize = 16
HelloText.TextWrapped = true

UserImage.Name = "UserImage"
UserImage.Parent = User
UserImage.BackgroundColor3 = Color3.new(1, 1, 1)
UserImage.BackgroundTransparency = 1
UserImage.BorderColor3 = Color3.new(0, 0, 0)
UserImage.BorderSizePixel = 0
UserImage.Position = UDim2.new(0.0476190485, 0, 0.101694912, 0)
UserImage.Size = UDim2.new(0, 45, 0, 46)
UserImage.Image = "rbxassetid://75921100749690"

local ClearConsole = Instance.new('TextButton')
ClearConsole.Name = "ClearConsole"
ClearConsole.Parent = User
ClearConsole.BackgroundColor3 = Color3.new(0.00784314, 0.458824, 0.596078)
ClearConsole.BorderColor3 = Color3.new(0, 0, 0)
ClearConsole.BorderSizePixel = 0
ClearConsole.Position = UDim2.new(0.59523809, 0, 0.169491529, 0)
ClearConsole.Size = UDim2.new(0, 101, 0, 14)
ClearConsole.Font = Enum.Font.BuilderSans
ClearConsole.Text = "Clear Console"
ClearConsole.TextColor3 = Color3.new(1, 1, 1)
ClearConsole.TextSize = 12
ClearConsole.TextWrapped = true
ClearConsole.MouseButton1Click:Connect(function()
    for i,v in ConsoleHub:GetChildren() do
        if v.ClassName == 'TextLabel' then
            v:Destroy()
        end
    end
end)

Instance.new('UICorner', ClearConsole).CornerRadius = UDim.new(0, 5)

local CopyConsole = Instance.new('TextButton')
CopyConsole.Name = "CopyConsole"
CopyConsole.Parent = User
CopyConsole.BackgroundColor3 = Color3.new(0.00784314, 0.458824, 0.596078)
CopyConsole.BorderColor3 = Color3.new(0, 0, 0)
CopyConsole.BorderSizePixel = 0
CopyConsole.Position = UDim2.new(0.59523809, 0, 0.525423706, 0)
CopyConsole.Size = UDim2.new(0, 101, 0, 14)
CopyConsole.Font = Enum.Font.BuilderSans
CopyConsole.Text = "Copy Console"
CopyConsole.TextColor3 = Color3.new(1, 1, 1)
CopyConsole.TextSize = 12
CopyConsole.TextWrapped = true
CopyConsole.MouseButton1Click:Connect(function()
    local texts = {}
    for i,v in ConsoleHub:GetChildren() do
        if v.ClassName == 'TextLabel' then
            table.insert(texts, v.Text)
        end
    end
    setclipboard(table.concat(texts, '\n'))
end)

Instance.new('UICorner', CopyConsole).CornerRadius = UDim.new(0, 5)

UICorner_11.Parent = CopyConsole
UICorner_11.CornerRadius = UDim.new(0, 5)

Quick.Name = "Quick"
Quick.Parent = AboutFrame
Quick.BackgroundColor3 = Color3.new(0.027451, 0.027451, 0.027451)
Quick.BackgroundTransparency = 0.10000000149011612
Quick.BorderColor3 = Color3.new(0, 0, 0)
Quick.BorderSizePixel = 0
Quick.Position = UDim2.new(0.0209923666, 0, 0.405215234, 0)
Quick.Size = UDim2.new(0, 294, 0, 106)

UICorner_10.Parent = Quick

ConsoleHub.Name = "ConsoleHub"
ConsoleHub.Parent = Quick
ConsoleHub.Active = true
ConsoleHub.BackgroundColor3 = Color3.new(1, 1, 1)
ConsoleHub.BackgroundTransparency = 1
ConsoleHub.BorderColor3 = Color3.new(0, 0, 0)
ConsoleHub.BorderSizePixel = 0
ConsoleHub.Size = UDim2.new(0, 294, 0, 104)
ConsoleHub.CanvasPosition = Vector2.new(0, 108)
ConsoleHub.ScrollBarThickness = 4

ConsoleLayout.Name = "ConsoleLayout"
ConsoleLayout.Parent = ConsoleHub
ConsoleLayout.SortOrder = Enum.SortOrder.LayoutOrder

CheatFrame.Name = "CheatFrame"
CheatFrame.Parent = MainFrame
CheatFrame.BackgroundColor3 = Color3.new(0.027451, 0.027451, 0.027451)
CheatFrame.BackgroundTransparency = 0.30000001192092896
CheatFrame.BorderColor3 = Color3.new(0, 0, 0)
CheatFrame.BorderSizePixel = 0
CheatFrame.Position = UDim2.new(0.0236363634, 0, 0.222926244, 0)
CheatFrame.Size = UDim2.new(0, 524, 0, 205)
CheatFrame.Visible = false
riftTabs.Code = CheatFrame

UICorner_11.Parent = CheatFrame

TextBoxFrame.Name = "TextBoxFrame"
TextBoxFrame.Parent = CheatFrame
TextBoxFrame.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
TextBoxFrame.BackgroundTransparency = 0.20000000298023224
TextBoxFrame.BorderColor3 = Color3.new(0, 0, 0)
TextBoxFrame.BorderSizePixel = 0
TextBoxFrame.Position = UDim2.new(0.0209923666, 0, 0.0585365482, 0)
TextBoxFrame.Size = UDim2.new(0, 501, 0, 137)

UICorner_12.Parent = TextBoxFrame

TextBox.Parent = TextBoxFrame
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0725679994, 0, 0.04189061, 0)
TextBox.Size = UDim2.new(0, 488, 0, 137)
TextBox.ClearTextOnFocus = false
TextBox.RichText = true
TextBox.Font = Enum.Font.RobotoMono
TextBox.MultiLine = true
TextBox.Text = isfile('riftscriptcache.lua') and readfile('riftscriptcache.lua') or "print(\"Welcome to Rift Android\")"
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextSize = 12
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.ClipsDescendants = true
TextBox.TextWrapped = true

local CodeLines = Instance.new('TextLabel') :: TextLabel
CodeLines.Name = "CodeLines"
CodeLines.Parent = TextBoxFrame
CodeLines.BackgroundColor3 = Color3.new(1, 1, 1)
CodeLines.BackgroundTransparency = 1
CodeLines.BorderColor3 = Color3.new(0, 0, 0)
CodeLines.BorderSizePixel = 0
CodeLines.ClipsDescendants = true
CodeLines.Position = UDim2.new(0.0725679696, 0, 0.045, 0)
CodeLines.Size = UDim2.new(0, -33, 0, 130)
CodeLines.Font = Enum.Font.RobotoMono
CodeLines.Text = "1"
CodeLines.TextColor3 = Color3.new(1, 1, 1)
CodeLines.TextSize = 12
CodeLines.TextYAlignment = Enum.TextYAlignment.Top

TextBox.Focused:Connect(function()
    TextBox.Text = TextBox.ContentText
end)
TextBox.FocusLost:Connect(function()
    TextBox.Text = syntax.run(TextBox.ContentText)
end)
spawn(function()
    local tab = {}
    for i = 1, (#TextBox.Text:split('\n')) do
        table.insert(tab, tostring(i))
    end
    CodeLines.Text = table.concat(tab, '\n')
end)
TextBox:GetPropertyChangedSignal('Text'):Connect(function()
    writefile('riftscriptcache.lua', tostring(TextBox.ContentText))
    local tab = {}
    for i = 1, (#TextBox.Text:split('\n')) do
        table.insert(tab, tostring(i))
    end
    CodeLines.Text = table.concat(tab, '\n')
end)
TextBox.Text = syntax.run(TextBox.ContentText)
Execute.Name = "Execute"
Execute.Parent = CheatFrame
Execute.BackgroundColor3 = Color3.new(0.00784314, 0.458824, 0.596078)
Execute.BackgroundTransparency = 0.20000000298023224
Execute.BorderColor3 = Color3.new(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.0286259539, 0, 0.756097555, 0)
Execute.Size = UDim2.new(0, 123, 0, 42)
Execute.Font = Enum.Font.Ubuntu
Execute.Text = "Execute"
Execute.TextColor3 = Color3.new(1, 1, 1)
Execute.TextSize = 18
Execute.MouseButton1Click:Connect(function()
    loadstring(TextBox.ContentText)()
end)

UICorner_13.Parent = Execute

Clear.Name = "Clear"
Clear.Parent = CheatFrame
Clear.BackgroundColor3 = Color3.new(0.00784314, 0.458824, 0.596078)
Clear.BackgroundTransparency = 0.20000000298023224
Clear.BorderColor3 = Color3.new(0, 0, 0)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0.290076345, 0, 0.756097555, 0)
Clear.Size = UDim2.new(0, 93, 0, 42)
Clear.Font = Enum.Font.Ubuntu
Clear.Text = "Clear"
Clear.TextColor3 = Color3.new(1, 1, 1)
Clear.TextSize = 18
Clear.MouseButton1Click:Connect(function()
    TextBox.Text = ''
end)

UICorner_14.Parent = Clear

ExecuteClipboard.Name = "ExecuteClipboard"
ExecuteClipboard.Parent = CheatFrame
ExecuteClipboard.BackgroundColor3 = Color3.new(0.00784314, 0.458824, 0.596078)
ExecuteClipboard.BackgroundTransparency = 0.20000000298023224
ExecuteClipboard.BorderColor3 = Color3.new(0, 0, 0)
ExecuteClipboard.BorderSizePixel = 0
ExecuteClipboard.Position = UDim2.new(0.532442749, 0, 0.756097555, 0)
ExecuteClipboard.Size = UDim2.new(0, 123, 0, 42)
ExecuteClipboard.Font = Enum.Font.Ubuntu
ExecuteClipboard.Text = "Execute Clipboard"
ExecuteClipboard.TextColor3 = Color3.new(1, 1, 1)
ExecuteClipboard.TextSize = 14
ExecuteClipboard.MouseButton1Click:Connect(function()
    local returnedclipboarr = getclipboard() or ''
    local script = loadstring(returnedclipboarr)
    if not script then
        addMessage("Failed to execute the script (load function missing)", Color3.fromRGB(255, 0, 0))
    end
    local suc, err = pcall(script)
    if not suc then
        error(err, 8)
    end
end)

UICorner_15.Parent = ExecuteClipboard

Copy.Name = "Copy"
Copy.Parent = CheatFrame
Copy.BackgroundColor3 = Color3.new(0.00784314, 0.458824, 0.596078)
Copy.BackgroundTransparency = 0.20000000298023224
Copy.BorderColor3 = Color3.new(0, 0, 0)
Copy.BorderSizePixel = 0
Copy.Position = UDim2.new(0.799618304, 0, 0.756097555, 0)
Copy.Size = UDim2.new(0, 93, 0, 42)
Copy.Font = Enum.Font.Ubuntu
Copy.Text = "Copy"
Copy.TextColor3 = Color3.new(1, 1, 1)
Copy.TextSize = 18
Copy.MouseButton1Click:Connect(function()
    pcall(setclipboard, TextBox.ContentText)
end)

UICorner_16.Parent = Copy

FileFrame.Name = "FileFrame"
FileFrame.Parent = MainFrame
FileFrame.BackgroundColor3 = Color3.new(0.027451, 0.027451, 0.027451)
FileFrame.BackgroundTransparency = 0.30000001192092896
FileFrame.BorderColor3 = Color3.new(0, 0, 0)
FileFrame.BorderSizePixel = 0
FileFrame.Position = UDim2.new(0.0236363634, 0, 0.222926244, 0)
FileFrame.Size = UDim2.new(0, 524, 0, 205)
FileFrame.Visible = false
riftTabs.FileTab = FileFrame

UICorner_19.Parent = FileFrame

FileScrollingFrame.Name = "FileScrollingFrame"
FileScrollingFrame.Parent = FileFrame
FileScrollingFrame.Active = true
FileScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
FileScrollingFrame.BackgroundTransparency = 1
FileScrollingFrame.BorderColor3 = Color3.new(0, 0, 0)
FileScrollingFrame.BorderSizePixel = 0
FileScrollingFrame.Position = UDim2.new(0.0268911123, 0, 0.0305300821, 0)
FileScrollingFrame.Size = UDim2.new(0, 508, 0, 151)
FileScrollingFrame.ScrollBarThickness = 1

UIListLayout.Parent = FileScrollingFrame
UIListLayout.Padding = UDim.new(0, 9)

AddScript.Name = "AddScript"
AddScript.Parent = FileFrame
AddScript.BackgroundColor3 = Color3.new(0.00784314, 0.458824, 0.596078)
AddScript.BorderColor3 = Color3.new(0, 0, 0)
AddScript.BorderSizePixel = 0
AddScript.Position = UDim2.new(0.705954075, 0, 0.834826946, 0)
AddScript.Size = UDim2.new(0, 131, 0, 26)
AddScript.Font = Enum.Font.BuilderSans
AddScript.Text = "Add Scripts"
AddScript.TextColor3 = Color3.new(1, 1, 1)
AddScript.TextSize = 14

UICorner_23.Parent = AddScript
UICorner_23.CornerRadius = UDim.new(0, 5)

SaveScriptFrame.Name = "SaveScriptFrame"
SaveScriptFrame.Parent = FileFrame
SaveScriptFrame.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
SaveScriptFrame.BackgroundTransparency = 0.20000000298023224
SaveScriptFrame.BorderColor3 = Color3.new(0, 0, 0)
SaveScriptFrame.BorderSizePixel = 0
SaveScriptFrame.Position = UDim2.new(0.24427481, 0, -0.117073171, 0)
SaveScriptFrame.Size = UDim2.new(0, 235, 0, 213)
SaveScriptFrame.Visible = false

AddScript.MouseButton1Click:Connect(function()
    SaveScriptFrame.Visible = true
end)

UICorner_24.Parent = SaveScriptFrame

SaveTitle.Name = "SaveTitle"
SaveTitle.Parent = SaveScriptFrame
SaveTitle.BackgroundColor3 = Color3.new(1, 1, 1)
SaveTitle.BackgroundTransparency = 1
SaveTitle.BorderColor3 = Color3.new(0, 0, 0)
SaveTitle.BorderSizePixel = 0
SaveTitle.Position = UDim2.new(0.0893617049, 0, 0.0516431928, 0)
SaveTitle.Size = UDim2.new(0, 192, 0, 18)
SaveTitle.Font = Enum.Font.BuilderSans
SaveTitle.Text = "Save Script"
SaveTitle.TextColor3 = Color3.new(1, 1, 1)
SaveTitle.TextSize = 14

ScriptName.Name = "ScriptName"
ScriptName.Parent = SaveScriptFrame
ScriptName.BackgroundColor3 = Color3.new(0.027451, 0.027451, 0.027451)
ScriptName.BackgroundTransparency = 0.20000000298023224
ScriptName.BorderColor3 = Color3.new(0, 0, 0)
ScriptName.BorderSizePixel = 0
ScriptName.Position = UDim2.new(0.076595746, 0, 0.21596244, 0)
ScriptName.Size = UDim2.new(0, 200, 0, 27)
ScriptName.ClearTextOnFocus = false
ScriptName.Font = Enum.Font.SourceSans
ScriptName.PlaceholderText = "Enter script name here.."
ScriptName.Text = ""
ScriptName.TextColor3 = Color3.new(1, 1, 1)
ScriptName.TextSize = 12

UICorner_25.Parent = ScriptName
UICorner_25.CornerRadius = UDim.new(0, 5)

ScriptContent.Name = "ScriptContent"
ScriptContent.Parent = SaveScriptFrame
ScriptContent.BackgroundColor3 = Color3.new(0.027451, 0.027451, 0.027451)
ScriptContent.BackgroundTransparency = 0.20000000298023224
ScriptContent.BorderColor3 = Color3.new(0, 0, 0)
ScriptContent.BorderSizePixel = 0
ScriptContent.Position = UDim2.new(0.0808510631, 0, 0.380281687, 0)
ScriptContent.Size = UDim2.new(0, 200, 0, 63)
ScriptContent.ClearTextOnFocus = false
ScriptContent.Font = Enum.Font.SourceSans
ScriptContent.PlaceholderText = "Enter script here..."
ScriptContent.Text = ""
ScriptContent.TextColor3 = Color3.new(1, 1, 1)
ScriptContent.TextSize = 12

UICorner_26.Parent = ScriptContent
UICorner_26.CornerRadius = UDim.new(0, 5)

local riftscripts = {}
local refreshScripts = function() end
refreshScripts = function()
    for i,v in riftscripts do
        v:Destroy()
    end
    table.clear(riftscripts)
    for i,v in listfiles('riftscripts') do
        local ScriptFrame = Instance.new("Frame")
        table.insert(riftscripts, ScriptFrame)
        local UICorner_20 = Instance.new("UICorner")
        
        local FileName = Instance.new("TextLabel")
        local ExecuteFile = Instance.new("TextButton")
        local UICorner_21 = Instance.new("UICorner")
        local DeleteFile = Instance.new("TextButton")
        local UICorner_22 = Instance.new("UICorner")
        ScriptFrame.Name = "ScriptFrame"
        ScriptFrame.Parent = FileScrollingFrame
        ScriptFrame.BackgroundColor3 = Color3.new(0.027451, 0.027451, 0.027451)
        ScriptFrame.BackgroundTransparency = 0.10000000149011612
        ScriptFrame.BorderColor3 = Color3.new(0, 0, 0)
        ScriptFrame.BorderSizePixel = 0
        ScriptFrame.Position = UDim2.new(-0.00393700786, 0, -0.0353535339, 0)
        ScriptFrame.Size = UDim2.new(0, 487, 0, 43)
        
        UICorner_20.Parent = ScriptFrame
        
        FileName.Name = "FileName"
        FileName.Parent = ScriptFrame
        FileName.BackgroundColor3 = Color3.new(1, 1, 1)
        FileName.BackgroundTransparency = 1
        FileName.BorderColor3 = Color3.new(0, 0, 0)
        FileName.BorderSizePixel = 0
        FileName.Size = UDim2.new(0, 108, 0, 43)
        FileName.Font = Enum.Font.BuilderSans
        FileName.Text = v:gsub('riftscripts/', ''):gsub('/', '')
        FileName.TextColor3 = Color3.new(1, 1, 1)
        FileName.TextSize = 16
        
        ExecuteFile.Name = "ExecuteFile"
        ExecuteFile.Parent = ScriptFrame
        ExecuteFile.BackgroundColor3 = Color3.new(0.00784314, 0.458824, 0.596078)
        ExecuteFile.BorderColor3 = Color3.new(0, 0, 0)
        ExecuteFile.BorderSizePixel = 0
        ExecuteFile.Position = UDim2.new(0.746835709, 0, 0.186046511, 0)
        ExecuteFile.Size = UDim2.new(0, 95, 0, 26)
        ExecuteFile.Font = Enum.Font.BuilderSans
        ExecuteFile.Text = "Execute"
        ExecuteFile.TextColor3 = Color3.new(1, 1, 1)
        ExecuteFile.TextSize = 14
        ExecuteFile.MouseButton1Click:Connect(function()
            loadfile(v)()
        end)
        
        UICorner_21.Parent = ExecuteFile
        UICorner_21.CornerRadius = UDim.new(0, 5)
        
        DeleteFile.Name = "DeleteFile"
        DeleteFile.Parent = ScriptFrame
        DeleteFile.BackgroundColor3 = Color3.new(0.00784314, 0.458824, 0.596078)
        DeleteFile.BorderColor3 = Color3.new(0, 0, 0)
        DeleteFile.BorderSizePixel = 0
        DeleteFile.Position = UDim2.new(0.535336733, 0, 0.186046511, 0)
        DeleteFile.Size = UDim2.new(0, 95, 0, 26)
        DeleteFile.Font = Enum.Font.BuilderSans
        DeleteFile.Text = "Delete"
        DeleteFile.TextColor3 = Color3.new(1, 1, 1)
        DeleteFile.TextSize = 14
        DeleteFile.MouseButton1Click:Connect(function()
            delfile(v)
            refreshScripts()
        end)
        
        UICorner_22.Parent = DeleteFile
        UICorner_22.CornerRadius = UDim.new(0, 5)
    end
end

SaveScript.Name = "SaveScript"
SaveScript.Parent = SaveScriptFrame
SaveScript.BackgroundColor3 = Color3.new(0.00784314, 0.458824, 0.596078)
SaveScript.BorderColor3 = Color3.new(0, 0, 0)
SaveScript.BorderSizePixel = 0
SaveScript.Position = UDim2.new(0.076595746, 0, 0.732394338, 0)
SaveScript.Size = UDim2.new(0, 195, 0, 39)
SaveScript.Font = Enum.Font.BuilderSans
SaveScript.Text = "Save Script"
SaveScript.TextColor3 = Color3.new(1, 1, 1)
SaveScript.TextSize = 14
SaveScript.MouseButton1Click:Connect(function()
    local filename = ScriptName.Text:find('.') and ScriptName.Text or ScriptName.Text..'.lua'
    writefile('riftscripts/'.. filename, ScriptContent.Text)
    ScriptName.Text = ''
    ScriptContent.Text = ''
    SaveScriptFrame.Visible = false
    refreshScripts()
end)

refreshScripts()

UICorner_27.Parent = SaveScript
Open.Name = "Open"
Open.Parent = Rift
Open.Active = true
Open.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Open.BackgroundTransparency = 0.4
Open.BorderColor3 = Color3.new(0, 0, 0)
Open.BorderSizePixel = 0
Open.AnchorPoint = Vector2.new(0.5, 0.2)
Open.Position = UDim2.new(0.5, 0, 0.2, 0)
Open.Size = UDim2.new(0, 44, 0, 43)
Open.Visible = false
Open.Image = "rbxassetid://135123682987938"
Open.Draggable = true
Open.MouseButton1Click:Connect(function()
    MainFrame.Visible = true
    Open.Visible = false
end)

UICorner_24.Parent = Open

LogService.MessageOut:Connect(function(message, messageType)
    if messageType == Enum.MessageType.MessageOutput then
        addMessage(message, Color3.fromRGB(255, 255, 255))
    elseif messageType == Enum.MessageType.MessageWarning then
        addMessage(message, Color3.fromRGB(255, 255, 0))
    elseif messageType == Enum.MessageType.MessageError then
        addMessage(message, Color3.fromRGB(255, 0, 0))
    elseif messageType == Enum.MessageType.MessageInfo then
        addMessage(message, Color3.fromRGB(0, 150, 255))
    end
end)
