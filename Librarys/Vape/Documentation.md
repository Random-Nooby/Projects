# Vape Library

## Boosting up the library
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Random-Nooby/Projects/main/Librarys/Vape/Vape%20Source.lua"))()
```

## Creating a Window
```lua
local Window = Library:Window("Title", Color3.fromRGB(44, 120, 224))
```

## Creating a Tab
```lua
local Tab = Window:Tab("Tab")
```

## Creating a Button
```lua
Tab:Button("Button", function()
   print("Pressed!")
end)
```

## Creating a Toggle
```lua
Tab:Toggle("Toggle", false, function(State)
   print(State)
end)
```

## Creating a Dropdown
```lua
Tab:Dropdown("Dropdown", {"Option 1", "Option 2", "Option 3"}, function(Item)
   print(Item)
end)
```

## Creating a Textbox
```lua
Tab:Textbox("Textbox", false, function(Text)
   print(Text)
end)
```

## Creating a Colorpicker
```lua
Tab:Colorpicker("Colorpicker", Color3.fromRGB(255,0,0), function(Color3)
   print(Color3)
end)
```

## Creating a Keybind
```lua
Tab:Bind("Bind", Enum.KeyCode.RightControl, function()
   print("Pressed!")
end)
```

## Creating a Label
```lua
Tab:Label("Label")
```

## Toggling the Window
```lua
Library:Toggle()
```

## Changing the present color
```lua
Library:ChangePresetColor(Color3.fromRGB(Color3.fromRGB(30, 30, 30))
```
