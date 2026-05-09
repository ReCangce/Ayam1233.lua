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
local correctKey = "LijayaSigma77"

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
ScrollFrame.CanvasSize = UDim2.new(0, 0, 3.5, 0) -- Kanvas panjang biar muat banyak
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
        
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/nightsintheforest.lua", true))()
end)

createTab("Bake or Die", function()

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Bake or Die",
   LoadingTitle = "Bake or Die Interface",
   LoadingSubtitle = "Loaded Successfully",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "BakeOrDie",
      FileName = "BakeConfig"
   },
   Discord = {
      Enabled = false,
      RememberJoins = true
   },
   KeySystem = false,
})

-- Load ZAP module
local ZAP = require(game:GetService("ReplicatedStorage").Client.ClientRemotes)

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- ESP Variables
local ESPFolder = Instance.new("Folder")
ESPFolder.Name = "ESP"
ESPFolder.Parent = game.CoreGui

-- ESP Settings
local ESPConfig = {
    MonsterESP = false,
    ItemESP = false,
    ShowNames = true,
    ShowDistance = true,
    ShowHighlight = true
}

-- Combat Tab
local CombatTab = Window:CreateTab("Combat", 4483362458)

local CombatSection = CombatTab:CreateSection("Kill Aura")

local KillAuraToggle = CombatTab:CreateToggle({
   Name = "Kill Aura",
   CurrentValue = false,
   Flag = "KillAuraToggle",
   Callback = function(Value)
      _G.KillAuraEnabled = Value
   end,
})

local AuraDistanceSlider = CombatTab:CreateSlider({
   Name = "Kill Aura Distance",
   Range = {10, 50},
   Increment = 5,
   Suffix = "Studs",
   CurrentValue = 25,
   Flag = "AuraDistance",
   Callback = function(Value)
      _G.AuraDistance = Value
   end,
})

local KillAllButton = CombatTab:CreateButton({
   Name = "Kill All Zombies",
   Callback = function()
      local character = Players.LocalPlayer.Character
      if character and character:FindFirstChild("HumanoidRootPart") then
          for _, monster in pairs(workspace.Monsters:GetChildren()) do
              if monster:FindFirstChild("HumanoidRootPart") then
                  ZAP.meleeAttack.fire({
                      monsters = {monster},
                      civilians = {},
                      activeSlot = _G.WeaponSlot or 2
                  })
                  task.wait(0.1)
              end
          end
      end
   end,
})

-- Items Tab
local ItemsTab = Window:CreateTab("Items", 4483362458)

local ItemsSection = ItemsTab:CreateSection("Item Management")

local BringBodiesButton = ItemsTab:CreateButton({
   Name = "Bring Bodies",
   Callback = function()
      local character = Players.LocalPlayer.Character
      if character and character.PrimaryPart then
          for _, v in pairs(workspace.Interactables:GetChildren()) do 
              if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and not v:FindFirstChild("ProductPriceTag") then
                  v.PrimaryPart.CFrame = character.PrimaryPart.CFrame
                  task.wait(0.05)
              end
          end
      end
   end,
})

local BringAllItemsButton = ItemsTab:CreateButton({
   Name = "Bring All Items",
   Callback = function()
      local character = Players.LocalPlayer.Character
      if character and character.PrimaryPart then
          for _, v in pairs(workspace.Interactables:GetChildren()) do 
              if v:IsA("Model") and not v:FindFirstChild("ProductPriceTag") and v.PrimaryPart then
                  v.PrimaryPart.CFrame = character.PrimaryPart.CFrame
                  task.wait(0.05)
              end
          end
      end
   end,
})

-- Player Tab
local PlayerTab = Window:CreateTab("Player", 4483362458)

local PlayerSection = PlayerTab:CreateSection("Character Settings")

local WalkSpeedSlider = PlayerTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 200},
   Increment = 5,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "WalkSpeed",
   Callback = function(Value)
      _G.WalkSpeed = Value
      local character = Players.LocalPlayer.Character
      if character and character:FindFirstChild("Humanoid") then
          character.Humanoid.WalkSpeed = Value
      end
   end,
})

local JumpPowerSlider = PlayerTab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 200},
   Increment = 10,
   Suffix = "Power",
   CurrentValue = 50,
   Flag = "JumpPower",
   Callback = function(Value)
      _G.JumpPower = Value
      local character = Players.LocalPlayer.Character
      if character and character:FindFirstChild("Humanoid") then
          character.Humanoid.JumpPower = Value
      end
   end,
})

local SlotDropdown = PlayerTab:CreateDropdown({
   Name = "Weapon Slot",
   Options = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"},
   CurrentOption = "2",
   Flag = "WeaponSlot",
   Callback = function(Option)
      _G.WeaponSlot = tonumber(Option)
   end,
})

-- ESP Tab
local ESPTab = Window:CreateTab("ESP", 4483362458)

local ESPSection = ESPTab:CreateSection("ESP Types")

local MonsterESPToggle = ESPTab:CreateToggle({
   Name = "Monster ESP",
   CurrentValue = false,
   Flag = "MonsterESP",
   Callback = function(Value)
      ESPConfig.MonsterESP = Value
      UpdateESP()
   end,
})

local ItemESPToggle = ESPTab:CreateToggle({
   Name = "Item ESP",
   CurrentValue = false,
   Flag = "ItemESP",
   Callback = function(Value)
      ESPConfig.ItemESP = Value
      UpdateESP()
   end,
})

local ESPSettingsSection = ESPTab:CreateSection("ESP Settings")

local ShowNamesToggle = ESPTab:CreateToggle({
   Name = "Show Names",
   CurrentValue = true,
   Flag = "ShowNames",
   Callback = function(Value)
      ESPConfig.ShowNames = Value
      UpdateESP()
   end,
})

local ShowDistanceToggle = ESPTab:CreateToggle({
   Name = "Show Distance",
   CurrentValue = true,
   Flag = "ShowDistance",
   Callback = function(Value)
      ESPConfig.ShowDistance = Value
      UpdateESP()
   end,
})

local ShowHighlightToggle = ESPTab:CreateToggle({
   Name = "Show Highlight",
   CurrentValue = true,
   Flag = "ShowHighlight",
   Callback = function(Value)
      ESPConfig.ShowHighlight = Value
      UpdateESP()
   end,
})

-- ESP Functions
function CreateESP(part, color, name, distance)
    local espGroup = {}
    
    -- Billboard GUI for text
    if ESPConfig.ShowNames or ESPConfig.ShowDistance then
        local billboard = Instance.new("BillboardGui")
        billboard.Name = name .. "_Billboard"
        billboard.Adornee = part
        billboard.Size = UDim2.new(0, 200, 0, 50)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.AlwaysOnTop = true
        billboard.Parent = ESPFolder
        
        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.Text = ""
        
        if ESPConfig.ShowNames and ESPConfig.ShowDistance then
            textLabel.Text = name .. "\n" .. math.floor(distance) .. " studs"
        elseif ESPConfig.ShowNames then
            textLabel.Text = name
        elseif ESPConfig.ShowDistance then
            textLabel.Text = math.floor(distance) .. " studs"
        end
        
        textLabel.TextColor3 = color
        textLabel.TextSize = 14
        textLabel.Font = Enum.Font.GothamBold
        textLabel.TextStrokeTransparency = 0
        textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
        textLabel.Parent = billboard
        
        table.insert(espGroup, billboard)
    end
    
    -- Highlight
    if ESPConfig.ShowHighlight then
        local highlight = Instance.new("Highlight")
        highlight.Name = name .. "_Highlight"
        highlight.Adornee = part
        highlight.FillColor = color
        highlight.OutlineColor = Color3.new(1, 1, 1)
        highlight.FillTransparency = 0.3
        highlight.OutlineTransparency = 0
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.Parent = ESPFolder
        table.insert(espGroup, highlight)
    end
    
    return espGroup
end

function ClearESP()
    for _, child in pairs(ESPFolder:GetChildren()) do
        child:Destroy()
    end
end

