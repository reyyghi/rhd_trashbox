CreateThread(function() 
    exports.ox_target:addModel(KS.propModel, {
        {
            label = 'Kotak Sampah',
            icon = 'fas fa-recycle',
            onSelect = function ()
                lib.callback('KS:HapusItem', false, function ()
                    exports.ox_inventory:openInventory('stash', { id = 'kotak_sampah' })
                end)
            end,
            distance = 1
        }
    })
end)