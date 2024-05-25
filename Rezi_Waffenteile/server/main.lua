local ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('SirRezi_Waffenfarm:collectScrap')
AddEventHandler('SirRezi_Waffenfarm:collectScrap', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local item = 'scrap'
    local count = math.random(1, 5)

    xPlayer.addInventoryItem(item, count)
    TriggerClientEvent('esx:showNotification', source, 'Du hast ~b~' .. count .. 'x Schrott~s~ gesammelt.')
end)

RegisterServerEvent('SirRezi_Waffenfarm:processScrap')
AddEventHandler('SirRezi_Waffenfarm:processScrap', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local scrapItem = 'scrap'
    local weaponPartItem = 'weapon_parts'
    local scrapCount = xPlayer.getInventoryItem(scrapItem).count

    if scrapCount >= 10 then
        xPlayer.removeInventoryItem(scrapItem, 10)
        xPlayer.addInventoryItem(weaponPartItem, 1)
        TriggerClientEvent('esx:showNotification', source, 'Du hast ~b~1x Waffenteil~s~ erhalten.')
    else
        TriggerClientEvent('esx:showNotification', source, 'Du benötigst mindestens ~r~10x Schrott~s~, um es zu verarbeiten.')
    end
end)
