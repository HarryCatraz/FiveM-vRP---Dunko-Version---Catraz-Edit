AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/LSPD" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "The Police website address is: 77.68.72.113/LSPD")
        CancelEvent()
	end
end)