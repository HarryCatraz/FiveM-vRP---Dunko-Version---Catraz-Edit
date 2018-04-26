AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/Owners" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "Harry Catraz is the current owner of VGNFiveM")
        CancelEvent()
	end
end)