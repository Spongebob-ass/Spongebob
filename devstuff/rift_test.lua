if _G.RiftLoaded then
	return
end

-- [[ Internal Functions ]] --
local _enableautoexec = clonefunction(client.enableautoexec)
setreadonly(client, false);
client.enableautoexec = nil
client.execute = nil
setreadonly(client, true);

getgenv().client = nil

_G.RiftLoaded = true

-- [[ Autoexecute ]] --
_enableautoexec()

-- [[ Interface ]] --
local Rift = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Rift_image = Instance.new("ImageLabel")
local Tabs = Instance.new("Folder")
local Editor_frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Editor_image = Instance.new("ImageLabel")
local Editor_button = Instance.new("TextButton")
local Home_frame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIStroke_2 = Instance.new("UIStroke")
local Home_image = Instance.new("ImageLabel")
local Home_button = Instance.new("TextButton")
local Exit_frame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UIStroke_3 = Instance.new("UIStroke")
local Exit_image = Instance.new("ImageLabel")
local Exit_button = Instance.new("TextButton")
local Console_frame = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local UIStroke_4 = Instance.new("UIStroke")
local Console_image = Instance.new("ImageLabel")
local Console_button = Instance.new("TextButton")
local Interface = Instance.new("Folder")
local Main_Console_frame = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local UIStroke_5 = Instance.new("UIStroke")
local Console_scroll = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Main_Home_frame = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local UIStroke_6 = Instance.new("UIStroke")
local User_frame = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local User_image = Instance.new("ImageLabel")
local UICorner_8 = Instance.new("UICorner")
local UIStroke_7 = Instance.new("UIStroke")
local Username_frame = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local UIStroke_8 = Instance.new("UIStroke")
local Name = Instance.new("TextLabel")
local UserId_frame = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local UIStroke_9 = Instance.new("UIStroke")
local UserId = Instance.new("TextLabel")
local Search_frame = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local UIStroke_10 = Instance.new("UIStroke")
local TextLabel = Instance.new("TextLabel")
local Discord_frame = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local UIStroke_11 = Instance.new("UIStroke")
local Discord_button = Instance.new("TextButton")
local Rift_image_2 = Instance.new("ImageLabel")
local Main_Editor_frame = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local UIStroke_12 = Instance.new("UIStroke")
local Execute_frame = Instance.new("Frame")
local UICorner_14 = Instance.new("UICorner")
local UIStroke_13 = Instance.new("UIStroke")
local Execute_button = Instance.new("TextButton")
local Execute_image = Instance.new("ImageLabel")
local Clear_frame = Instance.new("Frame")
local UICorner_15 = Instance.new("UICorner")
local UIStroke_14 = Instance.new("UIStroke")
local Clear_button = Instance.new("TextButton")
local Clear_image = Instance.new("ImageLabel")
local Paste_frame = Instance.new("Frame")
local UICorner_16 = Instance.new("UICorner")
local UIStroke_15 = Instance.new("UIStroke")
local Paste_button = Instance.new("TextButton")
local Paste_image = Instance.new("ImageLabel")
local EditorScroll = Instance.new("ScrollingFrame")
local Editor_box = Instance.new("TextBox")
local Main_Home_frame_2 = Instance.new("Frame")
local UICorner_17 = Instance.new("UICorner")
local UIStroke_16 = Instance.new("UIStroke")
local User_frame_2 = Instance.new("Frame")
local UICorner_18 = Instance.new("UICorner")
local User_image_2 = Instance.new("ImageLabel")
local UICorner_19 = Instance.new("UICorner")
local UIStroke_17 = Instance.new("UIStroke")
local Username_frame_2 = Instance.new("Frame")
local UICorner_20 = Instance.new("UICorner")
local UIStroke_18 = Instance.new("UIStroke")
local Name_2 = Instance.new("TextLabel")
local UserId_frame_2 = Instance.new("Frame")
local UICorner_21 = Instance.new("UICorner")
local UIStroke_19 = Instance.new("UIStroke")
local UserId_2 = Instance.new("TextLabel")
local Search_frame_2 = Instance.new("Frame")
local UICorner_22 = Instance.new("UICorner")
local UIStroke_20 = Instance.new("UIStroke")
local TextLabel_2 = Instance.new("TextLabel")
local Discord_frame_2 = Instance.new("Frame")
local UICorner_23 = Instance.new("UICorner")
local UIStroke_21 = Instance.new("UIStroke")
local Discord_button_2 = Instance.new("TextButton")
local Rift_image_3 = Instance.new("ImageLabel")
local UICorner_24 = Instance.new("UICorner")
local Rift_frame = Instance.new("Frame")
local UICorner_25 = Instance.new("UICorner")
local UIStroke_22 = Instance.new("UIStroke")
local Rift_open = Instance.new("ImageButton")

Rift.Name = "Rift"
Rift.Parent = cloneref(gethui())
Rift.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Rift.ResetOnSpawn = false
Rift.IgnoreGuiInset = true

MainFrame.Name = "MainFrame"
MainFrame.Parent = Rift
MainFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.212416127, 0, 0.2280249, 0)
MainFrame.Size = UDim2.new(0, 522, 0, 267)

