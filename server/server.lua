print("^7RecoverCar Script by 141Reaper^7")
print("^7more on my github: ^6https://github.com/141reaper^7")
ESX = exports["es_extended"]:getSharedObject()
debug = true

RegisterServerEvent('recovercar2')
AddEventHandler('recovercar2', function(plate)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
            if plate and string.match(plate, "^[A-Z][A-Z][A-Z] %d%d%d%d?$") then
                local query = 'UPDATE owned_vehicles SET `stored` = 1 WHERE owned_vehicles.plate = @plate'
                local parameters = {
                    ['@plate'] = plate
                }
                MySQL.Sync.execute(query, parameters)
            else
                Wait(0)
            end
    end, _source)


RegisterServerEvent('deletecar')
AddEventHandler('deletecar', function(plate)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
            if plate and string.match(plate, "^[A-Z][A-Z][A-Z] %d%d%d%d?$") then
                local query = 'DELETE FROM owned_vehicles WHERE plate = @plate'
                local parameters = {
                    ['@plate'] = plate
                }
                MySQL.Sync.execute(query, parameters)
            else
                Wait(0)
            end
    end, _source)




ESX.RegisterServerCallback('rpr_recovercar:getGroup', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        local group = xPlayer.getGroup()

        if table.contains(Config.AdminGroups, group) then
            cb(true)
        else
            cb(false)
        end
    else
        cb(false)
    end
end)

function table.contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end