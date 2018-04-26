function CatrazTimer()

	local time = 300 -- 300 seconds OR 5 minutes
	local ped = GetPlayerPed(-1)

	if in_coma then

        if IsEntityDead(ped) then -- if dead, resurrect
          	while (time ~= 0) do -- Whist we have time to wait
				Wait( 1000 ) -- Wait a second
				time = time - 1
   			end 
   		SetEntityHealth(ped, 0)   
		end
	end
end