function UpdateESP()
    ClearESP()
    
    local character = Players.LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    local playerRoot = character.HumanoidRootPart
    
    -- Monster ESP
    if ESPConfig.MonsterESP then
        for _, monster in pairs(workspace.Monsters:GetChildren()) do
            if monster:IsA("Model") then
                -- Try to find any valid part for highlighting
                local targetPart = monster:FindFirstChild("HumanoidRootPart") or monster:FindFirstChild("Head") or monster.PrimaryPart
                if targetPart then
                    local distance = (playerRoot.Position - targetPart.Position).Magnitude
                    CreateESP(targetPart, Color3.fromRGB(255, 50, 50), "Monster: " .. monster.Name, distance)
                end
            end
        end
    end
    
    -- Item ESP (Bodies and Items)
    if ESPConfig.ItemESP then
        for _, item in pairs(workspace.Interactables:GetChildren()) do
            if item:IsA("Model") then
                -- Check if it's a body (has HumanoidRootPart) or regular item (no price tag)
                local isBody = item:FindFirstChild("HumanoidRootPart")
                local isItem = not item:FindFirstChild("ProductPriceTag")
                
                if isBody or isItem then
                    local targetPart = item:FindFirstChild("HumanoidRootPart") or item.PrimaryPart
                    if targetPart then
                        local distance = (playerRoot.Position - targetPart.Position).Magnitude
                        local espName = isBody and "Body: " .. item.Name or "Item: " .. item.Name
                        local espColor = isBody and Color3.fromRGB(255, 165, 0) or Color3.fromRGB(50, 255, 50)
                        CreateESP(targetPart, espColor, espName, distance)
                    end
                end
            end
        end
    end
end

-- Info Tab
local InfoTab = Window:CreateTab("Info", 4483362458)

local InfoSection = InfoTab:CreateSection("Information")

local InfoParagraph = InfoTab:CreateParagraph({
   Title = "Bake or Die Script", 
   Content = "• Kill Aura with adjustable distance\n• Kill All Zombies button\n• Bring Bodies & Items\n• WalkSpeed & JumpPower sliders\n• Monster & Item ESP (can be both on)\n• ESP Settings: Names, Distance, Highlight\n• Weapon slot selection"
})

-- Kill Aura Loop
task.spawn(function()
    while true do
        task.wait()
        if _G.KillAuraEnabled then
            local character = Players.LocalPlayer.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local root = character.HumanoidRootPart
                local slot = _G.WeaponSlot or 2
                local distance = _G.AuraDistance or 25
                
                for _, monster in pairs(workspace.Monsters:GetChildren()) do
                    if monster:FindFirstChild("HumanoidRootPart") then
                        local monsterDistance = (root.Position - monster.HumanoidRootPart.Position).Magnitude
                        if monsterDistance < distance then
                            ZAP.meleeAttack.fire({
                                monsters = {monster},
                                civilians = {},
                                activeSlot = slot
                            })
                            break
                        end
                    end
                end
            end
        end
    end
end)

-- Character Stats Loop
task.spawn(function()
    while true do
        task.wait(1)
        local character = Players.LocalPlayer.Character
        if character and character:FindFirstChild("Humanoid") then
            if _G.WalkSpeed then
                character.Humanoid.WalkSpeed = _G.WalkSpeed
            end
            if _G.JumpPower then
                character.Humanoid.JumpPower = _G.JumpPower
            end
        end
    end
end)

-- ESP Update Loop
task.spawn(function()
    while true do
        task.wait(0.5)
        if ESPConfig.MonsterESP or ESPConfig.ItemESP then
            UpdateESP()
        else
            ClearESP()
        end
    end
end)

-- Notification
Rayfield:Notify({
   Title = "Bake or Die Script Loaded",
   Content = "All features are now available!",
   Duration = 5,
   Image = 4483362458,
   Actions = {
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("Bake or Die Script is ready!")
      end
   },
},
})
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

createTab("Krystal Dance", function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- DONT SKIDI
-- RUN LIMB REANIM NOTI
game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Limb Reanim V2";
	Text = "ENJOY!";
	Icon = "rbxthumb://type=Asset&id=13775452736&w=150&h=150";
    Duration = 15;
})

-- mobile support
if game:GetService("UserInputService").TouchEnabled then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/uuuuuuu/refs/heads/main/VirtualKeyboard.lua"))();
end

-- SETTINGS --
local settings = _G

settings["Use default animations"] = true
settings["Fake character transparency level"] = 1 -- 0 to disable
settings["Disable character scripts"] = true
settings["Fake character should collide"] = true
settings["Parent real character to fake character"] = false
settings["Respawn character"] = true --[[ only should be disabled if
your character havent played ANY animations, otherwise it breaks the reanimate ]]
settings["Instant respawn"] = false --[[ Instant respawns the
character, it will still wait the respawn time, but your character wont be dead.
Requires: replicatesignal function
Enable if you want the feature
]]
settings["Hide HumanoidRootPart"] = false --[[ Enabled by default. when enabled, your chat bubble or name tag
will not appear above your character, but you will have your character immortal in the Fencing arena.
]]
settings["Hide HumanoidRootPart"] = false --[[ Enabled by default. when enabled, your chat bubble or name tag
will not appear above your character, but you will have your character immortal in the Fencing arena.
]]
settings["PermaDeath fake character"] = false --[[When enabled, when you die when the reanimate is on, you
wont respawn. If you want respawn, set it to false
]]

settings["Names to exclude from transparency"] = {
    --[[ example:
    ["HumanoidRootPart"] = true,
    ["Left Arm"] = true
    ]]
}
(function() if getgenv then return getgenv() else return _G end end)().fling = nil
local finished = false

task.spawn(function()
--[[
  Licensed under the MIT License (see LICENSE file for full details).
  Copyright (c) 2025 MrY7zz

  LEGAL NOTICE:
  You are REQUIRED to retain this license header under the terms of the MIT License.
  Removing or modifying this notice may violate copyright law.
]]
--// BY MrY7zz

if not game.IsLoaded then
	game.Loaded:Wait()
end

if not sethiddenproperty then
	--error("Script is only compatible with environments that have sethiddenproperty")
task.spawn(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/somethingsimade/CurrentAngleV2/refs/heads/main/fallback.lua"))()
end)
repeat task.wait() until finished == true
	return
end

local UI = (gethui and gethui()) or (cloneref and cloneref(game:GetService("CoreGui"))) or (pcall(function() return game:GetService("CoreGui").Parent end) and game:GetService("CoreGui")) or game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui")

local function LoadUi(seconds)
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIGradient = Instance.new("UIGradient")
	local UIStroke = Instance.new("UIStroke")
	local UIStroke_2 = Instance.new("UIStroke")
	local UIStroke_3 = Instance.new("UIStroke")
	local TextLabel = Instance.new("TextLabel")
	local TextLabel_2 = Instance.new("TextLabel")
	ScreenGui.IgnoreGuiInset = true

	ScreenGui.Parent = UI
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Size = UDim2.new(0, 429, 0, 79)
    Frame.Position = UDim2.new(0.5, -Frame.Size.X.Offset/2, 0.01, 0)
	UIStroke.Parent = Frame

	UIStroke_2.Color = Color3.fromRGB(65, 65, 65)
	UIStroke_3.Color = Color3.fromRGB(65, 65, 65)

	UICorner.Parent = Frame

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(79, 173, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 127, 179))}
	UIGradient.Rotation = 40
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.07, 0.13), NumberSequenceKeypoint.new(1.00, 0.00)}
	UIGradient.Parent = Frame

	UIStroke_3.Thickness = 0.7

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.265734255, 0, 0, 0)
	TextLabel.Size = UDim2.new(0, 200, 0, 50)
	TextLabel.Font = Enum.Font.BuilderSans
	TextLabel.Text = "MrY7zz's CurrentAngle V2 REANIMATE BY MrY7zz"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 20.000
	UIStroke_2.Parent = TextLabel

	TextLabel_2.Parent = Frame
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Position = UDim2.new(-0.08, 0, 0.367088616, 0)
	TextLabel_2.Size = UDim2.new(0, 500, 0, 50)
	TextLabel_2.Font = Enum.Font.BuilderSans
	TextLabel_2.Text = tostring(seconds) .. " Seconds left for reanimate to load"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextSize = 28.000

	UIStroke_3.Parent = TextLabel_2
    task.delay(seconds + 1.5, function()
        ScreenGui:Destroy()
    end)
end

local setsimulationradius = setsimulationradius
if not setsimulationradius then
	-- setsimulationradius.lua
-- © 2025 MrY7zz (MIT License)

local Players = game:GetService("Players")

local newIndex
local Index

