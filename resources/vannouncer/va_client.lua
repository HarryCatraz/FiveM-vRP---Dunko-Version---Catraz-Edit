local m = {} -- <<< Don't touch this!
-----------[ SETTINGS ]---------------------------------------------------

-- Delay in minutes between messages
m.delay = 300

-- Prefix appears in front of each message. 
-- Suffix appears on the end of each message.
-- Leave a prefix/suffix empty ( '' ) to disable them.
m.prefix = '^6[AutoMessage] '
m.suffix = '^6.'

-- You can make as many messages as you want.
-- You can use ^0-^9 in your messages to change text color.
m.messages = {   
    'Message ^1 WELCOME TO VAST GAMING NETWORK',
	'Message ^1 PLEASE READ THE RULES',
    'Message ^1 THIS SERVER RESTARTS EVERY 4 HOURS',
	'Message ^1 THE TIMES FOR RESTARTS ARE AS FOLLOWS: 12am, 4am, 8am, 12pm, 4pm, 8pm',
}

--[ CODE, DON'T TOUCH THIS ]--

local playerIdentifiers
local enableMessages = true
local timeout = m.delay * 1000 * 60 -- from ms, to sec, to min
local playerOnIgnoreList = false
RegisterNetEvent('va:setPlayerIdentifiers')
AddEventHandler('va:setPlayerIdentifiers', function(identifiers)
    playerIdentifiers = identifiers
end)
Citizen.CreateThread(function()
    while playerIdentifiers == {} or playerIdentifiers == nil do
        Citizen.Wait(1000)
        TriggerServerEvent('va:getPlayerIdentifiers')
    end
    for iid in pairs(m.ignorelist) do
        for pid in pairs(playerIdentifiers) do
            if m.ignorelist[iid] == playerIdentifiers[pid] then
                playerOnIgnoreList = true
                break
            end
        end
    end
    if not playerOnIgnoreList then
        while true do
            for i in pairs(m.messages) do
                if enableMessages then
                    chat(i)
                    print('[vAnnouncer] Message #' .. i .. ' sent.')
                end
                Citizen.Wait(timeout)
            end
            
            Citizen.Wait(0)
        end
    else
        print('[vAnnouncer] Player is on ignorelist, no announcements will be received.')
    end
end)
function chat(i)
    TriggerEvent('chatMessage', '', {255,255,255}, m.prefix .. m.messages[i] .. m.suffix)
end
RegisterCommand('automessage', function()
    enableMessages = not enableMessages
    if enableMessages then
        status = '^2enabled^5.'
    else
        status = '^1disabled^5.'
    end
    TriggerEvent('chatMessage', '', {255, 255, 255}, '^5[vAnnouncer] automessages are now ' .. status)
end, false)
