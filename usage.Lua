-- Odyssey UI - Example Usage
-- This script demonstrates how to load and use the library.

-- Load the library from GitHub. The 'window' variable will hold the UI menu object.
local window = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaybeItIsVay/Obelus/main/Main.lua"))()

-- Example UI setup
local aimbot_tab = window:AddTab({name = "combat"}) -- Add a new tab named "combat"
aimbot_tab:AddTab({name = "legitbot"})  -- Add a sub-tab to "combat" named "legitbot"

-- Create a section on the left side of the "legitbot" sub-tab
local section0 = aimbot_tab:AddSection({tab = "legitbot", name = "main", height = "fill"})

-- Add elements to the "main" section
local toggle1 = section0:AddToggle({name = "enabled"})
toggle1:AddKeybind() -- Add a keybind to the toggle

local toggle2 = section0:AddToggle({name = "remove recoil"})
toggle2:AddColorpicker() -- Add a color picker to the toggle

section0:AddToggle({name = "remove spread"})
section0:AddSlider({name = "field of view"})
section0:AddSlider({name = "hitchance"})
section0:AddDropdown({name = "target selection", list = {
    "Default", "Basalt", "Brick", "Cobblestone", "Concrete", "CorrodedMetal", "DiamondPlate",
    "Fabric", "Foil", "ForceField", "Glass", "Glacier", "Granite", "Grass", "Ground", "Ice",
    "LeafyGrass", "Limestone", "Marble", "Metal", "Mud", "Neon", "Pavement", "Pebble", "Rock",
    "Salt", "Sand", "Sandstone", "Slate", "SmoothPlastic", "SmoothTerrain", "Snow", "Wood", "WoodPlanks"
}})
section0:AddDropdown({name = "hitboxes"})
section0:AddButton({name = "Click Me"})

-- Create another section on the right side
local section1 = aimbot_tab:AddSection({tab = "legitbot", name = "accuracy", height = "fill", side = "Right"})
section1:AddList()
section1:AddTextbox()

-- Add more sub-tabs to "combat"
aimbot_tab:AddTab({name = "triggerbot"})
aimbot_tab:AddTab({name = "other"})
