Citizen.CreateThread(function()
    while true do  

    	local ped = GetPlayerPed(-1)
		local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
		local nveh = CreateVehicle(mhash, x,y,z+0.5, 0.0, true, false)
		
    	Citizen.Wait(1000)
    	if IsPedSittingInAnyVehicle(ped) then
    		Citizen.Wait(1000)
    		WashDecalsFromVehicle(vehicle, 1.0)
    		WashDecalsFromVehicle(GetVehiclePedIsUsing(GetPlayerPed(-1)), 1.0)
			SetVehicleDirtLevel(GetVehiclePedIsUsing(GetPlayerPed(-1)))
			SetVehicleDirtLevel(vehicle, 0.0)
			SetVehicleDirtLevel(nveh, 0.0)
		end
    end
end)