-----------------------------------
-- Area: Gustav Tunnel
--  NPC: Grounds Tome
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/groundsofvalor");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    startGov(GOV_EVENT_GUSTAV_TUNNEL,player);
end;

function onEventUpdate(player,csid,option)
    updateGov(player,csid,option,763,764,765,766,767,768,769,770,0,0);
end;

function onEventFinish(player,csid,option)
    finishGov(player,csid,option,763,764,765,766,767,768,769,770,0,0,GOV_MSG_GUSTAV_TUNNEL);
end;
