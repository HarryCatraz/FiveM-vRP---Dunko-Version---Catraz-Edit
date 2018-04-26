AddEventHandler("playerSpawned", function(spawn)
	SetCanAttackFriendly(GetPlayerPed(-1), false, false)  --SetCanAttackFriendly(GetPlayerPed(-1), true, false)
	NetworkSetFriendlyFireOption(false) --NetworkSetFriendlyFireOption(true)
end)