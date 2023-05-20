local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('kg_scoreboard:getpolice', function(_, cb)
    local policeCount = 0 
    local medicCount = 0
    local taxiCount = 0 
    local mechanicCount = 0

    for _, v in pairs(QBCore.Functions.GetQBPlayers()) do 
        if v then 

            if v.PlayerData.job.name == "police" and v.PlayerData.job.onduty then
                policeCount += 1
            end

            if v.PlayerData.job.name == "ambulance" and v.PlayerData.job.onduty then 
                medicCount += 1
            end 
    
            if v.PlayerData.job.name == "taxi" and v.PlayerData.job.onduty then 
                taxiCount += 1
            end 
    
            if v.PlayerData.job.name == "mechanic" and v.PlayerData.job.onduty then 
                mechanicCount += 1
            end 
            
        end 
    end 
    cb(policeCount, medicCount, taxiCount, mechanicCount)
end)