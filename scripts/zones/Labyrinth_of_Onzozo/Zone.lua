-----------------------------------
--
-- Zone: Labyrinth_of_Onzozo (213)
--
-----------------------------------
package.loaded["scripts/zones/Labyrinth_of_Onzozo/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Labyrinth_of_Onzozo/TextIDs");
require("scripts/zones/Labyrinth_of_Onzozo/MobIDs");
require("scripts/globals/conquest");
-----------------------------------

function onInitialize(zone)
    UpdateNMSpawnPoint(MYSTICMAKER_PROFBLIX);
    GetMobByID(MYSTICMAKER_PROFBLIX):setRespawnTime(math.random(900, 10800));

    UpdateTreasureSpawnPoint(ONZOZO_TREASURE_CHEST);
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(-58.808,-21.364,-286.654,190);
    end
    return cs;
end;

function onConquestUpdate(zone, updatetype)
    dsp.conq.onConquestUpdate(zone, updatetype)
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
