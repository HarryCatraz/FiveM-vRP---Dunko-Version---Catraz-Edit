RegisterNetEvent('displayblip')
AddEventHandler('displayblip', function(x, y, z)
    local ped = GetPlayerPed(-1)
    local x,y,z = table.unpack(GetEntityCoords(ped, false))
    local blip1 = AddBlipForCoord(x, y, z)
    local user_id = vRP.getUserId(source)
    local plyPos = GetEntityCoords(GetPlayerPed(-1),  true)
    Citizen.Wait(0)
	if user_id ~= nil and vRP.hasPermission(user_id,"police.paycheck") then
		Citizen.Wait(0)
		vRP.openMenu(source,menu_pc)
		SetBlipSprite(blip1, 1)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString('Police GPS')
		SetBlipColour(blip1, 1)
		TriggerServerEvent('activateblip', plyPos.x, plyPos.y, plyPos.z)

	elseif user_id ~= nil and (ped ~= vRP.hasPermission(user_id,"police.paycheck")) then 
		-- MAKE BLIPS INVISABLE
	end    
end)