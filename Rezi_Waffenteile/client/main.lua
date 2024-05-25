local scrapCollectPoint = vector3(-588.96,-1768.19,22.66) 
local scrapProcessPoint = vector3(-127.04,-2233.44,7.98) 


local isCollecting = false

function PlayCollectAnimation()
    local playerPed = PlayerPedId()
    RequestAnimDict('amb@prop_human_bum_bin@base')
    while not HasAnimDictLoaded('amb@prop_human_bum_bin@base') do
        Citizen.Wait(0)
    end
    TaskPlayAnim(playerPed, 'amb@prop_human_bum_bin@base', 'base', 8.0, -8.0, -1, 1, 0, false, false, false)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerCoords = GetEntityCoords(PlayerPedId())

        if #(playerCoords - scrapCollectPoint) < 5.0 then
            ESX.ShowHelpNotification('Drücke ~INPUT_CONTEXT~, um Schrott zu sammeln.')
            if IsControlJustReleased(0, 38) and not isCollecting then
                isCollecting = true
                PlayCollectAnimation()
                Citizen.Wait(5000)
                ClearPedTasks(PlayerPedId())
                TriggerServerEvent('SirRezi_Waffenfarm:collectScrap')
                isCollecting = false
            end
        end

        if #(playerCoords - scrapProcessPoint) < 5.0 then
            ESX.ShowHelpNotification('Drücke ~INPUT_CONTEXT~, um Schrott zu verarbeiten.')
            if IsControlJustReleased(0, 38) then
                TriggerServerEvent('SirRezi_Waffenfarm:processScrap')
            end
        end
    end
end)