Rift_image.Name = "Rift_image"
Rift_image.Parent = MainFrame
Rift_image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rift_image.BackgroundTransparency = 1.000
Rift_image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Rift_image.BorderSizePixel = 0
Rift_image.Position = UDim2.new(0.0114942528, 0, 0, 0)
Rift_image.Size = UDim2.new(0, 50, 0, 50)
Rift_image.Image = "rbxassetid://135123682987938"

Tabs.Name = "Tabs"
Tabs.Parent = MainFrame

Editor_frame.Name = "Editor_frame"
Editor_frame.Parent = Tabs
Editor_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Editor_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Editor_frame.BorderSizePixel = 0
Editor_frame.Position = UDim2.new(0.0268199239, 0, 0.352059931, 0)
Editor_frame.Size = UDim2.new(0, 117, 0, 35)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Editor_frame

UIStroke.Parent = Editor_frame
UIStroke.Color = Color3.fromRGB(57, 57, 57)

Editor_image.Name = "Editor_image"
Editor_image.Parent = Editor_frame
Editor_image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Editor_image.BackgroundTransparency = 1.000
Editor_image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Editor_image.BorderSizePixel = 0
Editor_image.Position = UDim2.new(0.0427350439, 0, 0.171428576, 0)
Editor_image.Size = UDim2.new(0, 23, 0, 23)
Editor_image.Image = "rbxassetid://111598686809521"

Editor_button.Name = "Editor_button"
Editor_button.Parent = Editor_frame
Editor_button.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Editor_button.BackgroundTransparency = 1.000
Editor_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Editor_button.BorderSizePixel = 0
Editor_button.Position = UDim2.new(0.136752144, 0, 0, 0)
Editor_button.Size = UDim2.new(0, 100, 0, 34)
Editor_button.Font = Enum.Font.Cartoon
Editor_button.Text = "Editor"
Editor_button.TextColor3 = Color3.fromRGB(102, 102, 102)
Editor_button.TextSize = 15.000

Home_frame.Name = "Home_frame"
Home_frame.Parent = Tabs
Home_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Home_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Home_frame.BorderSizePixel = 0
Home_frame.Position = UDim2.new(0.0268199239, 0, 0.187265918, 0)
Home_frame.Size = UDim2.new(0, 117, 0, 35)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Home_frame

UIStroke_2.Parent = Home_frame
UIStroke_2.Color = Color3.fromRGB(57, 57, 57)

Home_image.Name = "Home_image"
Home_image.Parent = Home_frame
Home_image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Home_image.BackgroundTransparency = 1.000
Home_image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Home_image.BorderSizePixel = 0
Home_image.Position = UDim2.new(0.0427350439, 0, 0.171428576, 0)
Home_image.Size = UDim2.new(0, 23, 0, 23)
Home_image.Image = "rbxassetid://74222626935040"

Home_button.Name = "Home_button"
Home_button.Parent = Home_frame
Home_button.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Home_button.BackgroundTransparency = 1.000
Home_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Home_button.BorderSizePixel = 0
Home_button.Position = UDim2.new(0.136752144, 0, 0, 0)
Home_button.Size = UDim2.new(0, 100, 0, 34)
Home_button.Font = Enum.Font.Cartoon
Home_button.Text = "Home"
Home_button.TextColor3 = Color3.fromRGB(102, 102, 102)
Home_button.TextSize = 15.000

Exit_frame.Name = "Exit_frame"
Exit_frame.Parent = Tabs
Exit_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Exit_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exit_frame.BorderSizePixel = 0
Exit_frame.Position = UDim2.new(0.0268199239, 0, 0.842696667, 0)
Exit_frame.Size = UDim2.new(0, 117, 0, 35)

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = Exit_frame

UIStroke_3.Parent = Exit_frame
UIStroke_3.Color = Color3.fromRGB(57, 57, 57)

Exit_image.Name = "Exit_image"
Exit_image.Parent = Exit_frame
Exit_image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit_image.BackgroundTransparency = 1.000
Exit_image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exit_image.BorderSizePixel = 0
Exit_image.Position = UDim2.new(0.0427350439, 0, 0.171428576, 0)
Exit_image.Size = UDim2.new(0, 23, 0, 23)
Exit_image.Image = "rbxassetid://92028708065090"

Exit_button.Name = "Exit_button"
Exit_button.Parent = Exit_frame
Exit_button.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Exit_button.BackgroundTransparency = 1.000
Exit_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exit_button.BorderSizePixel = 0
Exit_button.Position = UDim2.new(0.136752144, 0, 0, 0)
Exit_button.Size = UDim2.new(0, 100, 0, 34)
Exit_button.Font = Enum.Font.Cartoon
Exit_button.Text = "Exit"
Exit_button.TextColor3 = Color3.fromRGB(102, 102, 102)
Exit_button.TextSize = 15.000

Console_frame.Name = "Console_frame"
Console_frame.Parent = Tabs
Console_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Console_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Console_frame.BorderSizePixel = 0
Console_frame.Position = UDim2.new(0.0268199239, 0, 0.520599246, 0)
Console_frame.Size = UDim2.new(0, 117, 0, 35)

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = Console_frame

