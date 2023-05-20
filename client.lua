local QBCore = exports['qb-core']:GetCoreObject()
local scoreboardOpen = false 

CreateThread(function()
    while true do 
        Wait(1000)
        QBCore.Functions.TriggerCallback('kg_scoreboard:getpolice', function(policeCount, medicCount, taxiCount, mechanicCount)
            SendNUIMessage({
                police = policeCount,
                medic = medicCount,
                taxi = taxiCount,
                mechanic = mechanicCount,
            })
        end)
    end 
end)

RegisterCommand("scoreboard", function()
    if not scoreboardOpen then
        SendNUIMessage({
            type = "opensb"
        })
        scoreboardOpen = true
    else
        SendNUIMessage({
            type = "closesb"
        })
        scoreboardOpen = false
    end
end)

RegisterCommand("openscoreboard", function()
    SendNUIMessage({
        type = "opensb"
    })
end)