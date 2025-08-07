-- Anti-AFK
print("Anti AFK activated")
task.spawn(function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        task.wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
end)

-- Main 
if game.PlaceId == 81440632616906 then
    pcall(function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/thebiraf/078b24d6aea94f58fc97a21e683abbfa/raw/d53813b1c974f40d8016fadbce977304b4f46dec/dig%2520to%2520earths%2520core"))()
    end)
elseif game.PlaceId == 13355910112 then
    pcall(function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/thebiraf/7ccd216eeac9ee67a028ad76a7c08dc4/raw/7076596495adb50d5ce48c2531636fa1f7a4ea29/every%2520seacond%2520you%2520get%2520faster"))()
    end)
elseif game.PlaceId == 5256165620 then
    pcall(function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/thebiraf/66efd9c34cf21884e9e1e3264388cbfc/raw/dc6f587f56db5d301439770c91630dfda7b2797e/3%25202%25201%2520blast%2520off"))()
    end)
elseif game.PlaceId == 75663528075786 then
    pcall(function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/thebiraf/32dfb4ed746c5d54cd2b031356666476/raw/224c41cc309b621cd2a972e8119c083a5facd254/How%2520to%2520train%2520ur%2520dragon"))()
    end)
elseif game.PlaceId == 13461044782 then
    pcall(function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/thebiraf/947737c51b4716a23a6e61b1d1c3dd85/raw/943c4e0d062e7c54fe2b0da29380feced3a66206/every%2520seacond%2520you%2520get%2520higher%2520jump%2520power"))()
    end)
-- Example code for future updates
elseif game.PlaceId == 0 then
    pcall(function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/thebiraf/451324b8baeaa0f0ca437e86f9811530/raw/db09f4f2d2318c2d1dff0a214303eee9628ab921/invalid"))()
    end)

-- if not supported
else
    pcall(function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/thebiraf/b8dc286e73020f5446f7998dc1651e42/raw/78c038e4a6c736235e19e009491282ec3ece503a/unsupported%2520game."))()
    end)
end
