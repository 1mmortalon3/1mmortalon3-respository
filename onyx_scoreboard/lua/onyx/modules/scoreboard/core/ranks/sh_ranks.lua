--[[

Author: tochnonement
Email: tochnonement@gmail.com

04/03/2024

--]]

onyx.scoreboard.ranks = onyx.scoreboard.ranks or {}

function onyx.scoreboard:GetRankData(rank)
    local rankData = onyx.scoreboard.ranks[rank]
    if (rankData) then
        if (CLIENT) then
            local effectID = rankData.effectID
            local effectData, effectIndex = onyx.scoreboard:FindNameEffect(effectID)

            rankData.effect = effectIndex
        end

        return rankData
    end
end