Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    local ped = GetPlayerPed(-1)
      if IsControlPressed(0,303) then -- ~ Key
        if tvRP.getNearestOwnedVehicle(5) ~= null then
          local veh = "car"
          if not ok then -- prevent stealing detection on owned vehicle
            tvRP.vc_toggleLock(veh)
            tvRP.playSound("HUD_MINI_GAME_SOUNDSET","5_SEC_WARNING")
            print("Attempted To Lock Car: "..veh)
            Citizen.Wait(2000)
          else
            print("Failed To Lock Car")
            Citizen.Wait(2000)
          end
      end
    end
  end
end)