--// Extracting __newindex
xpcall(function()
	game[{}] = {}
end, function()
	newIndex = debug.info(2, "f")
end)

--// Extracting __index
xpcall(function()
	return game[{}]
end, function()
	Index = debug.info(2, "f")
end)


setsimulationradius = function(Radius, maxRadius)
	local LocalPlayer = Index(Players, "LocalPlayer")
	newIndex(LocalPlayer, "SimulationRadius", Radius)
	
	if maxRadius then
		newIndex(LocalPlayer, "MaximumSimulationRadius", maxRadius)
	end
end
end

local game = game
local debug = debug
local debug_info = debug.info

local gameIndex
local gameNewIndex
local CFrameIndex

local emptyCFrame = CFrame.new()

local getrawmetatableworks = false
local isindexsupported = false

if getrawmetatable then
	local s, r = pcall(getrawmetatable, game)
	local success, res = pcall(getrawmetatable, emptyCFrame)

	if s then  
		if r.__index then
			gameIndex = r.__index
			gameNewIndex = r.__newindex
			getrawmetatableworks = true
		end
	end
	if success and s then
		if res.__index then
			CFrameIndex = res.__index
		end
	end
end

if not getrawmetatableworks then
	xpcall(function()
		return game[{}]
	end, function()
		gameIndex = debug_info(2, "f")
	end)

	xpcall(function()
		game[{}] = {}
	end, function()
		gameNewIndex = debug_info(2, "f")
	end)

	xpcall(function()
		return emptyCFrame[{}]
	end, function()
		CFrameIndex = debug_info(2, "f")
	end)
end

local successtest, err = pcall(function()
	return gameIndex(game:GetService("Workspace"), "Parent")
end)

if not successtest then
	if string.find(err:lower(), "instance expected") then
		isindexsupported = false
	else
		isindexsupported = true
	end
else
	isindexsupported = true
end

if not gameIndex then
	gameIndex = function(self, key)
		return self[key]
	end
end

if not gameNewIndex then
	gameNewIndex = function(self, key, new)
		self[key] = new
	end
end

if not CFrameIndex then
	CFrameIndex = function(self, key, new)
		self[key] = new
	end
end

local zeropointone = 0.1
local twait = task.wait
local tspawn = task.spawn
local currentfakechar = nil
local vector3zero = Vector3.zero
local getgenv = getgenv or function()
	return _G
end

local NaN = 0/0

local dummypart = Instance.new("Part")

local GetDescendants = dummypart.GetDescendants
local IsA = dummypart.IsA
local Destroy = dummypart.Destroy

local math_random = math.random
local Vector3_new = Vector3.new

local usedefaultanims = _G["Use default animations"] or false

local transparency_level = _G["Fake character transparency level"] or 1

local disablescripts = _G["Disable character scripts"] or true

local fakecollisions = _G["Fake character should collide"] or true

local nametoexcludefromtransparency = _G["Names to exclude from transparency"] or {}

local parentrealchartofakechar = _G["Parent real character to fake character"] or false

local respawncharacter = (function() if _G["Respawn character"] == nil then return true else return _G["Respawn character"] end end)()

local instantrespawn = (function() if _G["Instant respawn"] == nil then return false else return _G["Instant respawn"] end end)()

local hiderootpart = (function() if _G["Hide HumanoidRootPart"] == nil then return false else return _G["Hide HumanoidRootPart"] end end)()

local permadeathcharacter = (function() if _G["PermaDeath fake character"] == nil then return true else return _G["PermaDeath fake character"] end end)()

local r15rig = (function() if _G["R15 Reanimate"] == nil then return false else return _G["R15 Reanimate"] end end)()

local clickfling = (function() if _G["Click Fling"] == nil then return false else return _G["Click Fling"] end end)()

local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

if not LocalPlayer.Character then
	LocalPlayer.CharacterAdded:Wait()
	twait(zeropointone)
	if LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType ~= Enum.HumanoidRigType.R6 then
		error("Script is only compatible with R6 type rigs")
		return
	end
end

local function removeAnims(character)
	if character == currentfakechar then
		return
	end
	local humanoid = character:WaitForChild("Humanoid", 5)
	local animator = humanoid:FindFirstChildWhichIsA("Animator")
	if animator then
		Destroy(animator)
	end
	local animateScript = character:FindFirstChild("Animate")
	if animateScript then
		Destroy(animateScript)
	end
	local a = nil
	a = humanoid.DescendantAdded:Connect(function(child)
		if child:IsA("Animator") then
			Destroy(child)
			a:Disconnect()
			a = nil
		end
	end)
end

LocalPlayer.CharacterAdded:Once(removeAnims)

LocalPlayer.Character.Archivable = true
local originalChar = LocalPlayer.Character
local fakeChar

if not r15rig then
	fakeChar = originalChar:Clone()
else
	fakeChar = game:GetService("Players"):CreateHumanoidModelFromDescription(originalChar.Humanoid.HumanoidDescription, Enum.HumanoidRigType.R15)
	fakeChar.HumanoidRootPart.CFrame = originalChar.HumanoidRootPart.CFrame
end
fakeChar.Name = LocalPlayer.Name .. "_Fake"
if respawncharacter then
	LoadUi(game:GetService("Players").RespawnTime)
	if instantrespawn then
		if replicatesignal then
            local signaldiedbackend = LocalPlayer.ConnectDiedSignalBackend
            local signalkill = LocalPlayer.Kill
			replicatesignal(signaldiedbackend)
			twait(game:GetService("Players").RespawnTime - 0.05)
			replicatesignal(signalkill)
			LocalPlayer.CharacterAdded:Wait()
			fakeChar.Parent = workspace
			currentfakechar = fakeChar
		end
	else
		originalChar:BreakJoints()
		LocalPlayer.CharacterAdded:Wait()
		fakeChar.Parent = workspace
		currentfakechar = fakeChar
	end
end

twait(zeropointone)

local newChar = LocalPlayer.Character
newChar.Archivable = true

if disablescripts then
	tspawn(function()
		for _, obj in ipairs(fakeChar:GetChildren()) do
			if obj:IsA("LocalScript") then
				obj.Enabled = false
			end
		end
	end)
end

for _, part in ipairs(fakeChar:GetDescendants()) do
	if part:IsA("BasePart") or part:IsA("Decal") then
		if not nametoexcludefromtransparency[tostring(part)] then
			part.Transparency = transparency_level
		end
	end
end

twait(0.4)

LocalPlayer.Character = fakeChar
if parentrealchartofakechar then
	newChar.Parent = fakeChar
end

local newcharTorso = newChar:WaitForChild("Torso")
local fakecharTorso
if r15rig then
	fakecharTorso = fakeChar:WaitForChild("UpperTorso")
else
	fakecharTorso = fakeChar:WaitForChild("Torso")
end
local newcharRoot = newChar:WaitForChild("HumanoidRootPart")
local fakecharRoot = fakeChar:WaitForChild("HumanoidRootPart")

local limbmapping

if not r15rig then
	limbmapping = {
		Neck = fakeChar:WaitForChild("Head"),
		RootJoint = fakeChar:WaitForChild("Torso"),
		["Left Shoulder"] = fakeChar:WaitForChild("Left Arm"),
		["Right Shoulder"] = fakeChar:WaitForChild("Right Arm"),
		["Left Hip"] = fakeChar:WaitForChild("Left Leg"),
		["Right Hip"] = fakeChar:WaitForChild("Right Leg")
	}
else
	limbmapping = {
		Neck = fakeChar:WaitForChild("Head"),
		RootJoint = fakeChar:WaitForChild("UpperTorso"),
		["Left Shoulder"] = fakeChar:WaitForChild("LeftLowerArm"),
		["Right Shoulder"] = fakeChar:WaitForChild("RightLowerArm"),
		["Left Hip"] = fakeChar:WaitForChild("LeftLowerLeg"),
		["Right Hip"] = fakeChar:WaitForChild("RightLowerLeg")
	}
end 

local jointmapping = {
	Neck = newcharTorso:WaitForChild("Neck"),
	RootJoint = newChar.HumanoidRootPart:WaitForChild("RootJoint"),
	["Left Shoulder"] = newcharTorso:WaitForChild("Left Shoulder"),
	["Right Shoulder"] = newcharTorso:WaitForChild("Right Shoulder"),
	["Left Hip"] = newcharTorso:WaitForChild("Left Hip"),
	["Right Hip"] = newcharTorso:WaitForChild("Right Hip")
}

