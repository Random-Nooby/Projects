local Emojis = game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://raw.githubusercontent.com/Random-Nooby/Projects/main/Scripts/Open%20Source/Emoji%20Chat%20Extension/Emojis%20Resources.json"))
local Name, Method, Index = table.unpack(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://raw.githubusercontent.com/Random-Nooby/Projects/main/Scripts/Open%20Source/Emoji%20Chat%20Extension/Games.json"))[tostring(game.PlaceId)] or {"SayMessageRequest", "FireServer", 1})

local function Replace(Message)
	Message = assert(Message, "[Emoji Chat Extension] - Unexpected error: parameter \"Message\" missing.")

	for Match in string.gmatch(Message, "%b::") do
		Message = string.gsub(Message, Match, Emojis[string.sub(Match, 2, -2)])
	end

	return Message
end

local OldNamecall; OldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
	local Self, Arguments, NamecallMethod = ..., {select(2, ...)}, getnamecallmethod()

	if NamecallMethod == Method and Self.Name == Name then
		Arguments[Index] = Replace(Arguments[Index])

		return Self[Method](Self, table.unpack(Arguments))
	end

	return OldNamecall(...)
end))
