-- CONFIG --

-- Sound volume (0.0 - 1.0)
local volume = 1.0

-- CODE --

AddEventHandler("playerSpawned", function(spawn)
	alreadyDied = false
end)

Citizen.CreateThread(function()
	while true do
		Wait(1)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			if not GetEntityHealth(playerPed) and not alreadyDied then
				SendNUIMessage({
					playdeathsound = true,
					deathvolume = volume
					})
				alreadyDied = true
			end
		end
	end
end)