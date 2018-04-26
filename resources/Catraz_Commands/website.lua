AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/Website" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "The website address is: www.VGNFiveM.com")
        CancelEvent()
	end
end)