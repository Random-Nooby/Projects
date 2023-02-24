# Vape Library
Original v3rmillon thread: https://v3rmillion.net/showthread.php?tid=1098651

## Boosting up the library
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Random-Nooby/Projects/main/Library/Vape/Source.lua"))()
```

## Creating a Window
```lua
local Window = Library:Window("Window Name", Color3.fromRGB(44, 120, 224))
```
```
1.) <String> - The name of the window.
2.) <Color3> - The color of the window.
```

## Creating a Tab
```lua
local Tab = Window:Tab("Tab Name")
```
```
1.) <String> - The name of the tab.
```

## Creating a Button
```lua
Tab:Button("Button Name", function()
   print("Pressed!")
end)
```
```
1.) <String> - The name of the button.
2.) <Function> - The function of the button.
```

## Creating a Toggle
```lua
Tab:Toggle("Toggle Name", false, function(State)
   print(State)
end)
```
```
1.) <String> - The name of the toggle.
2.) <Boolean> - The default state of the toggle.
3.) <Function> - The function of the toggle.
```

## Creating a Slider
```lua
Tab:Slider("Slider Name", 0, 100, 50, function(Value)
  print(Value)
end)
```
```
1.) <String> - The name of the slider.
2.) <Number> - The minimal value of the slider.
3.) <Number> - The maximum value of the slider.
4.) <Number> - The default value of the slider.
5.) <Function> - The function of the slider.
```

## Creating a Dropdown
```lua
Tab:Dropdown("Dropdown Name", {"Option 1", "Option 2", "Option 3", "Option 4", "Option 5"}, function(Item)
   print(Item)
end)
```
```
1.) <String> - The name of the dropdown.
2.) <Table> - The option in the dropdown.
3.) <Function> - The function of the dropdown.
```

## Creating a Textbox
```lua
Tab:Textbox("Textbox Name", false, function(Text)
   print(Text)
end)
```
```
1.) <String> - The name of the textbox.
2.) <Boolean> - Makes the text disappear in the textbox after losing focus.
3.) <Function> - The function of the textbox.
```

## Creating a Colorpicker
```lua
Tab:Colorpicker("Colorpicker Name", Color3.fromRGB(255,0,0), function(Color3)
   print(Color3)
end)
```
```
1.) <String> - The name of the colorpicker.
2.) <Color3> - The default value of the colorpicker.
3.) <Function> - The function of the colorpicker.
```

## Creating a Keybind
```lua
Tab:Bind("Bind Name", Enum.KeyCode.RightControl, function()
   print("Pressed!")
end)
```
```
1.) <String> - The name of the bind.
2.) <Keycode> - The default value of the bind.
3.) <Function> - The function of the bind.
```

## Creating a Label
```lua
Tab:Label("Label Text")
```
```
1.) <String> - The text of the label.
```

## Changing the present color of the Window
```lua
Library:ChangePresetColor(Color3.fromRGB(44, 120, 224))
```
```
1.) <Color3> - The new value of the present color.
```

## Toggling the Window
```lua
Library:Toggle()
```

## Destroying the Window
```lua
Library:Destroy()
```
