--[[
This script isn't finish yet because i too lazy so i wont obfuscate it yet so that mean you can have the auto farm code thingy.
However when this is finish, i will obfuscate it, kekeke.
]]

--// Init
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Random-Nooby/Projects/main/Library/Vape/Source.lua"))()
local Window = Library:Window("Valyse", Color3.fromRGB(44, 120, 224))

local Tabs = {
	Farm = Window:Tab("Auto Farm")
}

--// Farm

Tabs.Farm:Toggle("Auto Farm", false, function(State)
	for i, v in pairs(game:GetService("Workspace").Waves:GetDescendants()) do
		if v.Name == "Cheat" then
			v:Destroy()
		end
	end
	task.wait(1)
	function GetBase()
		return game:GetService("Players").LocalPlayer.stats["Battle Region"].Value
	end
	Toggle = State
	while Toggle do
		task.wait()
		Enemies = game:GetService("Workspace").Waves:WaitForChild(GetBase()).Enemy:GetChildren()
		for i = 1, #Enemies do
			local v = Enemies[i]
			if v:IsA("Model") and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
				game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position)
			end
			if game.Players.LocalPlayer:DistanceFromCharacter(v.PrimaryPart.Position) < 10 then
				game:GetService("ReplicatedStorage").Remote.Weapon.TakeDamage:FireServer()
			end
		end
	end
end)
