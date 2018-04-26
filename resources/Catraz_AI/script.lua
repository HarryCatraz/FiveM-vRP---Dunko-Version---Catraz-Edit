Citizen.CreateThread(function()
    while true do
    	SetVehicleDensityMultiplierThisFrame(0.6)
		SetPedDensityMultiplierThisFrame(0.6)
		SetRandomVehicleDensityMultiplierThisFrame(0.6)
		SetParkedVehicleDensityMultiplierThisFrame(0.6)
		SetScenarioPedDensityMultiplierThisFrame(0.6, 0.6)
		Citizen.Wait(1)
	end
end)