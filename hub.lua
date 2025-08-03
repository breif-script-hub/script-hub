print ("anti afk activated")
task.spawn(function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        task.wait(1)
        vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end)
end)
-- main

if game.PlaceId == 81440632616906 then
    pcall(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/5NHqnmJ6"))()
    end)
end

if game.PlaceId == 17625359962 or game.PlaceId == 117398147513099 then
    pcall(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/LVGpyNMS"))()
    end)
end

if game.PlaceId == 13355910112 then
    pcall(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/FXtjAeWm"))()
    end)
end

if game.PlaceId == 5256165620 then
    pcall(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/MdA6jZvT"))()
    end)
end

-- new place
if game.PlaceId == 75663528075786 then
    pcall(function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/thebiraf/32dfb4ed746c5d54cd2b031356666476/raw/224c41cc309b621cd2a972e8119c083a5facd254/How%2520to%2520train%2520ur%2520dragon"))()
    end)
end
