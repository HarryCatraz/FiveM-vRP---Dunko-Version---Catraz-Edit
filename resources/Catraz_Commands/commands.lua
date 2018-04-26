AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/Commands" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "Commands on this server are as follows: /Admin, /DOJ, /Kickme, /LSPD, /Owners, /TS, /Website, /Help, /Commands")
        CancelEvent()
	end
end)