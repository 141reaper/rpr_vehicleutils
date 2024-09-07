ESX = exports["es_extended"]:getSharedObject()
local open = false
local mainMenu = RageUI.CreateMenu("Vehicleutils", "by 141reaper")


RegisterCommand('vehicleutils', function()
    ESX.TriggerServerCallback('rpr_recovercar:getGroup', function(isAdmin)
        if isAdmin then
            open = not open -- Toggle den Status der `open`-Variable
            if open then
                RageUI.Visible(mainMenu, not RageUI.Visible(mainMenu))
                Citizen.CreateThread(function()
                    while open do
                        Citizen.Wait(0) -- Minimale Verzögerung während das Menü offen ist
                        RageUI.IsVisible(mainMenu, function()
                            RageUI.Button("Recover Car", "Recover Car using License Plate", {}, true, {
                                onSelected = function()
                                    local input = lib.inputDialog('Enter license plate', {
                                        {
                                            type = 'input',
                                            label = 'License Plate',
                                            description = 'Enter license plate (with space)',
                                            placeholder = 'ABC 123 or ABC 1234',
                                            required = true,
                                        }
                                    }, {
                                        allowCancel = true
                                    })

                                    if input == nil then
                                        return
                                    end

                                    local plate = input[1]
                                    if plate ~= nil and plate ~= '' then
                                        TriggerServerEvent('recovercar2', plate)
                                        open = false
                                    else
                                        print("Enter a valid license plate number (Format: ABC 123 or ABC 1234)")
                                        open = false
                                    end
                                end
                            })
                            RageUI.Button("Delete Car", "Delete Car using License Plate", {}, true, {
                                onSelected = function()
                                    local input = lib.inputDialog('Enter license plate number', {
                                        {
                                            type = 'input',
                                            label = 'License Plate',
                                            description = 'Enter license plate (with space)',
                                            placeholder = 'ABC 123 or ABC 1234',
                                            required = true,
                                        }
                                    }, {
                                        allowCancel = true
                                    })

                                    if input == nil then
                                        return
                                    end

                                    local plate = input[1]
                                    if plate ~= nil and plate ~= '' then
                                        TriggerServerEvent('deletecar', plate)
                                        open = false
                                    else
                                        print("Enter a valid license plate (Format: ABC 123 or ABC 1234)")
                                        open = false
                                    end
                                end
                            })
                        end, function() end, 1)
                        -- Wartezeit hinzufügen, wenn das Menü nicht aktiv ist
                    end
                    while not open do
                        Citizen.Wait(1000)
                    end
                    if not RageUI.Visible(mainMenu) then
                        Citizen.Wait(1000)
                    end
                end)
            end
        else
            print("You are not an Admin")
        end
    end)
end, false)