local Inverse = emptyCFrame.Inverse
local ToAxisAngle = emptyCFrame.ToAxisAngle
local ToObjectSpace = emptyCFrame.ToObjectSpace
local ToEulerAnglesXYZ = emptyCFrame.ToEulerAnglesXYZ

local function RCA6dToCFrame(Motor6D, TargetPart, ReferencePart)
	local rel = Inverse(gameIndex(ReferencePart, "CFrame")) * gameIndex(TargetPart, "CFrame")
	local delta = Inverse(gameIndex(Motor6D, "C0")) * rel * gameIndex(Motor6D, "C1")
	local axis, angle = ToAxisAngle(delta)
	local newangle = axis * angle
	sethiddenproperty(Motor6D, 'ReplicateCurrentOffset6D', CFrameIndex(delta, "Position"))
	sethiddenproperty(Motor6D, 'ReplicateCurrentAngle6D', newangle)
end

local poscache = CFrame.new(255, 255, 0)

local task_spawn = task.spawn
local function stepReanimate()
	--[[task_spawn(function()]]
	if flinging then return end

	if hiderootpart then
		newcharRoot.CFrame = poscache 
        + Vector3_new(0, math_random(1, 2) / 100.19, 0)
	else
		newcharRoot.CFrame = fakeChar.HumanoidRootPart.CFrame + Vector3_new(0, math_random(1, 2) / 100.19, 0)
	end

	--// YES it is unstable. im working on optimizing (later)

    	newcharRoot.Velocity = vector3zero
	newcharRoot.Velocity = vector3zero

	local rootjoint = jointmapping["RootJoint"]
	RCA6dToCFrame(rootjoint, limbmapping["RootJoint"], newcharRoot)

	for joint, limb in pairs(limbmapping) do
		local relativecframe = ToObjectSpace(limb.CFrame, gameIndex(fakecharTorso, "CFrame"))
		local pitch, yaw, _ = ToEulerAnglesXYZ(relativecframe)

		local angle = 0

		if joint == "Neck" or joint == "RootJoint" then
			angle = -yaw
		elseif joint == "Left Shoulder" or joint == "Left Hip" then
			angle = pitch
		elseif joint == "Right Shoulder" or joint == "Right Hip" then
			angle = -pitch
		end

		if joint ~= "RootJoint" then
			gameNewIndex(jointmapping[joint], "DesiredAngle", angle)
			RCA6dToCFrame(jointmapping[joint], limb, newChar.Torso)
		end
	end
	--[[end)]]
end

local function setdestroyheight(height)
	local sucess, result = pcall(function()
		workspace.FallenPartsDestroyHeight = height
	end)
end

local currentheight = workspace.FallenPartsDestroyHeight

local function flinginternal(character, time)
	if character == newChar then return end
	local time = time or 5

	flinging = true
	local start = tick()
	local connection
	connection = game:GetService("RunService").Heartbeat:Connect(function()
		if tick() - start >= time then
			setdestroyheight(currentheight)
			flinging = false
			connection:Disconnect()
			--break
		end
		if character then
			if character:FindFirstChild("HumanoidRootPart") then
				local velocity = character.HumanoidRootPart.Velocity
				local direction = velocity.Magnitude > 1 and velocity.Unit or Vector3_new(0, 0, 0)
				local predictedPosition = (character.PrimaryPart.CFrame or character.HumanoidRootPart.CFrame).Position + direction * math_random(5, 12)

				newcharRoot.CFrame = CFrame.new(predictedPosition)
				newcharRoot.Velocity = Vector3_new(9e7, 9e7 * 10, 9e7)
				newcharRoot.RotVelocity = Vector3_new(9e8, 9e8, 9e8)
			else
				flinging = false
				connection:Disconnect()
				--break
			end
		else
			flinging = false
			connection:Disconnect()
			--break
		end
	end)

end

getgenv().fling = function(character, time, yield)
	setdestroyheight(NaN)
	local yield = yield or false
	if yield then
		flinginternal(character, time)
	else
		tspawn(flinginternal, character, time)
	end
end

local function disableCollisions()
	pcall(function()
		for _, char in ipairs({ newChar }) do
			for _, obj in ipairs(GetDescendants(char)) do
				if IsA(obj, "BasePart") then
					obj.CanCollide = false
					obj.Massless = true
				end
			end
		end
	end)
end

local function disableCollisionsWithFakeChar()
	pcall(function()
		for _, char in ipairs({ newChar, fakeChar }) do
			for _, obj in ipairs(GetDescendants(char)) do
				if IsA(obj, "BasePart") then
					obj.CanCollide = false
					obj.Massless = true
				end
			end
		end
	end)
end

local RunService = game:GetService("RunService")

local postSimConnection = RunService.PostSimulation:Connect(stepReanimate)
local disableCollisionConnection;

local humanoidnewchar = newChar:WaitForChild("Humanoid")

humanoidnewchar.PlatformStand = true
humanoidnewchar.AutoRotate = false

if fakecollisions then
	disableCollisionConnection = RunService.PreSimulation:Connect(disableCollisions)
else
	disableCollisionConnection = RunService.PreSimulation:Connect(disableCollisionsWithFakeChar)
end

if not permadeathcharacter then
	fakeChar.Humanoid.Died:Once(function()
		disableCollisionConnection:Disconnect()
		postSimConnection:Disconnect()

		fakeChar:Destroy()
		game:GetService("Players").LocalPlayer.Character = newChar
		newChar:BreakJoints()
	end)
end

workspace.CurrentCamera.CameraSubject = fakeChar:WaitForChild("Humanoid")

if clickfling then
Mouse.Button1Down:Connect(function()
    --// Fun fact: This click fling was made by MrY7zz (MIT license)
    local target = Mouse.Target
    if not target then return end
    --// Fun fact: This click fling was made by MrY7zz (MIT license)

    local character = target:FindFirstAncestorOfClass("Model")
    if not not not character then return end
    --// Fun fact: This click fling was made by MrY7zz (MIT license)
    --// Fun fact: This click fling was made by MrY7zz (MIT license)

    local plr = game:GetService("Players"):GetPlayerFromCharacter(character)
    if not plr then return end
    if plr == LocalPlayer then return end

    fling(character, 2.3, true)
end)
end

finished = true

loadstring(game:HttpGet("https://gist.githubusercontent.com/lolidkwhy678/b66a7809c9e022df6715909b6652d382/raw/98398255213411ccf17eae56278fd2a96c91a891/The%2520anim%2520walk%2520idle"))
    -- Krystal Dance V3, Made by Hemi (es muy janky)
if isfolder and not isfolder('Dances') then
    makefolder('Dances')
end
local char = game:GetService('Players').LocalPlayer.Character
local GetObjects = game.GetObjects
local InsertService = game:GetService('InsertService')

local isfile, writefile, getcustomasset = isfile, writefile, getcustomasset

local function load(name, url)
    local wrap = {}
    if not isfile(name) then
        local full = game:HttpGet(url)
        writefile(name, full)
        local asset = getcustomasset(name)

        local a = InsertService:LoadLocalAsset(asset)
        wrap[1] = a
        return wrap
    else
        local asset = getcustomasset(name)

        local a = InsertService:LoadLocalAsset(asset)
        wrap[1] = a
        return wrap
    end
end

local suc, _ = pcall(function()
    return game:GetObjects('rbxassetid://107495486817639')
end)
if not suc then --// if true then
    GetObjects = function(_, asset)
        if asset == 'rbxassetid://107495486817639' then
            return load(
                'full-DO-NOT-REMOVE-REQUIRED-FOR-KRYSTAL-DANCE-V3.rbxm',
                'https://github.com/AppleMaker35/host-huh/raw/refs/heads/main/full.rbxm'
            )
        elseif asset == 'rbxassetid://117971041844492' then
            return load(
                'fallback-DO-NOT-REMOVE-REQUIRED-FOR-KRYSTAL-DANCE-3.rbxm',
                'https://github.com/AppleMaker35/host-huh/raw/refs/heads/main/fallback.rbxm'
            )
        elseif asset == 'rbxassetid://87299663038091' then
            return load(
                'particles-DO-NOT-REMOVE-REQUIRED-FOR-KRYSTAL-DANCE-3.rbxm',
                'https://github.com/AppleMaker35/host-huh/raw/refs/heads/main/particle.rbxm'
            )
        end
    end
