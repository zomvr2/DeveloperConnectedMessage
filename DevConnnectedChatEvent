--[[
	Title: OwnerAdviser
	Description: Send a system message via Chat
	when the creator of the game connects to the server.
	Author: zomvr2
]]

----->Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
----/>Services

----->Events
local DeveloperConnectedEvent = ReplicatedStorage:WaitForChild("DeveloperConnected") 
local DeveloperGConnectedEvent = ReplicatedStorage:WaitForChild("DeveloperGConnected")
----/>Events

----->DeveloperConnected Function
DeveloperConnectedEvent.OnClientEvent:Connect(function(CreatorNameById)
	StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "[System]: The developer " .. tostring(CreatorNameById) .. " has connected to the server.",
		Color = Color3.fromRGB(116, 237, 255),
		Font = Enum.Font.SourceSansBold,
		FontSize = Enum.FontSize.Size18
	})
end)
----/>DeveloperConnected Function

-----DeveloperGConnected Function
DeveloperGConnectedEvent.OnClientEvent:Connect(function(CreatorNameById)
	StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "[System]: The developer " .. tostring(CreatorNameById) .. " has connected to the server.",
		Color = Color3.fromRGB(116, 237, 255),
		Font = Enum.Font.SourceSansBold,
		FontSize = Enum.FontSize.Size18
	})
end)
----/>DeveloperGConnected Function
