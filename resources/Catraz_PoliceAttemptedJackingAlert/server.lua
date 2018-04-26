RegisterServerEvent( 'shotsFired' )
AddEventHandler( 'shotsFired', function(x, y, z) 
    TriggerClientEvent('notify911', -1, x, y, z)
end )