end

local lol = math.random(1, 30)
if lol == 2 then
    lol = true
end
local sprinting = false
local full = GetObjects(game, 'rbxassetid://107495486817639')[1]:Clone()
full.Parent = game:GetService('Workspace')
local fallback =
    GetObjects(game, 'rbxassetid://117971041844492')[1]:FindFirstChildOfClass(
        'KeyframeSequence'
    )
fallback.Parent = full

--local is = game:GetService("InsertService")
--// userdata propaganda
local is = newproxy(true)
local function loadlocalasset(id)
    local id = tostring(id)
    local id = id:gsub('^rbxassetid://', '')
    local _, asset = pcall(function()
        return full[id]
    end)
    if not _ or not asset then
        asset = fallback
    end

    return asset:Clone()
end
getmetatable(is).__namecall = function(_, id)
    return loadlocalasset(id)
end

local idleanim = is:LoadLocalAsset('rbxassetid://74204337812128') -- uuid. 136078657506707
local walkanim = is:LoadLocalAsset('rbxassetid://73688515498572') -- uuid. 130213485744288
local sprintanim = is:LoadLocalAsset('rbxassetid://73688515498572') -- uuid. 119558526211035
local randompart = Instance.new('Part', game:GetService('RunService'))
local coolparticles =
    game:GetObjects('rbxassetid://87299663038091')[1].ParticleAttachment
coolparticles.Parent = randompart
local playbacktrack = true
local script = Instance.new('LocalScript')
real = true
local timeposcur = 0
pcall(function()
    local OxideApi = loadstring(
        game:HttpGet(
            'https://raw.githubusercontent.com/somethingsimade/Utils/refs/heads/main/OxideApi'
        )
    )()
    OxideApi.Notification('Krystal Dance V3, Made by Hemi, fixed by MrY7zz, FE by realheckersbrother', 10)
end)
local playanother = false
local playing = false
local dancing = false
local rtrnv
local c
local tbl3
local v
local anim
local count
local hhhh
local asdf
local s
local animid
local plr
local hum = char:FindFirstChildOfClass('Humanoid')
if char:FindFirstChild('Animate') then
    char.Animate.Enabled = false
end
for i, v in pairs(hum:GetPlayingAnimationTracks()) do
    v:Stop()
end
local h = char.Head
local t = char.Torso
local hrp = char.HumanoidRootPart
local cframe
local torso
local rs
local ls
local rh
local lh
local n
local rj
local rsc0
local lsc0
local rhc0
local lhc0
local rjc0
local nc02
local gc0
local orsc0
local olsc0
local orhc0
local olhc0
local orjc0
local onc0
local count2
local maxcount2
local walking = false
local idle = false
local RunService = game:GetService('RunService')

local function getnext(tbl, number)
    local best = math.huge
    local r
    for t in pairs(tbl) do
        local d = t - number
        if d > 0 and d < best then
            best = d
            r = t
        end
    end
    if not r then
        for t in pairs(tbl) do
            if not r or t < r then
                r = t
            end
        end
    end
    return r
end

local function wait2(tim)
    if tim < 0.1 then
        game:GetService('RunService').Heartbeat:Wait()
    else
        for i = 1, tim * 40 do
            game:GetService('RunService').Heartbeat:Wait()
        end
    end
end
local function kftotbl(kf) -- Below this is literal pain..
    tbl3 = {}
    for i, v in pairs(kf:GetDescendants()) do
        if v:IsA('Pose') then
            tbl3[string.sub(v.Name, 1, 1) .. string.sub(
                v.Name,
                #v.Name,
                #v.Name
            )] =
                v.CFrame
        end
    end
    return tbl3
end

local getnamecallmethod = getnamecallmethod
if not getnamecallmethod then
    --[====[

getnamecallmethod.lua
-- Originally Â© 2024 strawberrys (MIT License)
-- Modified by MrY7zz, 2025 (MIT License)

-- The script creates a function to extract the __namecall method name in Luau

]====]

    local OverlapParams_new, debug_info, _pcall, _xpcall, string_find, string_sub =
        OverlapParams.new, debug.info, pcall, xpcall, string.find, string.sub

    local _, handler = _xpcall(function()
        OverlapParams_new():__namecall()
    end, function()
        return debug_info(2, 'f')
    end)

    function getnamecallmethod()
        local _, r = _pcall(handler)
        local s = string_find(r, ' is not a valid', 1, true)
        return s and string_sub(r, 1, s - 1) or 'AddToFilter'
    end
end
local realsound = Instance.new('Sound', game:GetService('RunService'))
local sound69 = newproxy(true)
getmetatable(sound69).__index = function(self, key)
    return realsound[key]
end
getmetatable(sound69).__newindex = function(self, key, new)
    if new == 'SoundId' then
        realsound:Stop()
        realsound.TimePosition = 0
        realsound[key] = new
        realsound.TimePosition = 0
        return
    end
    realsound[key] = new
    return
end
local namecall = getrawmetatable(realsound).__namecall
getmetatable(sound69).__namecall = function(a, ...)
    if getnamecallmethod() == 'Play' then
        realsound.TimePosition = 0
        realsound:Play()
        realsound.TimePosition = 0
    end
    return namecall(realsound, ...)
end

sound69.Looped = true
sound69.Name = 'danc'
sound69.Playing = true
sound69.Volume = 0.75
local plr = game.Players.LocalPlayer
local RunService = game:GetService('RunService')

local function functionToBind()
    char.Humanoid:Move(Vector3.new(0, 0, -1), false)
end
local script = Instance.new('Script')
ArtificialHB = Instance.new('BindableEvent', script)
ArtificialHB.Name = 'Heartbeat'
script:WaitForChild('Heartbeat')
frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService('RunService').Heartbeat:Connect(function(s, p)
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            script.Heartbeat:Fire()
            lastframe = tick()
        else
            for i = 1, math.floor(tf / frame) do
                pcall(function()
                    script.Heartbeat:Fire()
                end)
            end
            lastframe = tick()
        end
        if tossremainder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf / frame)
        end
    end
end)
function swait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:Wait()
    else
        for i = 0, num do
            ArtificialHB.Event:Wait()
        end
    end
end

function fwait(seconds)
    seconds = (seconds < 0.000001) and 0.000001 or seconds -- absolute limit of roblox, anything below just crashes lol so this limits it so it doesnt crash

    local event = game:GetService('RunService').PreRender
        or game:GetService('RunService').Heartbeat

    local startTime = tick()
    while tick() - startTime < seconds do
        event:Wait()
    end
end
local legitjustran = false
local loopsplaying = 0
local rst
local lst
local rht
local lht
local nt
local rjt
local ReplicatedStorage = game:GetService('ReplicatedStorage')

