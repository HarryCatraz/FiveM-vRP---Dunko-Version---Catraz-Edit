Citizen.CreateThread(function()
    while true do
    	Citizen.Wait(2)
        SetPlayerWantedLevel(PlayerId(), 0, false)
        SetPlayerWantedLevelNow(PlayerId(), false)
    end
end)