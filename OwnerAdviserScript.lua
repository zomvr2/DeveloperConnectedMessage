--[[
	Title: OwnerAdviser
	Description: Send a system message via Chat
	when the creator of the game connects to the server.
	Author: zomvr2
]]

----->Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
----/>Services

----->Events
local DeveloperConnectedEvent = ReplicatedStorage:WaitForChild("DeveloperConnected") 
local DeveloperGConnectedEvent = ReplicatedStorage:WaitForChild("DeveloperGConnected")
----/>Events

----->Group Developers
local GroupDevelopers = {12345, 12345, 12345}
----/>Group Developers

----->Function
Players.PlayerAdded:Connect(function(player)
	if game.CreatorType == Enum.CreatorType.User then
		if player.UserId == YOUR_USER_ID then
			local CreatorNameById = Players:GetPlayerByUserId(player.UserId)
			DeveloperConnectedEvent:FireAllClients(CreatorNameById)
		end
	else
		if table.find(GroupDevelopers, player.UserId) then
			local CreatorNameById = Players:GetPlayerByUserId(player.UserId)
			DeveloperGConnectedEvent:FireAllClients(CreatorNameById)
		end
	end
end)
----/>Function