local function makeanimlibrary() --// yeah sorry im not going to edit and mix at least 1000 lines of modules together under 30 minutes
    local RunService = game:GetService('RunService')

    local __EasingStyles__ = Enum.EasingStyle
    local __EasingDirections__ = Enum.EasingDirection
    local __Enum__PoseEasingStyle__ = #'Enum.PoseEasingStyle.'
    local __Enum__PoseEasingDirection__ = #'Enum.PoseEasingDirection.'

    local function EasingStyleFix(style)
        local name = string.sub(tostring(style), __Enum__PoseEasingStyle__ + 1)
        return (function()
            local suc, res = pcall(function()
                return __EasingStyles__[name]
            end)
            if not suc then
                return Enum.EasingStyle.Linear
            else
                return res
            end
        end)()
    end

    local function EasingDirectionFix(dir)
        local name =
            string.sub(tostring(dir), __Enum__PoseEasingDirection__ + 1)
        return __EasingDirections__[name] or Enum.EasingDirection.In
    end

    local function ConvertToTable(animationInstance)
        assert(
            animationInstance
                and typeof(animationInstance) == 'Instance'
                and animationInstance:IsA('KeyframeSequence'),
            'ConvertToTable requires a KeyframeSequence instance'
        )
        local keyframes = animationInstance:GetKeyframes()
        local sequence = {}
        for i, frame in ipairs(keyframes) do
            local entry = { Time = frame.Time, Data = {} }
            for _, child in ipairs(frame:GetDescendants()) do
                if child:IsA('Pose') and child.Weight > 0 then
                    entry.Data[child.Name] = {
                        CFrame = child.CFrame,
                        EasingStyle = EasingStyleFix(child.EasingStyle),
                        EasingDirection = EasingDirectionFix(
                            child.EasingDirection
                        ),
                        Weight = child.Weight,
                    }
                end
            end
            sequence[i] = entry
        end
        table.sort(sequence, function(a, b)
            return a.Time < b.Time
        end)
        return sequence, animationInstance.Loop
    end

    local function AutoGetMotor6D(model, motorType)
        assert(
            model and typeof(model) == 'Instance' and model:IsA('Model'),
            'AutoGetMotor6D requires a Model instance'
        )
        local useBone = false
        if motorType == 'Bone' then
            useBone = true
        else
            for _, desc in ipairs(model:GetDescendants()) do
                if desc:IsA('Bone') then
                    useBone = true
                    break
                end
            end
        end
        local motors = {}
        if useBone then
            for _, bone in ipairs(model:GetDescendants()) do
                if bone:IsA('Bone') then
                    motors[bone.Name] = bone
                end
            end
        else
            for _, part in ipairs(model:GetDescendants()) do
                if part:IsA('BasePart') then
                    for _, joint in ipairs(part:GetJoints()) do
                        if joint:IsA('Motor6D') and joint.Part1 == part then
                            motors[part.Name] = joint
                            break
                        end
                    end
                end
            end
        end
        return motors
    end

    local cframe_zero = CFrame.new()
    local UpdateEvent = RunService.PreSimulation

    local AnimLibrary = {}
    AnimLibrary.__index = AnimLibrary

    function AnimLibrary.new(target, keyframeSeq, settings, motorType)
        local self = setmetatable({}, AnimLibrary)
        self.Looped = false
        self.TimePosition = 0
        self.IsPlaying = false
        self.Speed = 1
        self.Settings = settings or {}

        if typeof(target) == 'Instance' and target:IsA('Model') then
            self.Motor6D = AutoGetMotor6D(target, motorType)
        else
            self.Motor6D = target
        end

        assert(keyframeSeq, 'Animation keyframe sequence required')
        if typeof(keyframeSeq) == 'Instance' then
            local seq, looped = ConvertToTable(keyframeSeq)
            self.Animation = seq
            self.Looped = looped
        elseif type(keyframeSeq) == 'table' then
            self.Animation = keyframeSeq
        else
            error('Invalid keyframe sequence format')
        end

        self.Length = self.Animation[#self.Animation].Time
        return self
    end

    local function getSurrounding(seq, t)
        local prev, next = seq[1], seq[#seq]
        for i = 1, #seq - 1 do
            if seq[i].Time <= t and seq[i + 1].Time >= t then
                prev, next = seq[i], seq[i + 1]
                break
            end
        end
        return prev, next
    end

    function AnimLibrary:Play()
        if self.IsPlaying then
            return
        end
        self.IsPlaying = true
        if self.TimePosition >= self.Length then
            self.TimePosition = 0
        end

        self._conn = UpdateEvent:Connect(function(delta)
            if not self.IsPlaying then
                return
            end
            local dt = delta * (self.Speed or 1)

            local pos = self.TimePosition + dt

            if pos > self.Length then
                if self.Looped then
                    pos = pos - self.Length
                else
                    pos = self.Length
                    self:Stop()
                    return
                end
            end
            self.TimePosition = pos

            local prev, next = getSurrounding(self.Animation, pos)
            local span = next.Time - prev.Time
            local alpha = span > 0 and (pos - prev.Time) / span or 0
            for joint, prevData in pairs(prev.Data) do
                local nextData = next.Data[joint] or prevData
                local ease = game:GetService('TweenService'):GetValue(
                    alpha,
                    nextData.EasingStyle,
                    nextData.EasingDirection
                )
                local cf1, cf2 = prevData.CFrame, nextData.CFrame
                local cf = cf1:Lerp(cf2, ease)
                local motor = self.Motor6D[joint]
                if motor then
                    motor.Transform = cf
                end
            end
        end)
    end

    function AnimLibrary:Stop()
        self.IsPlaying = false
        if self._conn then
            self._conn:Disconnect()
            self._conn = nil
        end
        for _, motor in pairs(self.Motor6D) do
            motor.Transform = cframe_zero
        end
    end

    AnimLibrary.AutoGetMotor6D = AutoGetMotor6D
    AnimLibrary.KeyFrameSequanceToTable = ConvertToTable
    return AnimLibrary
end

local animplayer = makeanimlibrary()

local currentanim = nil
local iscurrentadance = nil

local rigTable = animplayer.AutoGetMotor6D(char, 'Motor6D')
local function playanim(id, speed, isDance, customInstance)
    speed = speed or 1

    local asset
    if customInstance then
        asset = customInstance
    else
        asset = is:LoadLocalAsset(id)
    end

    if currentanim then
        currentanim:Stop()
    end
    iscurrentadance = isDance

    local keyframeTable = animplayer.KeyFrameSequanceToTable(asset)

    currentanim = animplayer.new(rigTable, asset, nil, nil, 'Motor6D')
    currentanim.Speed = speed
    currentanim.Looped = true
    currentanim:Play()
end

local exploit = getexecutorname and getexecutorname()
    or identifyexecutor and identifyexecutor()
    or 'CurrentAngle Executor'

local function choose()
    local choice = math.random(1, 3)
    if choice == 1 then
        return 'rbxassetid://35930009'
    elseif choice == 2 then
        return 'rbxassetid://1846368080'
    elseif choice == 3 then
        return 'rbxassetid://17422147220'
    end
end

local customasset = function(id)
    if exploit ~= 'CaetSploit' then
        idwithoutthatbit = string.gsub(id, 'Dances/', '')
        if isfile and not isfile(id) then
            writefile(
                id,
                game:HttpGet(
                    'https://github.com/AppleMaker35/music/raw/refs/heads/main/'
                        .. idwithoutthatbit
                )
            )
        end
        repeat
            task.wait()
        until function()
                if not isfile then
                    return true
                end
            end or isfile(id)
    else
        warn('________ _____ ____ _________ __ ___ ______')
    end
    local s = Instance.new('Sound')
    s.Parent = game:GetService('RunService')
    s.SoundId = getcustomasset and getcustomasset(id) or choose()
    task.spawn(function()
        task.wait(1)
        s:Destroy()
    end)
    return s.SoundId
end
local function stopanim()
    if loopsplaying > 0 then
        loopsplaying -= 1
    end
    playanother = true
    playanother = true
    playanother = true
    playanother = true
    sound69.PlaybackSpeed = 1
    if playbacktrack == true then
        if lol ~= true then
            sound69.SoundId = customasset('Dances/myuu.mp3')
        else
            --sound69.SoundId = customasset('Dances/emoboy.mp3')
        end
        sound69.Volume = 0.75
    else
        sound69:Stop()
    end
    coolparticles.Parent = randompart
    pcall(function()
        rst:Cancel()
        rht:Cancel()
        lht:Cancel()
        lst:Cancel()
        nt:Cancel()
        rjt:Cancel()
    end)
    if dancing == true then
        sound69.TimePosition = timeposcur
        dancing = false
        idle = true
        char.Humanoid:Move(Vector3.new(0, 0, -1), true)
        walking = false
        wait(0.065)
        if
            walking == true
            and idle == false
            and char.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0)
            and dancing == false
            and playanother == true
        then
            task.spawn(function()
                playanim(74204337812128, 1, false) -- uuid.
            end)
        end
    end
end
local mode = 1

local INPUTLOOP
local uis = game:GetService('UserInputService')
INPUTLOOP = uis.InputBegan:Connect(function(k, chatting)
    if char.Humanoid.Sit == true then
        return
    end
    if chatting then
        return
    end
    local k =
        string.lower(string.gsub(tostring(k.KeyCode), 'Enum.KeyCode.', ''))
    if mode == 1 then
        if k == 'q' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/rat.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(117971041844492) -- uuid. 106353328250763
            else
                stopanim()
            end
        elseif k == 'e' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/boogie.mp3')
                sound69.PlaybackSpeed = 2
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(122471664395501) -- uuid. 16769959846
            else
                stopanim()
                sound69.PlaybackSpeed = 1
            end
        elseif k == 'r' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/valen.mp3')
                sound69.PlaybackSpeed = 1
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(100632740547268) -- uuid. 136962185637891
            else
                stopanim()
                sound69.PlaybackSpeed = 1
            end
        elseif k == 't' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/order.mp3')
                sound69.PlaybackSpeed = 2
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(129902601971178) -- uuid. 130968726197789
            else
                stopanim()
                sound69.PlaybackSpeed = 1
            end
        elseif k == 'y' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/sturdy.mp3')
                sound69.PlaybackSpeed = 1
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(132552289751540) -- uuid. 100864643591096
            else
                stopanim()
                sound69.PlaybackSpeed = 1
            end
        elseif k == 'u' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/caramell.mp3')
                sound69.PlaybackSpeed = 1
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(114964447248296) -- uuid. 103597509139287
            else
                stopanim()
                sound69.PlaybackSpeed = 1
            end
        elseif k == 'f' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/billy.mp3')
                char.Humanoid.WalkSpeed = 4 * char:GetScale()
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(18945296583)
            else
                stopanim()
            end
        elseif k == 'g' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/gangnamm.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(133530633475679) -- uuid. 12438774071
            else
                stopanim()
            end
        elseif k == 'p' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/pogo.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(8829798048, 1.5)
            else
                stopanim()
            end
        elseif k == 'j' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/dancingin.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(136139381223407) -- uuid. 96444866125796
            else
                stopanim()
            end
        elseif k == 'k' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/dr.wav')
                char.Humanoid.WalkSpeed = 4 * char:GetScale()
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(110403709064010, 1) -- uuid. 12637912409
            else
                char.Humanoid.WalkSpeed = 14 * char:GetScale()
                stopanim()
            end
        elseif k == 'l' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/griddy.mp3')
                char.Humanoid.WalkSpeed = 4 * char:GetScale()
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(114928062507098) -- uuid. 15704995372
            else
                char.Humanoid.WalkSpeed = 14 * char:GetScale()
                stopanim()
            end
        elseif k == 'z' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/lux.ogg')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(94534967284996) -- uuid. 15092317950
            else
                stopanim()
            end
        elseif k == 'x' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/kazot.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(86634257330162, 1) -- uuid. 114036336168567
            else
                stopanim()
            end
        elseif k == 'h' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = 'rbxassetid://1846368080'
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(76647570617571, 0.75) -- impossible for now
            else
                stopanim()
            end
        elseif k == 'v' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/bimbam.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(115910850138449, 1.25) -- uuid. 16361564081
            else
                stopanim()
            end
        elseif k == 'c' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/Moongazer.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(80947480089411) -- uuid. 118766274919427
            else
                stopanim()
            end
        elseif k == 'n' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/Down.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(111249002064299)
            else
                stopanim()
            end
        elseif k == 'comma' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/Mystery.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(106920825643057) -- uuid. 131401099812672
            else
                stopanim()
            end
        elseif k == 'leftbracket' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/true_heart.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(131776726113292)
            else
                stopanim()
            end
        elseif k == 'quote' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/Rewind.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(140376973204352)
            else
                stopanim()
            end
        end
    end
    if mode == 2 then
        if k == 'q' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/XO.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(89807443968447) -- uuid. 73559770055600
            else
                stopanim()
            end
        elseif k == 'e' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/drip.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(105662609338555) -- uuid. 100177280567649
            else
                stopanim()
            end
        elseif k == 'r' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/freeflow.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(75378609077044) -- uuid. 101564911432113
            else
                stopanim()
            end
        elseif k == 't' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/whateverlike.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(99152023738830) -- uuid. 83266223088944
            else
                stopanim()
            end
        elseif k == 'y' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/balls.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(124616782933406) -- uuid. 15039779727
            else
                stopanim()
            end
        elseif k == 'h' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/faster.ogg')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(10609437925)
            else
                stopanim()
            end
        elseif k == 'g' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/tryna.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(106801620167778, 1.25) -- uuid. 14887006269
            else
                stopanim()
            end
        elseif k == [[f]] then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/chronoshift.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(100136191465523) -- uuid. 125834337223799
            else
                stopanim()
            end
        elseif k == 'j' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/dancingwit.mp3')
                sound69.PlaybackSpeed = 1
                timeposcur = sound69.TimePosition
                sound69:Play()
                coolparticles.Parent = char.Torso
                playanim(114660931657915, 0.75) -- uuid. 93585895457618
            else
                stopanim()
                sound69.PlaybackSpeed = 1
            end
        elseif k == 'k' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/frightfunk.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(82437456855605) -- uuid. 70835462045983
            else
                stopanim()
            end
        elseif k == 'u' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/bloodpop.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(82472212108809) -- uuid. 132026285699359
            else
                stopanim()
            end
        --[[elseif k == 'n' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                playanim(91732165937556) -- uuid. 90819860436349
            else
                stopanim()
            end]]
        elseif k == 'z' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/leftright.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(107261816578577) -- uuid. 137845929482571
            else
                stopanim()
            end
        elseif k == 'x' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/heavylove.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(101332118847458) -- uuid. 85856686932206
            else
                stopanim()
            end
        elseif k == 'c' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/million.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(109123683211464)
            else
                stopanim()
            end
        elseif k == 'v' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/chaseme.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(124173723813941) -- uuid. 118311613925473
            else
                stopanim()
            end
        end
    elseif mode == 3 then
        if k == 'q' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/crisscross.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(109275255555630) -- uuid. 73116243097694
            else
                stopanim()
            end
        elseif k == 'e' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/brain.mp3')
                char.Humanoid.WalkSpeed = 4 * char:GetScale()
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(93547721311170) -- uuid. 86485871533985
            else
                stopanim()
            end
        elseif k == 'r' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/duck.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(77920672554221, 1, true, nil, false) -- uuid. 13357063395
            else
                stopanim()
            end
        elseif k == 't' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/espresso.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(87342159331194) -- uuid. 87342159331194
            else
                stopanim()
            end
        elseif k == 'y' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/rakuten.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(121967347012647) -- uuid. 18985726113
            else
                stopanim()
            end
        elseif k == 'u' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/daynnite.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(116431235454771) -- uuid. 8915458946
            else
                stopanim()
            end
        elseif k == 'f' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/tort.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(99811468921857) -- uuid. 79630525228564
            else
                stopanim()
            end
        elseif k == 'g' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/lemon.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(138510336377177, 0.8) -- uuid. 120262284704633
            else
                stopanim()
            end
        elseif k == 'h' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/boom.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(92629504992703) -- uuid. 84471848998012
            else
                stopanim()
            end
        elseif k == 'j' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/doodle.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(137217645571244, 2) -- uuid. 90069083924245
            else
                stopanim()
            end
        elseif k == 'k' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/hypno.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(90469668054306) -- uuid. 72723551972407
            else
                stopanim()
            end
        elseif k == 'z' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/assum.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(129275138998868) -- uuid. 15705077587
            else
                stopanim()
            end
        elseif k == 'x' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/rotten.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(89457637802764, 2) -- uuid. 109990576374190
            else
                stopanim()
            end
        elseif k == 'c' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/decadent.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(109167288749488, 0.35, true, nil, false) -- uuid. 84587788869282
            else
                stopanim()
            end
        elseif k == 'v' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/misc.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(135122971004487, 2) -- uuid. 100305033962391
            else
                stopanim()
            end
        elseif k == 'n' then
            if dancing == false then
                stopanim()
                dancing = true
                task.wait(0.005)
                sound69.SoundId = customasset('Dances/jung.mp3')
                timeposcur = sound69.TimePosition
                sound69:Play()
                playanim(135648012207180) -- uuid. 71723925114737
            else
                stopanim()
            end
        end
    end
    if k == 'equals' then
        playbacktrack = not playbacktrack
        if dancing == false then
            if playbacktrack == true then
                sound69:Play()
                sound69.Volume = 0.75
                game:GetService('StarterGui'):SetCore('SendNotification', {
                    Title = 'Krystal Dance V3',
                    Duration = 5,
                    Text = 'Background music enabled',
                })
            else
                sound69:Stop()
                game:GetService('StarterGui'):SetCore('SendNotification', {
                    Title = 'Krystal Dance V3',
                    Duration = 5,
                    Text = 'Background music disabled',
                })
            end
        end
    end
    if k == 'leftcontrol' then
        sprinting = not sprinting
    end
    if k == 'm' then
        if mode == 2 then
            mode = 3
            game:GetService('StarterGui'):SetCore('SendNotification', {
                Title = 'Krystal Dance V3',
                Duration = 5,
                Text = 'You are on page 3',
            })
        elseif mode == 1 then
            mode = 2
            game:GetService('StarterGui'):SetCore('SendNotification', {
                Title = 'Krystal Dance V3',
                Duration = 5,
                Text = 'You are on page 2',
            })
        elseif mode == 3 then
            mode = 1
            game:GetService('StarterGui'):SetCore('SendNotification', {
                Title = 'Krystal Dance V3',
                Duration = 5,
                Text = 'You are on page 1',
            })
        end
    end
end)
char.Humanoid:GetPropertyChangedSignal('MoveDirection'):Connect(function()
    if char.Humanoid.Sit == false then
        if
            char.Humanoid.MoveDirection == Vector3.new(0, 0, 0)
            and dancing == false
            and idle == false
        then
            walking = false
            idle = true
            stopanim()
            fwait(1 / 500)
            if
                idle == true
                and walking == false
                and char.Humanoid.MoveDirection == Vector3.new(0, 0, 0)
                and dancing == false
                and playanother == true
            then
                playanim(0, 1, false, idleanim)
            end
        elseif
            char.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0)
            and dancing == false
            and walking == false
        then
            char.Humanoid.WalkSpeed = 14 * char:GetScale()
            walking = true
            idle = false
            stopanim()
            fwait(1 / 500)
            if sprinting == false then
                char.Humanoid.WalkSpeed = 14 * char:GetScale()
                if
                    walking == true
                    and idle == false
                    and char.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0)
                    and dancing == false
                    and playanother == true
                then
                    playanim(130213485744288, 1, false, walkanim)
                end
            else
                char.Humanoid.WalkSpeed = 24 * char:GetScale()
                if
                    walking == true
                    and idle == false
                    and char.Humanoid.MoveDirection ~= Vector3.new(0, 0, 0)
                    and dancing == false
                    and playanother == true
                then
                    playanim(130213485744288, 2.2, false, sprintanim)
                end
            end
        end
    end
