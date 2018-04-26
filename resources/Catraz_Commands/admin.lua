AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/Admin" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "The Admin Panel website address is: 77.68.72.113")
        CancelEvent()
	end
end)