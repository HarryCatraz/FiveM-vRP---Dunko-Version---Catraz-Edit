AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/DOJ" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "The Department Of Justice website address is: 77.68.72.113/doj")
        CancelEvent()
	end
end)