local ping = 56 
spawn(function()
while wait(0.15) do
    wait(0.15)
    ping = math.random(55, 120)end end)
spawn(function()
    game:GetService("RunService").RenderStepped:connect(function()game.Players.LocalPlayer.Ping.Value = ping end)while wait(0.1) do local args = {
[1] = 500,
[2] = "LOL"
}
game:GetService("ReplicatedStorage").Events.UpdatePing:FireServer(unpack(args))end
end)
