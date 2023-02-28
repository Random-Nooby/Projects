# STX Notification
## Script
```lua
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Random-Nooby/Projects/main/Notification/STX/Source/Client.lua"))()

Notification:Notify(
    {Title = "Notification Title", Description = "Notification Description"},
    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 5, Type = "default"}
)
```
