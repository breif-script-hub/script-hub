if game.PlaceId == 81440632616906 then
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
        Name = "Dig to Earth's Core Script Hub",
        Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
        LoadingTitle = "Script Hub",
        LoadingSubtitle = "by Breif",
        ShowText = "Rayfield", -- For mobile users to unhide Rayfield
        Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

        ToggleUIKeybind = "K", -- Keybind to toggle the UI

        DisableRayfieldPrompts = false,
        DisableBuildWarnings = false, -- Prevents Rayfield from warning about version mismatches

        ConfigurationSaving = {
            Enabled = true,
            FolderName = nil, -- Optional: specify folder name
            FileName = "script_hub"
        },

        Discord = {
            Enabled = false, -- Set to true if you want to prompt a Discord join
            Invite = "noinvitelink", -- Just the code, not the full URL
            RememberJoins = true
        },

        KeySystem = false, -- Set to true to use key system
        KeySettings = {
            Title = "Untitled",
            Subtitle = "Key System",
            Note = "No method of obtaining the key is provided",
            FileName = "Key",
            SaveKey = true,
            GrabKeyFromSite = false,
            Key = {"Hello"} -- Acceptable keys
        }
    })
end
