AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/TS" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "The Teamspeak IP is: 77.68.72.113")
        CancelEvent()
	end
end)