UIStroke_4.Parent = Console_frame
UIStroke_4.Color = Color3.fromRGB(57, 57, 57)

Console_image.Name = "Console_image"
Console_image.Parent = Console_frame
Console_image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Console_image.BackgroundTransparency = 1.000
Console_image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Console_image.BorderSizePixel = 0
Console_image.Position = UDim2.new(0.0427350439, 0, 0.171428576, 0)
Console_image.Size = UDim2.new(0, 23, 0, 23)
Console_image.Image = "rbxassetid://92499937529711"

Console_button.Name = "Console_button"
Console_button.Parent = Console_frame
Console_button.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Console_button.BackgroundTransparency = 1.000
Console_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Console_button.BorderSizePixel = 0
Console_button.Position = UDim2.new(0.136752144, 0, 0, 0)
Console_button.Size = UDim2.new(0, 100, 0, 34)
Console_button.Font = Enum.Font.Cartoon
Console_button.Text = "Console"
Console_button.TextColor3 = Color3.fromRGB(102, 102, 102)
Console_button.TextSize = 15.000

Interface.Name = "Interface"
Interface.Parent = MainFrame

Main_Console_frame.Name = "Main_Console_frame"
Main_Console_frame.Parent = Interface
Main_Console_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Main_Console_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main_Console_frame.BorderSizePixel = 0
Main_Console_frame.Position = UDim2.new(0.285440624, 0, 0.0266110133, 0)
Main_Console_frame.Size = UDim2.new(0, 366, 0, 253)
Main_Console_frame.Visible = false

UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = Main_Console_frame

UIStroke_5.Parent = Main_Console_frame
UIStroke_5.Color = Color3.fromRGB(57, 57, 57)

Console_scroll.Name = "Console_scroll"
Console_scroll.Parent = Main_Console_frame
Console_scroll.Active = true
Console_scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Console_scroll.BackgroundTransparency = 1.000
Console_scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
Console_scroll.BorderSizePixel = 0
Console_scroll.Position = UDim2.new(0.0191256832, 0, 0, 0)
Console_scroll.Size = UDim2.new(0, 359, 0, 252)
Console_scroll.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Console_scroll.ScrollBarThickness = 4

UIListLayout.Parent = Console_scroll
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

Main_Home_frame.Name = "Main_Home_frame"
Main_Home_frame.Parent = Interface
Main_Home_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Main_Home_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main_Home_frame.BorderSizePixel = 0
Main_Home_frame.Position = UDim2.new(0.285440624, 0, 0.0266110133, 0)
Main_Home_frame.Size = UDim2.new(0, 366, 0, 253)

UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = Main_Home_frame

UIStroke_6.Parent = Main_Home_frame
UIStroke_6.Color = Color3.fromRGB(57, 57, 57)

User_frame.Name = "User_frame"
User_frame.Parent = Main_Home_frame
User_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
User_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
User_frame.BorderSizePixel = 0
User_frame.Position = UDim2.new(0.0340744592, 0, 0.0503263809, 0)
User_frame.Size = UDim2.new(0, 221, 0, 65)

UICorner_7.CornerRadius = UDim.new(0, 5)
UICorner_7.Parent = User_frame

User_image.Name = "User_image"
User_image.Parent = User_frame
User_image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
User_image.BackgroundTransparency = 1.000
User_image.BorderColor3 = Color3.fromRGB(0, 0, 0)
User_image.BorderSizePixel = 0
User_image.Position = UDim2.new(0.0452488698, 0, 0.107692309, 0)
User_image.Size = UDim2.new(0, 51, 0, 51)
User_image.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_8.CornerRadius = UDim.new(0, 5)
UICorner_8.Parent = User_image

UIStroke_7.Parent = User_frame
UIStroke_7.Color = Color3.fromRGB(57, 57, 57)

Username_frame.Name = "Username_frame"
Username_frame.Parent = User_frame
Username_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Username_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Username_frame.BorderSizePixel = 0
Username_frame.Position = UDim2.new(0.355341434, 0, 0.0964801461, 0)
Username_frame.Size = UDim2.new(0, 127, 0, 23)

UICorner_9.CornerRadius = UDim.new(0, 5)
UICorner_9.Parent = Username_frame

UIStroke_8.Parent = Username_frame
UIStroke_8.Color = Color3.fromRGB(57, 57, 57)

Name.Name = "Name"
Name.Parent = Username_frame
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name.BorderSizePixel = 0
Name.Size = UDim2.new(0, 127, 0, 23)
Name.Font = Enum.Font.SourceSans
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextSize = 11.000
Name.TextWrapped = true

UserId_frame.Name = "UserId_frame"
UserId_frame.Parent = User_frame
UserId_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
UserId_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
UserId_frame.BorderSizePixel = 0
UserId_frame.Position = UDim2.new(0.44131428, 0, 0.588787854, 0)
UserId_frame.Size = UDim2.new(0, 89, 0, 17)

UICorner_10.CornerRadius = UDim.new(0, 5)
UICorner_10.Parent = UserId_frame

UIStroke_9.Parent = UserId_frame
UIStroke_9.Color = Color3.fromRGB(57, 57, 57)

