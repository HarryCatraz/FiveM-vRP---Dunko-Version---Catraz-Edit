local notificationText = "Police Dispatch: Pedestrian Breaking In A Vehicle - Respond Code Three"

local blacklistedWeapons = {
	"WEAPON_UNARMED",
	"WEAPON_STUNGUN",
	"WEAPON_KNIFE",
	"WEAPON_KNUCKLE",
	"WEAPON_NIGHTSTICK",
	"WEAPON_HAMMER",
	"WEAPON_BAT",
	"WEAPON_GOLFCLUB",
	"WEAPON_CROWBAR",
	"WEAPON_BOTTLE",
	"WEAPON_DAGGER",
	"WEAPON_HATCHET",
	"WEAPON_MACHETE",
	"WEAPON_FLASHLIGHT",
	"WEAPON_SWITCHBLADE",
	"WEAPON_FIREEXTINGUISHER",
	"WEAPON_PETROLCAN",
	"WEAPON_SNOWBALL",
	"WEAPON_FLARE",
	"WEAPON_BALL"
}

local policeSkins = {
	"mp_m_freemode_01",
	"s_m_m_paramedic_01",
	"s_m_y_swat_01",
	"s_m_y_sheriff_01",
	"s_m_y_hwaycop_01",
	"s_m_y_cop_01",
	"s_m_m_CIASec_01",
	"s_m_m_Armoured_01",
	"ig_paper",
	"u_m_m_jewelsec_01",
	"ig_prolsec_02",
	"mp_g_m_pros_01",
	"Santaclaus",
	"ig_bankman",
}

local policeVehicles = {
	"example_model1",
	"example_model2"
}

-- [[ You shouldn't have to touch below here ]] --

local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1),true))
local playerX = 0
local playerY = 0
local playerZ = 0


Citizen.CreateThread( function()
	while true do
		Citizen.Wait(5)
		local ped = GetPlayerPed(-1)
		if not CheckPolice(ped) then
			local pedShooting = IsPedJacking(ped)
			local isBlacklistedWeapon = false
			x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1),true))
			playerX = tonumber(string.format("%.2f", x))
    		playerY = tonumber(string.format("%.2f", y))
    		playerZ = tonumber(string.format("%.2f", z))
			
    		if CheckCity(playerX, playerY) then
				for i,v in ipairs(blacklistedWeapons) do
        			if GetSelectedPedWeapon(ped) == v then
        				isBlacklistedWeapon = true
        			end
    			end 

				if pedShooting and not isBlacklistedWeapon then
					TriggerServerEvent('shotsFired', playerX, playerY, playerZ)
					Citizen.Wait(3000)
				end

				isBlacklistedWeapon = false
			end
		end
	end
end)

RegisterNetEvent( 'notify911' )
AddEventHandler( 'notify911', function(x, y, z)
	local ped = GetPlayerPed(-1)

	if CheckPolice(ped) then
		drawNotification(notificationText)
		local blip = AddBlipForCoord(x, y, z)
		local blipActive = true

		local minX = x - 5;
		local maxX = x + 5;
		local minY = y - 5;
		local maxY = y + 5;

		while blipActive do
			Citizen.Wait(0)
			if playerX > minX and playerX < maxX and playerY > minY and playerY < maxY then
				RemoveBlip(blip)	
				blipActive = false
			end
		end
	end
end )

function drawNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(true, false)
end


function CheckPolice(ped)
	local policeVeh = false

	for i = 1, #policeVehicles do
		if IsPedInModel(ped, GetHashKey(policeVehicles[i])) then
			policeVeh = true
		end
	end

	if policeVeh or IsPedInAnyPoliceVehicle(ped) or CheckSkin(ped) then
		return true
	end
	return false
end


function CheckSkin(ped)
	for i = 1, #policeSkins do
		if GetHashKey(policeSkins[i]) == GetEntityModel(ped) then
			return true
		end
	end
	return false
end

function CheckCity(x, y)
	-- LS --
	local lsNorth = 1309.00 --
	local lsSouth = -3643.00 --
	local lsWest = 2608.00 --
	local lsEast = 1590.00 --

	-- Paleto --
	local pNorth = 7123.00 --
	local pSouth = 5678.00 --
	local pWest = -595.00 --
	local pEast = 799.00 --

	-- Sandy --
	local sNorth = 4089.00 --
	local sSouth = 3291.00 --
	local sWest = 1350.00 --
	local sEast = 2232.00 --

	-- Grapeseed --
	local gNorth = 5321.00 --
	local gSouth = 4277.00 --
	local gWest = 2977.00 --
	local gEast = 1633.00 --

	-- Chumash --
	local cNorth = 1385.00 --
	local cSouth = 187.00 --
	local cWest = -3451.00 --
	local cEast = -2869.00 --

	-- Tataviam --
	local tNorth = 862.00 --
	local tSouth = 0.00 --
	local tWest = 2378.00 --
	local tEast = 2738.00 --

	
	if (x <= lsEast) and (x >= lsWest) and (y <= lsNorth) and (y >= lsSouth) then
		return true
	elseif (x <= pEast) and (x >= pWest) and (y <= pNorth) and (y >= pSouth) then
		return true
	elseif (x <= sEast) and (x >= sWest) and (y <= sNorth) and (y >= sSouth) then
		return true
	elseif (x <= gEast) and (x >= gWest) and (y <= gNorth) and (y >= gSouth) then
		return true
	elseif (x <= cEast) and (x >= cWest) and (y <= cNorth) and (y >= cSouth) then
		return true
	elseif (x <= tEast) and (x >= tWest) and (y <= tNorth) and (y >= tSouth) then
		return true
	end
	return false
	
end