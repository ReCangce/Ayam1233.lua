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
local correctKey = "EdwardLi99"

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
Title.Text = "NEO EXECUTOR"
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
    loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/FoxnameHub.lua"))()
end)

createTab("Bake or Die", function)

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
    loadstring(game:HttpGet('https://pastebin.com/NNqwKvPX'))()
end)

createTab("Survive Apocalypse", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Notzephyr/UIX/refs/heads/main/Zombie.lua"))()
end)

createTab("Brookhaven", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/kigredns/testUIDK/refs/heads/main/panel.lua"))()
end)