UserId.Name = "UserId"
UserId.Parent = UserId_frame
UserId.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserId.BackgroundTransparency = 1.000
UserId.BorderColor3 = Color3.fromRGB(0, 0, 0)
UserId.BorderSizePixel = 0
UserId.Position = UDim2.new(0, 0, 0.235294119, 0)
UserId.Size = UDim2.new(0, 89, 0, 9)
UserId.Font = Enum.Font.SourceSans
UserId.TextColor3 = Color3.fromRGB(255, 255, 255)
UserId.TextSize = 10.000
UserId.TextWrapped = true

Search_frame.Name = "Search_frame"
Search_frame.Parent = Main_Home_frame
Search_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Search_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Search_frame.BorderSizePixel = 0
Search_frame.Position = UDim2.new(0.0340744592, 0, 0.343457967, 0)
Search_frame.Size = UDim2.new(0, 344, 0, 156)

UICorner_11.CornerRadius = UDim.new(0, 5)
UICorner_11.Parent = Search_frame

UIStroke_10.Parent = Search_frame
UIStroke_10.Color = Color3.fromRGB(57, 57, 57)

TextLabel.Parent = Search_frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0494186059, 0, 0.641025662, 0)
TextLabel.Size = UDim2.new(0, 309, 0, 11)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "If you encounter any bugs, please don’t hesitate to contact us."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

Discord_frame.Name = "Discord_frame"
Discord_frame.Parent = Search_frame
Discord_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Discord_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Discord_frame.BorderSizePixel = 0
Discord_frame.Position = UDim2.new(0.327679127, 0, 0.772945106, 0)
Discord_frame.Size = UDim2.new(0, 114, 0, 25)

UICorner_12.CornerRadius = UDim.new(0, 5)
UICorner_12.Parent = Discord_frame

UIStroke_11.Parent = Discord_frame
UIStroke_11.Color = Color3.fromRGB(57, 57, 57)

Discord_button.Name = "Discord_button"
Discord_button.Parent = Discord_frame
Discord_button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discord_button.BackgroundTransparency = 1.000
Discord_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Discord_button.BorderSizePixel = 0
Discord_button.Size = UDim2.new(0, 114, 0, 24)
Discord_button.Font = Enum.Font.SourceSans
Discord_button.Text = "Copy Discord URL"
Discord_button.TextColor3 = Color3.fromRGB(255, 255, 255)
Discord_button.TextSize = 13.000

Rift_image_2.Name = "Rift_image"
Rift_image_2.Parent = Search_frame
Rift_image_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rift_image_2.BackgroundTransparency = 1.000
Rift_image_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Rift_image_2.BorderSizePixel = 0
Rift_image_2.Position = UDim2.new(0.35161075, 0, 0.0384615399, 0)
Rift_image_2.Size = UDim2.new(0, 100, 0, 94)
Rift_image_2.Image = "rbxassetid://135123682987938"

Main_Editor_frame.Name = "Main_Editor_frame"
Main_Editor_frame.Parent = Interface
Main_Editor_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Main_Editor_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main_Editor_frame.BorderSizePixel = 0
Main_Editor_frame.Position = UDim2.new(0.285440624, 0, 0.0266110133, 0)
Main_Editor_frame.Size = UDim2.new(0, 366, 0, 253)
Main_Editor_frame.Visible = false

UICorner_13.CornerRadius = UDim.new(0, 5)
UICorner_13.Parent = Main_Editor_frame

UIStroke_12.Parent = Main_Editor_frame
UIStroke_12.Color = Color3.fromRGB(57, 57, 57)

Execute_frame.Name = "Execute_frame"
Execute_frame.Parent = Main_Editor_frame
Execute_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Execute_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute_frame.BorderSizePixel = 0
Execute_frame.Position = UDim2.new(0.896174848, 0, 0.8577075, 0)
Execute_frame.Size = UDim2.new(0, 31, 0, 30)

UICorner_14.CornerRadius = UDim.new(0, 5)
UICorner_14.Parent = Execute_frame

UIStroke_13.Parent = Execute_frame
UIStroke_13.Color = Color3.fromRGB(57, 57, 57)

Execute_button.Name = "Execute_button"
Execute_button.Parent = Execute_frame
Execute_button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Execute_button.BackgroundTransparency = 1.000
Execute_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute_button.BorderSizePixel = 0
Execute_button.Size = UDim2.new(0, 31, 0, 30)
Execute_button.Font = Enum.Font.SourceSans
Execute_button.Text = ""
Execute_button.TextColor3 = Color3.fromRGB(0, 0, 0)
Execute_button.TextSize = 14.000

Execute_image.Name = "Execute_image"
Execute_image.Parent = Execute_button
Execute_image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Execute_image.BackgroundTransparency = 1.000
Execute_image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute_image.BorderSizePixel = 0
Execute_image.Position = UDim2.new(0.225806445, 0, 0.196496576, 0)
Execute_image.Size = UDim2.new(0, 17, 0, 18)
Execute_image.Image = "rbxassetid://78830234357859"

