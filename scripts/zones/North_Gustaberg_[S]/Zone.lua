-----------------------------------
--
-- Zone: North_Gustaberg_[S] (88)
--
-----------------------------------
package.loaded["scripts/zones/North_Gustaberg_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/zones/North_Gustaberg_[S]/TextIDs");
-----------------------------------

function onInitialize(zone)
end;

function onZoneIn(player,prevZone)
    local cs = -1;
    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(380.038,-2.25,147.627,192);
    end
    if (prevZone == 87 and player:getCampaignAllegiance() > 0 and player:getQuestStatus(CRYSTAL_WAR,BETTER_PART_OF_VALOR) == QUEST_AVAILABLE) then
        cs = 1;
    end
    return cs;
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 1) then
        player:addQuest(CRYSTAL_WAR,BETTER_PART_OF_VALOR);
        player:addKeyItem(dsp.ki.CLUMP_OF_ANIMAL_HAIR);
        player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.CLUMP_OF_ANIMAL_HAIR);
    end
end;