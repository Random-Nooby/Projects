local Scripts = {
  [537413528] = "https://raw.githubusercontent.com/Random-Nooby/Projects/main/Scripts/Obfuscated/Valyse/Scripts/Build%20A%20Boat%20For%20Treasure.lua",
  [8568266872] = "https://raw.githubusercontent.com/Random-Nooby/Projects/main/Scripts/Obfuscated/Valyse/Scripts/Kill%20Monsters%20to%20Save%20Princess.lua"
}



if Scripts[game.PlaceId] == nil then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Unsupported Game :(";
        Text = ":(";
        Duration = 5;
    })
else
    loadstring(game:HttpGet(Scripts[game.PlaceId]))()
end