Clear_frame.Name = "Clear_frame"
Clear_frame.Parent = Main_Editor_frame
Clear_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Clear_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear_frame.BorderSizePixel = 0
Clear_frame.Position = UDim2.new(0.792349756, 0, 0.8577075, 0)
Clear_frame.Size = UDim2.new(0, 31, 0, 30)

UICorner_15.CornerRadius = UDim.new(0, 5)
UICorner_15.Parent = Clear_frame

UIStroke_14.Parent = Clear_frame
UIStroke_14.Color = Color3.fromRGB(57, 57, 57)

Clear_button.Name = "Clear_button"
Clear_button.Parent = Clear_frame
Clear_button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clear_button.BackgroundTransparency = 1.000
Clear_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear_button.BorderSizePixel = 0
Clear_button.Size = UDim2.new(0, 31, 0, 30)
Clear_button.Font = Enum.Font.SourceSans
Clear_button.Text = ""
Clear_button.TextColor3 = Color3.fromRGB(0, 0, 0)
Clear_button.TextSize = 14.000

Clear_image.Name = "Clear_image"
Clear_image.Parent = Clear_button
Clear_image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Clear_image.BackgroundTransparency = 1.000
Clear_image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear_image.BorderSizePixel = 0
Clear_image.Position = UDim2.new(0.225806445, 0, 0.196496576, 0)
Clear_image.Size = UDim2.new(0, 17, 0, 18)
Clear_image.Image = "rbxassetid://120127860996365"

Paste_frame.Name = "Paste_frame"
Paste_frame.Parent = Main_Editor_frame
Paste_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Paste_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Paste_frame.BorderSizePixel = 0
Paste_frame.Position = UDim2.new(0.688524604, 0, 0.8577075, 0)
Paste_frame.Size = UDim2.new(0, 31, 0, 30)

UICorner_16.CornerRadius = UDim.new(0, 5)
UICorner_16.Parent = Paste_frame

UIStroke_15.Parent = Paste_frame
UIStroke_15.Color = Color3.fromRGB(57, 57, 57)

Paste_button.Name = "Paste_button"
Paste_button.Parent = Paste_frame
Paste_button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Paste_button.BackgroundTransparency = 1.000
Paste_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Paste_button.BorderSizePixel = 0
Paste_button.Size = UDim2.new(0, 31, 0, 30)
Paste_button.Font = Enum.Font.SourceSans
Paste_button.Text = ""
Paste_button.TextColor3 = Color3.fromRGB(0, 0, 0)
Paste_button.TextSize = 14.000

Paste_image.Name = "Paste_image"
Paste_image.Parent = Paste_button
Paste_image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Paste_image.BackgroundTransparency = 1.000
Paste_image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Paste_image.BorderSizePixel = 0
Paste_image.Position = UDim2.new(0.225806445, 0, 0.196496576, 0)
Paste_image.Size = UDim2.new(0, 17, 0, 18)
Paste_image.Image = "rbxassetid://82697895065869"

EditorScroll.Name = "EditorScroll"
EditorScroll.Parent = Main_Editor_frame
EditorScroll.Active = true
EditorScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EditorScroll.BackgroundTransparency = 1.000
EditorScroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
EditorScroll.BorderSizePixel = 0
EditorScroll.Position = UDim2.new(1.66762717e-07, 0, 0.0316205546, 0)
EditorScroll.Size = UDim2.new(0, 365, 0, 203)
EditorScroll.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
EditorScroll.ScrollBarThickness = 3

Editor_box.Name = "Editor_box"
Editor_box.Parent = EditorScroll
Editor_box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Editor_box.BackgroundTransparency = 1.000
Editor_box.BorderColor3 = Color3.fromRGB(0, 0, 0)
Editor_box.BorderSizePixel = 0
Editor_box.Position = UDim2.new(0.0301369857, 0, 0.0022345481, 0)
Editor_box.Size = UDim2.new(0, 354, 0, 229)
Editor_box.ClearTextOnFocus = false
Editor_box.Font = Enum.Font.SourceSans
Editor_box.MultiLine = true
Editor_box.Text = ""
Editor_box.TextColor3 = Color3.fromRGB(255, 255, 255)
Editor_box.TextSize = 11.000
Editor_box.TextWrapped = true
Editor_box.TextXAlignment = Enum.TextXAlignment.Left
Editor_box.TextYAlignment = Enum.TextYAlignment.Top

Main_Home_frame_2.Name = "Main_Home_frame"
Main_Home_frame_2.Parent = Editor_box
Main_Home_frame_2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Main_Home_frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main_Home_frame_2.BorderSizePixel = 0
Main_Home_frame_2.Position = UDim2.new(0.285440624, 0, 0.0266110133, 0)
Main_Home_frame_2.Size = UDim2.new(0, 366, 0, 253)
Main_Home_frame_2.Visible = false

UICorner_17.CornerRadius = UDim.new(0, 5)
UICorner_17.Parent = Main_Home_frame_2

UIStroke_16.Parent = Main_Home_frame_2
UIStroke_16.Color = Color3.fromRGB(57, 57, 57)

