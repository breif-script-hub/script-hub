if game.PlaceId == 81440632616906 then
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
        Name = "Dig to Earth's Core Script Hub Normal world",
        Icon = 0,
        LoadingTitle = "Script Hub",
        LoadingSubtitle = "by Breif",
        ShowText = "Rayfield",
        Theme = "Default",
        ToggleUIKeybind = "K",
        DisableRayfieldPrompts = false,
        DisableBuildWarnings = true,
        ConfigurationSaving = {
            Enabled = true,
            FolderName = "script_hub_configs",
            FileName = "default_config"
        },
        Discord = {
            Enabled = false,
            Invite = "noinvitelink",
            RememberJoins = true
        },
        KeySystem = false,
        KeySettings = {
            Title = "Untitled",
            Subtitle = "Key System",
            Note = "No method of obtaining the key is provided",
            FileName = "Key",
            SaveKey = true,
            GrabKeyFromSite = false,
            Key = {"Hello"}
        }
    })

    local MainTab = Window:CreateTab("Main")
    MainTab:CreateLabel("Remote events")

    local Button = MainTab:CreateButton({
        Name = "give 100k wins",
        Callback = function()
            local args = {"Cup15"}
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TreasureEvent"):FireServer(unpack(args))
        end
    })

    local CauldronButton = MainTab:CreateButton({
        Name = "Give 2.5k Gems",
        Callback = function()
            local args = {5}
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SpinPrizeEvent"):FireServer(unpack(args))
        end
    })

    local DominusButton = MainTab:CreateButton({
        Name = "Give Dominus Pet",
        Callback = function()
            local args = {4}
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SpinPrizeEvent"):FireServer(unpack(args))
        end
    })

    local CashButton = MainTab:CreateButton({
        Name = "give 100 trillion cash",
        Callback = function()
            local args = {6}
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SpinPrizeEvent"):FireServer(unpack(args))
        end
    })

    local TenXCashButton = MainTab:CreateButton({
        Name = "10 x cash",
        Callback = function()
            local args = {8}
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SpinPrizeEvent"):FireServer(unpack(args))
        end
    })

    local Give10SpinsButton = MainTab:CreateButton({
        Name = "give 10 spins",
        Callback = function()
            local args = {10}
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SpinPrizeEvent"):FireServer(unpack(args))
        end
    })

    MainTab:CreateLabel("Duplication Toggles")

    local dupeWinsToggle = false
    MainTab:CreateToggle({
        Name = "Dupe Wins",
        CurrentValue = false,
        Flag = "dupeWins",
        Callback = function(value)
            dupeWinsToggle = value
            spawn(function()
                while dupeWinsToggle do
                    local args = {"Cup15"}
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TreasureEvent"):FireServer(unpack(args))
                    task.wait(0.1)
                end
            end)
        end
    })

    local dupeGemsToggle = false
    MainTab:CreateToggle({
        Name = "Dupe Gems",
        CurrentValue = false,
        Flag = "dupeGems",
        Callback = function(value)
            dupeGemsToggle = value
            spawn(function()
                while dupeGemsToggle do
                    local args = {5}
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SpinPrizeEvent"):FireServer(unpack(args))
                    task.wait(0.1)
                end
            end)
        end
    })

    local dupeDominusToggle = false
    MainTab:CreateToggle({
        Name = "Dupe Dominus Pet",
        CurrentValue = false,
        Flag = "dupeDominus",
        Callback = function(value)
            dupeDominusToggle = value
            spawn(function()
                while dupeDominusToggle do
                    local args = {4}
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SpinPrizeEvent"):FireServer(unpack(args))
                    task.wait(0.1)
                end
            end)
        end
    })

    local dupeSpinsToggle = false
    MainTab:CreateToggle({
        Name = "Dupe 10 Spins",
        CurrentValue = false,
        Flag = "dupeSpins",
        Callback = function(value)
            dupeSpinsToggle = value
            spawn(function()
                while dupeSpinsToggle do
                    local args = {10}
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SpinPrizeEvent"):FireServer(unpack(args))
                    task.wait(0.1)
                end
            end)
        end
    })

    local InfMoneyToggle = false
    MainTab:CreateToggle({
        Name = "Give Inf Money (takes a few mins)",
        CurrentValue = false,
        Flag = "infMoney",
        Callback = function(value)
            InfMoneyToggle = value
            spawn(function()
                if InfMoneyToggle then
                    local player = game.Players.LocalPlayer
                    local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
                    screenGui.Name = "InfMoneyGui"
                    screenGui.ResetOnSpawn = false

                    local barBackground = Instance.new("Frame")
                    barBackground.Parent = screenGui
                    barBackground.Size = UDim2.new(0, 400, 0, 30)
                    barBackground.Position = UDim2.new(0.5, -200, 0.1, 0)
                    barBackground.BackgroundColor3 = Color3.fromRGB(80, 80, 80)

                    local progressBar = Instance.new("Frame")
                    progressBar.Parent = barBackground
                    progressBar.Size = UDim2.new(0, 0, 1, 0)
                    progressBar.BackgroundColor3 = Color3.fromRGB(0, 170, 0)

                    local progressLabel = Instance.new("TextLabel")
                    progressLabel.Parent = barBackground
                    progressLabel.Size = UDim2.new(1, 0, 1, 0)
                    progressLabel.BackgroundTransparency = 1
                    progressLabel.TextColor3 = Color3.new(1, 1, 1)
                    progressLabel.Font = Enum.Font.SourceSansBold
                    progressLabel.TextSize = 18
                    progressLabel.Text = "Progress: 0 / 45"

                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DigEvent"):FireServer("hello")
                    task.wait(1)

                    for i = 1, 45 do
                        if not InfMoneyToggle then
                            break
                        end
                        local args = {8}
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SpinPrizeEvent"):FireServer(unpack(args))
                        progressLabel.Text = "Progress: " .. i .. " / 45"
                        progressBar.Size = UDim2.new(i / 45, 0, 1, 0)
                        task.wait(4)
                    end

                    barBackground:Destroy()
                    InfMoneyToggle = false
                    Window.Flags["infMoney"] = false
                    Window:SaveConfiguration()
                end
            end)
        end
    })

    MainTab:CreateToggle({
        Name = "Super Win Dupe",
        CurrentValue = false,
        Flag = "superWinDupe",
        Callback = function(value)
            if value then
                spawn(function()
                    local duration = 12
                    local startTime = os.time()
                    while os.time() - startTime < duration do
                        local args = {"Cup15"}
                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TreasureEvent"):FireServer(unpack(args))
                        task.wait(0.1)
                    end
                    local TeleportService = game:GetService("TeleportService")
                    local player = game.Players.LocalPlayer
                    TeleportService:Teleport(game.PlaceId, player)
                    Window.Flags["superWinDupe"] = false
                end)
            end
        end
    })

    Window:LoadConfiguration()
end
