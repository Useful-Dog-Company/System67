return {
	refresh = {
		run = function (arguments)
			local Player = game:GetService("Players").LocalPlayer
			local Character = Player.Character
			local Humanoid = Character.Humanoid
			local HumanoidRootPart = Character.HumanoidRootPart
			local OriginalCFrame = HumanoidRootPart.CFrame
			Humanoid.Health = 0
			task.spawn(function()
				Player.CharacterAdded:Wait()
				if Player.Character then
					Character = Player.Character
					Character.HumanoidRootPart.CFrame = OriginalCFrame
				end
			end)
		end,
		aliases = {"reset"},
		description = "Refreshes your character and puts you back in the spot you were before"
	}
}