User_frame_2.Name = "User_frame"
User_frame_2.Parent = Main_Home_frame_2
User_frame_2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
User_frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
User_frame_2.BorderSizePixel = 0
User_frame_2.Position = UDim2.new(0.0340744592, 0, 0.0503263809, 0)
User_frame_2.Size = UDim2.new(0, 221, 0, 65)

UICorner_18.CornerRadius = UDim.new(0, 5)
UICorner_18.Parent = User_frame_2

User_image_2.Name = "User_image"
User_image_2.Parent = User_frame_2
User_image_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
User_image_2.BackgroundTransparency = 1.000
User_image_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
User_image_2.BorderSizePixel = 0
User_image_2.Position = UDim2.new(0.0452488698, 0, 0.107692309, 0)
User_image_2.Size = UDim2.new(0, 51, 0, 51)
User_image_2.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_19.CornerRadius = UDim.new(0, 5)
UICorner_19.Parent = User_image_2

UIStroke_17.Parent = User_frame_2
UIStroke_17.Color = Color3.fromRGB(57, 57, 57)

Username_frame_2.Name = "Username_frame"
Username_frame_2.Parent = User_frame_2
Username_frame_2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Username_frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Username_frame_2.BorderSizePixel = 0
Username_frame_2.Position = UDim2.new(0.355341434, 0, 0.0964801461, 0)
Username_frame_2.Size = UDim2.new(0, 127, 0, 23)

UICorner_20.CornerRadius = UDim.new(0, 5)
UICorner_20.Parent = Username_frame_2

UIStroke_18.Parent = Username_frame_2
UIStroke_18.Color = Color3.fromRGB(57, 57, 57)

Name_2.Name = "Name"
Name_2.Parent = Username_frame_2
Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_2.BackgroundTransparency = 1.000
Name_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_2.BorderSizePixel = 0
Name_2.Size = UDim2.new(0, 127, 0, 23)
Name_2.Font = Enum.Font.SourceSans
Name_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_2.TextSize = 11.000
Name_2.TextWrapped = true

UserId_frame_2.Name = "UserId_frame"
UserId_frame_2.Parent = User_frame_2
UserId_frame_2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
UserId_frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
UserId_frame_2.BorderSizePixel = 0
UserId_frame_2.Position = UDim2.new(0.44131428, 0, 0.588787854, 0)
UserId_frame_2.Size = UDim2.new(0, 89, 0, 17)

UICorner_21.CornerRadius = UDim.new(0, 5)
UICorner_21.Parent = UserId_frame_2

UIStroke_19.Parent = UserId_frame_2
UIStroke_19.Color = Color3.fromRGB(57, 57, 57)

UserId_2.Name = "UserId"
UserId_2.Parent = UserId_frame_2
UserId_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserId_2.BackgroundTransparency = 1.000
UserId_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
UserId_2.BorderSizePixel = 0
UserId_2.Position = UDim2.new(0, 0, 0.235294119, 0)
UserId_2.Size = UDim2.new(0, 89, 0, 9)
UserId_2.Font = Enum.Font.SourceSans
UserId_2.TextColor3 = Color3.fromRGB(255, 255, 255)
UserId_2.TextSize = 10.000
UserId_2.TextWrapped = true

Search_frame_2.Name = "Search_frame"
Search_frame_2.Parent = Main_Home_frame_2
Search_frame_2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Search_frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Search_frame_2.BorderSizePixel = 0
Search_frame_2.Position = UDim2.new(0.0340744592, 0, 0.343457967, 0)
Search_frame_2.Size = UDim2.new(0, 344, 0, 156)

UICorner_22.CornerRadius = UDim.new(0, 5)
UICorner_22.Parent = Search_frame_2

UIStroke_20.Parent = Search_frame_2
UIStroke_20.Color = Color3.fromRGB(57, 57, 57)

TextLabel_2.Parent = Search_frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0494186059, 0, 0.641025662, 0)
TextLabel_2.Size = UDim2.new(0, 309, 0, 11)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "If you encounter any bugs, please don’t hesitate to contact us."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000

Discord_frame_2.Name = "Discord_frame"
Discord_frame_2.Parent = Search_frame_2
Discord_frame_2.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Discord_frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Discord_frame_2.BorderSizePixel = 0
Discord_frame_2.Position = UDim2.new(0.327679127, 0, 0.772945106, 0)
Discord_frame_2.Size = UDim2.new(0, 114, 0, 25)

UICorner_23.CornerRadius = UDim.new(0, 5)
UICorner_23.Parent = Discord_frame_2

UIStroke_21.Parent = Discord_frame_2
UIStroke_21.Color = Color3.fromRGB(57, 57, 57)

Discord_button_2.Name = "Discord_button"
Discord_button_2.Parent = Discord_frame_2
Discord_button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discord_button_2.BackgroundTransparency = 1.000
Discord_button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Discord_button_2.BorderSizePixel = 0
Discord_button_2.Size = UDim2.new(0, 114, 0, 24)
Discord_button_2.Font = Enum.Font.SourceSans
Discord_button_2.Text = "Copy Discord URL"
Discord_button_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Discord_button_2.TextSize = 13.000

