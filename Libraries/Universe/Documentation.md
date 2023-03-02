# Universe

## Boosting up the Library
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Random-Nooby/Projects/main/Libraries/Universe/Source/Source.lua"))()
```

## Creating a Window
```lua
local Window = Library.new("Window", "Configuration Path")
```
```lua
1.) <String> - The name of the window.
2.) <String> - The configuration path that will be in the user exploits workspace folder.
```

## Creating a Tab
```lua
local Tab = Window.new_tab("rbxassetid://4483345998")
```
```lua
1.) <String> - The icon of the tab.
```

## Creating a Section
```lua
local Section = Tab.new_section("Section")
```
```
1.) <String> - The name of the section.
```

## Creating a Sector
### Left Sector
```lua
local Sector = Section.new_sector("Sector", "Left")
```
```
1.) <String> - The name of the sector.
2.) <String> - The side of the sector.
```
### Right Sector
```lua
local Sector = Section.new_sector("Sector", "Right")
```
```
1.) <String> - The name of the sector.
2.) <String> - The side of the sector.
```

## Creating a Button
```lua
Sector.element("Button", "Button", nil, function()
    print("Pressed!")
end)
```
```
1.) <String> - The type of the element which in this case is an button.
2.) <String> - The name of the element.
3.) <Nil> - The data of the element but you can just leave it as nil because it is not important for button.
4.) <Function> - The callback of the button.
```

## Creating a Toggle
```lua
local Toggle = Sector.element("Toggle", "Toggle", false, function(v)
    print(v.Toggle)
"Flag", end)
```
```
1.) <String> - The type of the element which in this case is an toggle.
2.) <String> - The name of the element.
3.) <Boolean> - The default value of the toggle.
4.) <Function> - The callback of the element.
5.) <String> - The flag of the element however this is optional and if you leave it as nil, the flag string will automatic be the name of the element.
```

### Changing the visibility of an existing Toggle
```lua
Toggle:set_visible(false)
```
```
1.) <Boolean> - The value of the visibility of the toggle.
```

### Updating an existing Toggle
```lua
Toggle:set_value(true, function(v)
    print("Current Value: ", v.Toggle)
end)
```
```
1.) <Boolean> - The value of the toggle.
2.) <Function> - The new callback of the toggle but if you dont want the function to be a new function, just leave the new function as nil (Blank).
```

### Creating a Keybind
```lua
local Keybind = Toggle:add_keybind(Enum.KeyCode.RightControl, function()
    print("Pressed!")
end)
```
```
1.) <KeyCode> - The default value of the keybind.
2.) <Function> - The callback of the keybind.
```

#### Updating an existing Keybind
```lua
Keybind:set_value(new_value, cb)
```
```
1.) <KeyCode> - The new value of the keybind.
2.) <Function> - The new callback of the toggle but if you dont want the function to be a new function, just leave the new function as nil (Blank).
```
                                `
### Creating a Colorpicker
```lua
local Colorpicker = Toggle:add_color({Color = Color3.fromRGB(255, 255, 255)}, false, function(v)
   print(v.Color)    
end)
```
```
1.) <Color3> - The default value of the colorpicker.
2.) <Boolean> - If the boolean is true then the colorpicker will have an transparency.
3.) <Function> - The callback of the colorpicker.
```

#### Updating an existing Colorpicker
```lua
Colorpicker:set_value(Color3.fromRGB(255, 0, 0)}, function(v)
    print("Current Value: ", v.Color)
end)
```
```
1.) <Color3> - The new value of the colorpicker.
2.) <Function> - The new callback of the toggle but if you dont want the function to be a new function, just leave the new function as nil (Blank).
```
