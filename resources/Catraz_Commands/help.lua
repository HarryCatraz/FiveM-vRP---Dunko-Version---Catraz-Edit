AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/Help" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "If you require help on this server please ask in the chat. Also you can do /Commands for some basics.")
        CancelEvent()
	end
end)