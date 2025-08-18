-- # UI is kinda fucked up, UIStrokes vanished lol
-- # Config
local IS_KEYLESS = true
local UI_URL = "https://raw.githubusercontent.com/Spongebob-ass/Spongebob/refs/heads/main/rift-android-beta.lua"
local KEY_LIB_URL = "https://raw.githubusercontent.com/nathzzi/Rift-Android/refs/heads/main/keyguardian/keyguardianlibrary.lua"

local TRUE_DATA = "5143f840f651404ca653fb30b6813fa4"
local FALSE_DATA = "b10102ef61c541b3b6600246efa44b72"
local PUBLIC_TOKEN = "e423a2fdba5842a68919e6f8fb714064"
local PRIVATE_TOKEN = "930ecef53c674a3bb5bca1576577716f"

-- # File name
local KEY_FILE = "RiftKey.lua"

-- # Utils
local function loadUI()
    maketoast("Loading Rift UI...")
    task.wait(3)
    loadstring(game:HttpGet(UI_URL))()
end

local function clearTextBoxAfter(textBox, delayTime)
    task.delay(delayTime or 1, function()
        textBox.Text = ""
    end)
end

-- # Keyless checker
if IS_KEYLESS then
    maketoast("Rift is currently keyless, loading UI...")
    task.wait(1)
    return loadUI()
end

local KeyGuardLibrary = loadstring(game:HttpGet(KEY_LIB_URL))()
KeyGuardLibrary.Set({
    publicToken = PUBLIC_TOKEN,
    privateToken = PRIVATE_TOKEN,
    trueData = TRUE_DATA,
    falseData = FALSE_DATA
})

-- # Saved key checker
if isfile(KEY_FILE) then
    local savedKey = readfile(KEY_FILE)
    if KeyGuardLibrary.validateDefaultKey(savedKey) == TRUE_DATA 
    or KeyGuardLibrary.validatePremiumKey(savedKey) == TRUE_DATA then
        maketoast("Saved key validated, loading UI...")
        return loadUI()
    end
end

local function createKeyUI()
    local gui = Instance.new("ScreenGui")
    gui.Name = "Rift_KeyUI"
    gui.Parent = cloneref(gethui())
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local frame = Instance.new("Frame")
    frame.Name = "MainFrame"
    frame.Parent = gui
    frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    frame.Position = UDim2.new(0.34, 0, 0.28, 0)
    frame.Size = UDim2.new(0, 270, 0, 166)
    Instance.new("UICorner", frame)

    local title = Instance.new("TextLabel")
    title.Parent = frame
    title.BackgroundTransparency = 1
    title.Position = UDim2.new(0.23, 0, 0.08, 0)
    title.Size = UDim2.new(0, 145, 0, 15)
    title.Font = Enum.Font.Ubuntu
    title.Text = "Rift Android | Key System"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 14

    local textboxFrame = Instance.new("Frame")
    textboxFrame.Parent = frame
    textboxFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    textboxFrame.Position = UDim2.new(0.03, 0, 0.27, 0)
    textboxFrame.Size = UDim2.new(0, 254, 0, 29)
    Instance.new("UICorner", textboxFrame).CornerRadius = UDim.new(0, 5)
    Instance.new("UIStroke", textboxFrame).Color = Color3.fromRGB(57, 57, 57)

    local keyTextbox = Instance.new("TextBox")
    keyTextbox.Parent = textboxFrame
    keyTextbox.BackgroundTransparency = 1
    keyTextbox.Size = UDim2.new(1, 0, 1, 0)
    keyTextbox.ClearTextOnFocus = false
    keyTextbox.Font = Enum.Font.SourceSans
    keyTextbox.PlaceholderText = "Enter your key..."
    keyTextbox.Text = ""
    keyTextbox.TextColor3 = Color3.fromRGB(194, 194, 194)
    keyTextbox.TextSize = 14

    local validateBtn = Instance.new("TextButton")
    validateBtn.Parent = frame
    validateBtn.Position = UDim2.new(0.03, 0, 0.54, 0)
    validateBtn.Size = UDim2.new(0, 123, 0, 29)
    validateBtn.BackgroundTransparency = 1
    validateBtn.Text = "Validate Key"
    validateBtn.Font = Enum.Font.SourceSans
    validateBtn.TextColor3 = Color3.fromRGB(194, 194, 194)
    validateBtn.TextSize = 14
    validateBtn.MouseButton1Click:Connect(function()
        local key = keyTextbox.Text
        local isValidDefault = KeyGuardLibrary.validateDefaultKey(key) == TRUE_DATA
        local isValidPremium = KeyGuardLibrary.validatePremiumKey(key) == TRUE_DATA

        if isValidDefault or isValidPremium then
            writefile(KEY_FILE, key)
            gui:Destroy()
            maketoast(isValidPremium and "Premium key validated!" or "Key validated!")
            loadUI()
        else
            maketoast("Invalid key, please try again.")
            clearTextBoxAfter(keyTextbox)
        end
    end)

    local getKeyBtn = Instance.new("TextButton")
    getKeyBtn.Parent = frame
    getKeyBtn.Position = UDim2.new(0.515, 0, 0.54, 0)
    getKeyBtn.Size = UDim2.new(0, 123, 0, 29)
    getKeyBtn.BackgroundTransparency = 1
    getKeyBtn.Text = "Get Key"
    getKeyBtn.Font = Enum.Font.SourceSans
    getKeyBtn.TextColor3 = Color3.fromRGB(194, 194, 194)
    getKeyBtn.TextSize = 14
    getKeyBtn.MouseButton1Click:Connect(function()
        setclipboard(KeyGuardLibrary.getLink())
        keyTextbox.Text = "Link copied!"
        clearTextBoxAfter(keyTextbox)
    end)

    local joinBtn = Instance.new("TextButton")
    joinBtn.Parent = frame
    joinBtn.Position = UDim2.new(0.27, 0, 0.76, 0)
    joinBtn.Size = UDim2.new(0, 123, 0, 29)
    joinBtn.BackgroundTransparency = 1
    joinBtn.Text = "Join Regular Roblox"
    joinBtn.Font = Enum.Font.SourceSans
    joinBtn.TextColor3 = Color3.fromRGB(194, 194, 194)
    joinBtn.TextSize = 14
    joinBtn.MouseButton1Click:Connect(function()
        maketoast("Rejoin the game to show the key system again.")
        gui:Destroy()
    end)
end

-- # Load the key system interface
createKeyUI()
