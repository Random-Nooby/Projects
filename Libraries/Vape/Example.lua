--// Inits
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Random-Nooby/Projects/main/Librarys/Vape/Vape%20Source.lua"))()
local Window = Library:Window("Preview", Color3.fromRGB(44, 120, 224))

--// Tabs
local Tab = Window:Tab("Tab")
local Settings = Window:Tab("Settings")

--// Tab
Tab:Button("Button", function()
    Library:Notification("Notification", "Hello!", "Hi!")
end)
Tab:Toggle("Toggle",false, function(State)
    print(State)
end)

Tab:Slider("Slider", 0, 100, 50, function(Value)
    print(Value)
end)
Tab:Dropdown("Dropdown", {"Option 1", "Option 2", "Option 3", "Option 4", "Option 5"}, function(Item)
    print(Item)
end)
Tab:Colorpicker("Colorpicker",Color3.fromRGB(255,0,0), function(Color3)
    print(Color3)
end)
Tab:Textbox("Textbox", "Default Stuff", true, function(Text)
    print(Text)
end)
Tab:Bind("Bind", Enum.KeyCode.RightShift, function()
    print("Pressed!")
end)
Tab:Label("Label")

--// Settings
Settings:Colorpicker("Change UI Color",Color3.fromRGB(44, 120, 224), function(T)
    Library:ChangePresetColor(Color3.fromRGB(T.R * 255, T.G * 255, T.B * 255))
end)
Settings:Bind("UI Toggle", Enum.KeyCode.RightControl, function()
    Library:Toggle()
end)
