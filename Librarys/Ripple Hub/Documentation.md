# Ripple Hub
## Boosting up the Library
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Random-Nooby/Projects/main/Librarys/Ripple%20Hub/Ripple%20Hub%20Source.lua"))()
```

## Creating a Window
```lua
local Window = Library:Window("Text 1" "Text 2", "Text 3", "4483345998", Enum.KeyCode.RightControl)
```

## Creating a Tab
```lua
local Tab = Window:Tab("Tab", "4483362458")
```

## Creating a Seperator
```lua
Stats:Seperator("Seperator")
```

## Creating a Button
```lua
Tab:Button("Button", function()
   print("Pressed!")
end)
```

## Creating a Toggle
```lua
Tab:Toggle("Toggle", "6022668898", false, function(State)
    print(State)
end)
```

## Creating a Dropdown
```lua
local Dropdown = Tab:Dropdown("Dropdown", "Option 1", "Option 1", "Option 2", "Option 3", function(Item)
   print(Item)
end)
```

### Adding Dropdown Items
```lua
Dropdown:Add({"Option 4", "Option 5", "Option 6"})
```

### Clearing Dropdown Items
```lua
Dropdown:Clear()
```

## Creating a Slider
```lua
Tab:Slider("Dropdown", 0, 100, 50, function(Value)
   print(Value)
end)
```

## Creating a Textbox
```lua
Tab:Textbox("Textbox , false, function(Text)
   print(Text)
end)
```

## Creating a Label
```lua
local Label = Tab:Label("Text")
```

### Updating Label
```lua
Label:Set("New Text")
```

## 
