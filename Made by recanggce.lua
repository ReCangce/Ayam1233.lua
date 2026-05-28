-- Neo Executor Final Fixed
local ScreenGui = Instance.new("ScreenGui")
local KeyFrame = Instance.new("Frame")
local MainFrame = Instance.new("Frame")
local ToggleButton = Instance.new("TextButton")
local UICornerBtn = Instance.new("UICorner")

-- Warna Neo Green
local NeonGreen = Color3.fromRGB(57, 255, 20)
local DarkBg = Color3.fromRGB(15, 15, 15)
local GrayBg = Color3.fromRGB(30, 30, 30)

-- Setup Parent
ScreenGui.Name = "Game Hacks EWL"
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

-- Variabel Key
local correctKey = "lol"

-- Helper: Bikin Sudut Bulat
local function addCorner(parent, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = radius or UDim.new(0, 8)
    corner.Parent = parent
end

-----------------------------------------------------------
-- [1] UI KEY SYSTEM
-----------------------------------------------------------
KeyFrame.Name = "KeyFrame"
KeyFrame.Parent = ScreenGui
KeyFrame.BackgroundColor3 = DarkBg
KeyFrame.Position = UDim2.new(0.5, -100, 0.4, -50)
KeyFrame.Size = UDim2.new(0, 200, 0, 110)
KeyFrame.Active = true
KeyFrame.Draggable = true
addCorner(KeyFrame)

local KeyTitle = Instance.new("TextLabel", KeyFrame)
KeyTitle.Size = UDim2.new(1, 0, 0, 30)
KeyTitle.Text = "SECURITY CHECK"
KeyTitle.TextColor3 = NeonGreen
KeyTitle.BackgroundColor3 = GrayBg
KeyTitle.Font = Enum.Font.GothamBold
addCorner(KeyTitle)

local KeyInput = Instance.new("TextBox", KeyFrame)
KeyInput.Size = UDim2.new(0.8, 0, 0, 30)
KeyInput.Position = UDim2.new(0.1, 0, 0.4, 0)
KeyInput.PlaceholderText = "Masukkan Key"
KeyInput.Text = ""
KeyInput.BackgroundColor3 = GrayBg
KeyInput.TextColor3 = Color3.new(1, 1, 1)
addCorner(KeyInput)

local KeySubmit = Instance.new("TextButton", KeyFrame)
KeySubmit.Size = UDim2.new(0.6, 0, 0, 25)
KeySubmit.Position = UDim2.new(0.2, 0, 0.75, 0)
KeySubmit.Text = "UNLOCK"
KeySubmit.BackgroundColor3 = NeonGreen
KeySubmit.TextColor3 = DarkBg
KeySubmit.Font = Enum.Font.GothamBold
addCorner(KeySubmit)

-----------------------------------------------------------
-- [2] SETUP MAIN GUI
-----------------------------------------------------------
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = DarkBg
MainFrame.Position = UDim2.new(0.5, -100, 0.4, -75)
MainFrame.Size = UDim2.new(0, 200, 0, 160)
MainFrame.Visible = false
MainFrame.Active = true
MainFrame.Draggable = true
addCorner(MainFrame)

local Border = Instance.new("Frame", MainFrame)
Border.Size = UDim2.new(1, 2, 1, 2)
Border.Position = UDim2.new(0, -1, 0, -1)
Border.BackgroundColor3 = NeonGreen
Border.ZIndex = -1
addCorner(Border)

local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = GrayBg
Title.Text = "EWL EXECUTOR"
Title.TextColor3 = NeonGreen
Title.Font = Enum.Font.GothamBold
addCorner(Title)

local ScrollFrame = Instance.new("ScrollingFrame", MainFrame)
ScrollFrame.Position = UDim2.new(0, 5, 0, 35)
ScrollFrame.Size = UDim2.new(1, -10, 1, -40)
ScrollFrame.BackgroundTransparency = 1
ScrollFrame.CanvasSize = UDim2.new(0, 0, 3.5, 0)
ScrollFrame.ScrollBarThickness = 3
ScrollFrame.ScrollBarImageColor3 = NeonGreen

local UIListLayout = Instance.new("UIListLayout", ScrollFrame)
UIListLayout.Padding = UDim.new(0, 6)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

ToggleButton.Parent = ScreenGui
ToggleButton.Size = UDim2.new(0, 45, 0, 45)
ToggleButton.Position = UDim2.new(0, 15, 0.5, 0)
ToggleButton.Text = "NEO"
ToggleButton.Font = Enum.Font.GothamBold
ToggleButton.BackgroundColor3 = DarkBg
ToggleButton.TextColor3 = NeonGreen
ToggleButton.Visible = false
ToggleButton.Draggable = true
addCorner(ToggleButton, UDim.new(1, 0))
local ToggleStroke = Instance.new("UIStroke", ToggleButton)
ToggleStroke.Color = NeonGreen
ToggleStroke.Thickness = 2

-----------------------------------------------------------
-- [3] LOGIKA & TABS
-----------------------------------------------------------
KeySubmit.MouseButton1Click:Connect(function()
    if KeyInput.Text == correctKey then
        KeyFrame:Destroy()
        MainFrame.Visible = true
        ToggleButton.Visible = true
    else
        KeySubmit.Text = "DENIED"
        KeySubmit.BackgroundColor3 = Color3.new(1, 0, 0)
        task.wait(1)
        KeySubmit.Text = "UNLOCK"
        KeySubmit.BackgroundColor3 = NeonGreen
    end
end)

ToggleButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

local function createTab(name, scriptCallback)
    local Button = Instance.new("TextButton", ScrollFrame)
    Button.Size = UDim2.new(0, 180, 0, 32)
    Button.BackgroundColor3 = GrayBg
    Button.Text = name
    Button.TextColor3 = Color3.new(1, 1, 1)
    Button.Font = Enum.Font.Gotham
    addCorner(Button)
    local Stroke = Instance.new("UIStroke", Button)
    Stroke.Color = NeonGreen
    Stroke.Thickness = 0.5
    Button.MouseButton1Click:Connect(scriptCallback)
end

-- TABS
createTab("Infinite Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

createTab("99 Night", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/FoxnameHub.lua"))()
end)

-- Tombol tetep ada, tapi fungsi di dalemnya udah kosong melompong
createTab("Bake or Die", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hinnioss/JAF/refs/heads/main/Hzt.txt"))()
end)

createTab("NPC or Die", function()
    --[[
    WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--CONFIG
local TOGGLE_KEY = Enum.KeyCode.K 
local SHOW_NAME = true 
local OUTLINE_COLOR = Color3.fromRGB(0, 255, 127) 

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local TAG_NAME = "RealPlayerESP_V2"
local enabled = true 

--ESP
local function createESP(model, name)
    if not model:FindFirstChild(TAG_NAME) then
        local folder = Instance.new("Folder")
        folder.Name = TAG_NAME
        folder.Parent = model

        local hl = Instance.new("Highlight")
        hl.Name = "Outline"
        hl.FillTransparency = 1 
        hl.OutlineColor = OUTLINE_COLOR
        hl.OutlineTransparency = 0
        hl.Parent = folder

        if SHOW_NAME then
            local bgui = Instance.new("BillboardGui")
            bgui.Name = "NameTag"
            bgui.Adornee = model:FindFirstChild("Head")
            bgui.Size = UDim2.new(0, 100, 0, 50)
            bgui.StudsOffset = Vector3.new(0, 3, 0)
            bgui.AlwaysOnTop = true
            
            local tl = Instance.new("TextLabel")
            tl.BackgroundTransparency = 1
            tl.Size = UDim2.new(1, 0, 1, 0)
            tl.Text = "[REAL] " .. name
            tl.TextColor3 = OUTLINE_COLOR
            tl.TextStrokeTransparency = 0
            tl.TextScaled = true
            tl.Font = Enum.Font.SourceSansBold
            tl.Parent = bgui
            bgui.Parent = folder
        end
    end
end

local function clearAllESP()
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character then
            local tag = player.Character:FindFirstChild(TAG_NAME)
            if tag then tag:Destroy() end
        end
    end
end

local staminaHooked = false
local function activateInfStamina()
    local found = false
    for _, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "StaminaPercentage") and rawget(v, "RegenRate") then
            task.spawn(function()
                while v and v.StaminaPercentage do
                    v.StaminaPercentage = 100
                    task.wait(0.1)
                end
                staminaHooked = false 
            end)

            if v.AttemptChunkBurn then
                v.AttemptChunkBurn = function() return true end
            end
            v.Usable = false 
            found = true
            staminaHooked = true
            print("Infinite Stamina: Hooked Successfully!")
            break
        end
    end
    return found
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == TOGGLE_KEY then
        enabled = not enabled
        if not enabled then
            clearAllESP()
            print("ESP Disabled")
        else
            print("ESP Enabled")
        end
    end
end)

task.spawn(function()
    while true do
        if enabled then
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character and player.Character:IsDescendantOf(workspace) then
                    createESP(player.Character, player.Name)
                end
            end
        end
        
        if not staminaHooked then
            activateInfStamina()
        end
        task.wait(2) 
    end
end)
end)

createTab("Survive Apocalypse", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Notzephyr/UIX/refs/heads/main/Zombie.lua"))()
end)

createTab("Brookhaven", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/kigredns/testUIDK/refs/heads/main/panel.lua"))()
end)
