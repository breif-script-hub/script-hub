local player = game.Players.LocalPlayer
local placeId = game.PlaceId

if player.PlayerGui:FindFirstChild("PlaceIdGui") then
    player.PlayerGui.PlaceIdGui:Destroy()
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PlaceIdGui"
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 150)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local idLabel = Instance.new("TextLabel")
idLabel.Size = UDim2.new(0.8, 0, 0.3, 0)
idLabel.Position = UDim2.new(0.1, 0, 0.15, 0)
idLabel.Text = tostring(placeId)
idLabel.TextColor3 = Color3.new(1, 1, 1)
idLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
idLabel.TextScaled = true
idLabel.Parent = mainFrame

local copyButton = Instance.new("TextButton")
copyButton.Size = UDim2.new(0.35, 0, 0.25, 0)
copyButton.Position = UDim2.new(0.1, 0, 0.6, 0)
copyButton.Text = "Copy"
copyButton.TextColor3 = Color3.new(1, 1, 1)
copyButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
copyButton.Parent = mainFrame

local dismissButton = Instance.new("TextButton")
dismissButton.Size = UDim2.new(0.35, 0, 0.25, 0)
dismissButton.Position = UDim2.new(0.55, 0, 0.6, 0)
dismissButton.Text = "Dismiss"
dismissButton.TextColor3 = Color3.new(1, 1, 1)
dismissButton.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
dismissButton.Parent = mainFrame

copyButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(tostring(placeId))
        copyButton.Text = "Copied!"
        task.wait(1)
        copyButton.Text = "Copy"
    else
        copyButton.Text = "Can't Copy"
        task.wait(1.5)
        copyButton.Text = "Copy"
    end
end)

dismissButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