Rift_image_3.Name = "Rift_image"
Rift_image_3.Parent = Search_frame_2
Rift_image_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rift_image_3.BackgroundTransparency = 1.000
Rift_image_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Rift_image_3.BorderSizePixel = 0
Rift_image_3.Position = UDim2.new(0.35161075, 0, 0.0384615399, 0)
Rift_image_3.Size = UDim2.new(0, 100, 0, 94)
Rift_image_3.Image = "rbxassetid://135123682987938"

UICorner_24.CornerRadius = UDim.new(0, 5)
UICorner_24.Parent = MainFrame

Rift_frame.Name = "Rift_frame"
Rift_frame.Parent = Rift
Rift_frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Rift_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Rift_frame.BorderSizePixel = 0
Rift_frame.Position = UDim2.new(0.886150241, 0, 0.0305343512, 0)
Rift_frame.Size = UDim2.new(0, 38, 0, 37)
Rift_frame.Visible = false

UICorner_25.CornerRadius = UDim.new(1, 0)
UICorner_25.Parent = Rift_frame

UIStroke_22.Parent = Rift_frame
UIStroke_22.Color = Color3.fromRGB(57, 57, 57)

Rift_open.Name = "Rift_open"
Rift_open.Parent = Rift_frame
Rift_open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rift_open.BackgroundTransparency = 1.000
Rift_open.BorderColor3 = Color3.fromRGB(0, 0, 0)
Rift_open.BorderSizePixel = 0
Rift_open.Size = UDim2.new(0, 38, 0, 37)
Rift_open.Image = "rbxassetid://135123682987938"

-- Scripts:

local function VBAVQC_script() -- Editor_button.LocalScript 
	local script = Instance.new('LocalScript', Editor_button)

	local button = script.Parent
	local home = script.Parent.Parent.Parent.Parent.Interface.Main_Home_frame
	local editor = script.Parent.Parent.Parent.Parent.Interface.Main_Editor_frame
	local console = script.Parent.Parent.Parent.Parent.Interface.Main_Console_frame
	
	button.MouseButton1Click:Connect(function()
		home.Visible = false
		editor.Visible = true
		console.Visible = false
	end)
end
coroutine.wrap(VBAVQC_script)()
local function CLBU_script() -- Home_button.LocalScript 
	local script = Instance.new('LocalScript', Home_button)

	local button = script.Parent
	local home = script.Parent.Parent.Parent.Parent.Interface.Main_Home_frame
	local editor = script.Parent.Parent.Parent.Parent.Interface.Main_Editor_frame
	local console = script.Parent.Parent.Parent.Parent.Interface.Main_Console_frame
	
	button.MouseButton1Click:Connect(function()
		home.Visible = true
		editor.Visible = false
		console.Visible = false
	end)
end
coroutine.wrap(CLBU_script)()
local function LUULTG_script() -- Exit_button.LocalScript 
	local script = Instance.new('LocalScript', Exit_button)

	local button = script.Parent
	local open = script.Parent.Parent.Parent.Parent.Parent.Rift_frame
	local mainframe = script.Parent.Parent.Parent.Parent.Parent.MainFrame
	
	button.MouseButton1Click:Connect(function()
		open.Visible = true
		mainframe.Visible = false
	end)
end
coroutine.wrap(LUULTG_script)()
local function DARC_script() -- Console_button.LocalScript 
	local script = Instance.new('LocalScript', Console_button)

	local button = script.Parent
	local home = script.Parent.Parent.Parent.Parent.Interface.Main_Home_frame
	local editor = script.Parent.Parent.Parent.Parent.Interface.Main_Editor_frame
	local console = script.Parent.Parent.Parent.Parent.Interface.Main_Console_frame
	
	button.MouseButton1Click:Connect(function()
		home.Visible = false
		editor.Visible = false
		console.Visible = true
	end)
end
coroutine.wrap(DARC_script)()
local function XNYU_script() -- Console_scroll.LocalScript 
	local script = Instance.new('LocalScript', Console_scroll)

	local consoleFrame = script.Parent
	local layout = consoleFrame.UIListLayout
	
	local function updateCanvasSize()
		consoleFrame.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y)
	end
	
	local function addLog(message, messageType)
		local logLabel = Instance.new("TextLabel")
		logLabel.Size = UDim2.new(1, 0, 0, 20)
		logLabel.BackgroundTransparency = 1
		logLabel.Font = Enum.Font.Code
		logLabel.TextSize = 12
		logLabel.TextXAlignment = Enum.TextXAlignment.Left
		logLabel.TextWrapped = false
		logLabel.ClipsDescendants = true
	
		if messageType == Enum.MessageType.MessageOutput then
			logLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
		elseif messageType == Enum.MessageType.MessageWarning then
			logLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
		elseif messageType == Enum.MessageType.MessageError then
			logLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
		end
	
		logLabel.Text = message
		logLabel.Parent = consoleFrame
	
		updateCanvasSize()
	end
	
	game:GetService("LogService").MessageOut:Connect(function(message, messageType)
		addLog(message, messageType)
	end)
	
