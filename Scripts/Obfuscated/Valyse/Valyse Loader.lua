local CoreGui = game:GetService("StarterGui")

local GameTable = {
  [537413528] = "https://raw.githubusercontent.com/Random-Nooby/Projects/main/Scripts/Obfuscated/Valyse/Scripts/Build%20A%20Boat%20For%20Treasure.lua"
}



if GameTable[game.PlaceId] == nil then
    CoreGui:SetCore("SendNotification", {
        Title = "Unsupported Game :(";
        Text = ":(";
        Duration = 5;
    })
else
    loadstring(game:HttpGet(GameTable[game.PlaceId]))()
end
