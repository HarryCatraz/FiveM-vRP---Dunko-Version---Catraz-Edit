AddEventHandler('playerSpawned', function(spawn)

	SetNotificationTextEntry("STRING")
	AddTextComponentString("~b~Welcome to VGNFiveM.~n~<b>~h~~r~Please read the rules.</b>~n~~w~Enjoy your stay!") 
	DrawNotification(true, false) 
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if GetPlayerWantedLevel(PlayerId()) ~= 0 then
            SetPlayerWantedLevel(PlayerId(), 0, false)
            SetPlayerWantedLevelNow(PlayerId(), false)
        end
    end
end)

Citizen.CreateThread(function()
    for i = 1, 12 do
        Citizen.InvokeNative(0xDC0F817884CDD856, i, false)
    end
end)


-- api

function vRP.getHunger(user_id)
  local data = vRP.getUserDataTable(user_id)
  if data then
    return data.hunger
  end

  return 0
end

function vRP.getThirst(user_id)
  local data = vRP.getUserDataTable(user_id)
  if data then
    return data.thirst
  end

  return 0
end

function vRP.setHunger(user_id,value)
  local data = vRP.getUserDataTable(user_id)
  if data then
    data.hunger = value
    if data.hunger < 0 then data.hunger = 0
    elseif data.hunger > 100 then data.hunger = 100 
    end

    -- update bar
    local source = vRP.getUserSource(user_id)
    vRPclient.setProgressBarValue(source, {"vRP:hunger",data.hunger})
    if data.hunger >= 100 then
      vRPclient.setProgressBarText(source,{"vRP:hunger",lang.survival.starving()})
    else
      vRPclient.setProgressBarText(source,{"vRP:hunger",""})
    end
  end
end

function vRP.setThirst(user_id,value)
  local data = vRP.getUserDataTable(user_id)
  if data then
    data.thirst = value
    if data.thirst < 0 then data.thirst = 0
    elseif data.thirst > 100 then data.thirst = 100 
    end

    -- update bar
    local source = vRP.getUserSource(user_id)
    vRPclient.setProgressBarValue(source, {"vRP:thirst",data.thirst})
    if data.thirst >= 100 then
      vRPclient.setProgressBarText(source,{"vRP:thirst",lang.survival.thirsty()})
    else
      vRPclient.setProgressBarText(source,{"vRP:thirst",""})
    end
  end
end