-- Ejemplo de script propio. Bórralo o úsalo como plantilla.
-- Todo lo que pongas en resources/[custom] se arranca con "ensure [custom]".

AddEventHandler('esx:playerLoaded', function(playerId, xPlayer)
    TriggerClientEvent('esx:showNotification', playerId,
        ('¡Bienvenido/a, %s! Disfruta del rol.'):format(xPlayer.getName()))
end)
