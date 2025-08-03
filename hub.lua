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
        loadstring(game:HttpGet("https://gist.githubusercontent.com/thebiraf/078b24d6aea94f58fc97a21e683abbfa/raw/d53813b1c974f40d8016fadbce977304b4f46dec/dig%2520to%2520earths%2520core"))()
    end)
end


if game.PlaceId == 13355910112 then
    pcall(function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/thebiraf/7205d43e2910940049de839dde5c9392/raw/cd46d41427c6ea78c8dfb2b5556460aebe7fe1bd/every%2520seacond%2520you%2520get%2520faster"))()
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