end
coroutine.wrap(XNYU_script)()
local function MYCPCFI_script() -- User_image.LocalScript 
	local script = Instance.new('LocalScript', User_image)

	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer
	local imageLabel = script.Parent
	
	local thumbType = Enum.ThumbnailType.HeadShot
	local thumbSize = Enum.ThumbnailSize.Size420x420
	
	local function updateAvatar()
		local content, isReady = Players:GetUserThumbnailAsync(localPlayer.UserId, thumbType, thumbSize)
		if isReady then
			imageLabel.Image = content
		else
			warn("Thumbnail not ready.")
		end
	end
	
	updateAvatar()
	
end
coroutine.wrap(MYCPCFI_script)()
local function KEINWUE_script() -- Name.LocalScript 
	local script = Instance.new('LocalScript', Name)

	local parent = script.Parent
	local user = game.Players.LocalPlayer
	local name = user.Name
	
	parent.Text = name
end
coroutine.wrap(KEINWUE_script)()
local function ZAYXSS_script() -- UserId.LocalScript 
	local script = Instance.new('LocalScript', UserId)

	local parent = script.Parent
	local user = game.Players.LocalPlayer
	local uid = user.UserId
	
	parent.Text = uid
end
coroutine.wrap(ZAYXSS_script)()
local function VSGY_script() -- Discord_button.LocalScript 
	local script = Instance.new('LocalScript', Discord_button)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		local url = "https://discord.com/invite/qHYpUczaPD"
		setclipboard(url)
	end)
end
coroutine.wrap(VSGY_script)()
local function XTWZDO_script() -- Execute_button.LocalScript 
	local script = Instance.new('LocalScript', Execute_button)

	local button = script.Parent
	local textbox = script.Parent.Parent.Parent.EditorScroll.Editor_box
	
	button.MouseButton1Click:Connect(function()
		local rawCode = textbox.Text:gsub("<[^>]->", "")
		local success, result = pcall(function()
			return loadstring(rawCode)()
		end)

		if not success then
			maketoast("An error occurred:\n" .. tostring(result))
		else
			maketoast("Script executed successfully.")
		end
	end)
end
coroutine.wrap(XTWZDO_script)()
local function UQUTNU_script() -- Clear_button.LocalScript 
	local script = Instance.new('LocalScript', Clear_button)

	local button = script.Parent
	local textbox = script.Parent.Parent.Parent.EditorScroll.Editor_box
	
	button.MouseButton1Click:Connect(function()
		textbox.Text = ""
	end)
end
coroutine.wrap(UQUTNU_script)()
local function ZAHAE_script() -- Paste_button.LocalScript 
	local script = Instance.new('LocalScript', Paste_button)

	local button = script.Parent
	local textbox = script.Parent.Parent.Parent.EditorScroll.Editor_box
	
	button.MouseButton1Click:Connect(function()
		textbox.Text = getclipboard()
	end)
end
coroutine.wrap(ZAHAE_script)()
local function ZHKNB_script() -- Editor_box.LocalScript 
	local script = Instance.new('LocalScript', Editor_box)

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
	
	textBox.Text = 'print("Welcome to Rift Android!")'
	updateHighlighting()
	
end
coroutine.wrap(ZHKNB_script)()
local function OZNO_script() -- User_image_2.LocalScript 
	local script = Instance.new('LocalScript', User_image_2)

	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer
	local imageLabel = script.Parent
	
	local thumbType = Enum.ThumbnailType.HeadShot
	local thumbSize = Enum.ThumbnailSize.Size420x420
	
	local function updateAvatar()
		local content, isReady = Players:GetUserThumbnailAsync(localPlayer.UserId, thumbType, thumbSize)
		if isReady then
			imageLabel.Image = content
		else
			warn("Thumbnail not ready.")
		end
	end
	
	updateAvatar()
	
end
coroutine.wrap(OZNO_script)()
local function AXDJO_script() -- Name_2.LocalScript 
	local script = Instance.new('LocalScript', Name_2)

	local parent = script.Parent
	local user = game.Players.LocalPlayer
	local name = user.Name
	
	parent.Text = name
end
coroutine.wrap(AXDJO_script)()
local function ZHPNL_script() -- UserId_2.LocalScript 
	local script = Instance.new('LocalScript', UserId_2)

	local parent = script.Parent
	local user = game.Players.LocalPlayer
	local uid = user.UserId
	
	parent.Text = uid
end
coroutine.wrap(ZHPNL_script)()
local function AELM_script() -- Discord_button_2.LocalScript 
	local script = Instance.new('LocalScript', Discord_button_2)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		local url = "https://discord.com/invite/qHYpUczaPD"
		setclipboard(url)
	end)
end
coroutine.wrap(AELM_script)()
local function HRBBMGJ_script() -- MainFrame.LocalScript 
	local script = Instance.new('LocalScript', MainFrame)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(HRBBMGJ_script)()
local function XATSV_script() -- Rift_open.LocalScript 
	local script = Instance.new('LocalScript', Rift_open)

	local button = script.Parent
	local open = script.Parent.Parent.Parent.Rift_frame
	local mainframe = script.Parent.Parent.Parent.MainFrame
	
	button.MouseButton1Click:Connect(function()
		open.Visible = false
		mainframe.Visible = true
	end)
end
coroutine.wrap(XATSV_script)()