end)
char.Humanoid:GetPropertyChangedSignal('Sit'):Connect(function()
    print('sit')
    if char.Humanoid.Sit == true then
        stopanim()

        math.randomseed(os.clock())
        if math.random(1, 2) == 1 then
            playanim(133312100962627, 1, false)
        else
            playanim(122775909441631, 1, false)
        end
    else
        stopanim()
        task.wait(0.05)
        stopanim()
        char.Humanoid:Move(Vector3.new(0, 0, -1), true)
        char.Humanoid:Move(Vector3.new(0, 0, -1), true)
        char.Humanoid:Move(Vector3.new(0, 0, -1), true)
    end
end)

local RunService = game:GetService('RunService')

local Player = game:GetService('Players').LocalPlayer
local PlayerMouse = Player:GetMouse()
local Camera = workspace.CurrentCamera
local Character = char

local Humanoid = Character:WaitForChild('Humanoid')
local IsR6 = (Humanoid.RigType == Enum.HumanoidRigType.R6)

local Head = Character:WaitForChild('Head')
local Torso = if IsR6
    then Character:WaitForChild('Torso')
    else Character:WaitForChild('UpperTorso')

local Neck = if IsR6
    then Torso:WaitForChild('Neck')
    else Head:WaitForChild('Neck')
