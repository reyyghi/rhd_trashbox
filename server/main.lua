
AddEventHandler('onServerResourceStart', function(resourceName)
    if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
        exports.ox_inventory:RegisterStash('kotak_sampah', 'Kotak Sampah', 10, 100000000, true)
    end
end)

lib.callback.register('KS:HapusItem', function()
	local inventory = exports.ox_inventory:GetInventory({id = 'kotak_sampah'})
    return exports.ox_inventory:ClearInventory(inventory.id)
end)