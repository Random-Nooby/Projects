local Games = {
    [286090429] = "https://raw.githubusercontent.com/Random-Nooby/Projects/main/Scripts/Obfuscated/Project%20Nova/Scripts/Arsenal.lua"
}



if Games[game.PlaceId] == nil then
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Unsupported Game...",
            Text = ":(",
            Duration = 5
        })

else
    loadstring(game:HttpGet(GameTable[game.PlaceId]))()
end