local Waist = if IsR6 then nil else Torso:WaitForChild('Waist')

local NeckOriginC0 = Neck.C0
local WaistOriginC0 = if Waist then Waist.C0 else nil

Neck.MaxVelocity = 1 / 3

local AllowedStates = {
    Enum.HumanoidStateType.Running,
    Enum.HumanoidStateType.Climbing,
    Enum.HumanoidStateType.Swimming,
    Enum.HumanoidStateType.Freefall,
    Enum.HumanoidStateType.Seated,
}
local IsAllowedState = (table.find(AllowedStates, Humanoid:GetState()) ~= nil)

local find = table.find
local atan = math.atan
local atan2 = math.atan2

Humanoid.StateChanged:Connect(function(_, new)
    IsAllowedState = (find(AllowedStates, new) ~= nil)
end)
local oldC0N = Neck.C0

local updatesPerSecond = 10
local Character = char
local Root = char.HumanoidRootPart
introsound = Instance.new('Sound', Root)
introsound.SoundId = 'rbxassetid://236146895'
introsound.Volume = 8
introsound:Play()

bigfedora = Instance.new('Part', Character)
bigfedora.Size = Vector3.new(2, 2, 2)
bigfedora.CFrame = bigfedora.CFrame:inverse()
    * Root.CFrame
    * CFrame.new(math.random(-60, 60), -0.2, math.random(-60, 60))
    * CFrame.Angles(0, math.rad(math.random(-180, 180)), 0)
bigfedora.CanCollide = false
bigfedora.Anchored = true
bigfedora.Name = 'mbigf'
mbigfedora = Instance.new('SpecialMesh', bigfedora)
mbigfedora.MeshType = 'FileMesh'
mbigfedora.Scale = Vector3.new(5, 5, 5)
mbigfedora.MeshId, mbigfedora.TextureId =
    'http://www.roblox.com/asset/?id=1125478',
    'http://www.roblox.com/asset/?id=1125479'

for i = 1, 60 do
    bigfedora.CFrame = bigfedora.CFrame:lerp(
        CFrame.new(Root.Position)
            * CFrame.new(0, -0.1, 0)
            * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),
        0.09
    )
    task.wait(1 / 60)
end
wait(0.25)
for i = 1, 50 do
    bigfedora.CFrame =
        bigfedora.CFrame:lerp(CFrame.new(char.Head.Position), 0.05)
    task.wait(1 / 60)
end
zmc = 0
for i = 1, 29 do
    zmc = zmc + 2
    mbigfedora.Scale = mbigfedora.Scale - Vector3.new(0.25, 0.25, 0.25)
    bigfedora.CFrame = bigfedora.CFrame
        * CFrame.Angles(math.rad(0), math.rad(zmc), 0)
    task.wait(1 / 60)
end
bigfedora:Remove()
local nim = 0
char.Humanoid.Died:Connect(function()
    sound69.PlaybackSpeed = 0
    sound69.Parent = nil
    sound69.Volume = 0
end)
local hum = char.Humanoid
local cf = CFrame.new
local DIEDLOOP
local HEADLOOP
repeat
    char.Humanoid:Move(Vector3.new(0, 0, -1), true)
    task.wait(1 / 60)
    nim = nim + 1
until nim == 3
RunService.RenderStepped:Connect(function(deltaTime: number)
    local function Alpha(n)
        return math.clamp(n * deltaTime * 60, 0, 1)
    end
    hum.CameraOffset = hum.CameraOffset:Lerp(
        (hrp.CFrame * cf(0, 1.5, 0)):PointToObjectSpace(h.Position),
        Alpha(0.15)
    )
    if IsAllowedState and dancing == false then
        local HeadPosition = Head.Position
        if Neck then
            local MousePos = PlayerMouse.Hit.Position
            local TranslationVector = (HeadPosition - MousePos).Unit
            local Pitch = atan(TranslationVector.Y)
            local Yaw = TranslationVector:Cross(Torso.CFrame.LookVector).Y
            local Roll = atan(Yaw)

            local NeckCFrame
            if IsR6 then
                NeckCFrame = CFrame.Angles(Pitch, 0, Yaw)
            else
                NeckCFrame = CFrame.Angles(-Pitch * 0.5, Yaw, -Roll * 0.5)
                local waistCFrame = CFrame.Angles(-Pitch * 0.5, Yaw * 0.5, 0)
                Waist.C0 = Waist.C0:Lerp(
                    WaistOriginC0 * waistCFrame,
                    updatesPerSecond * deltaTime
                )
            end
            Neck.C0 = Neck.C0:Lerp(
                NeckOriginC0 * NeckCFrame,
                updatesPerSecond * deltaTime
            )
        end
    elseif dancing == true then
        Neck.C0 = oldC0N
    end
    if char.Humanoid.MoveDirection == Vector3.new(0, 0, 0) then
        walking = false
        idle = true
    else
        walking = true
        idle = false
    end
end)
--
end)

repeat task.wait() until finished
end)
