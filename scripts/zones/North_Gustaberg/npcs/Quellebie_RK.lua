-----------------------------------
-- Area: North Gustaberg
--  NPC: Quellebie, R.K.
-- Type: Border Conquest Guards
-- !pos -520.704 38.75 560.258 106
-----------------------------------
package.loaded["scripts/zones/North_Gustaberg/TextIDs"] = nil
-----------------------------------
require("scripts/zones/North_Gustaberg/TextIDs")
require("scripts/globals/conquest")
-----------------------------------

local guardNation = dsp.nation.SANDORIA
local guardType   = dsp.conq.guard.BORDER
local guardRegion = dsp.region.GUSTABERG
local guardEvent  = 32762

function onTrade(player,npc,trade)
    dsp.conq.overseerOnTrade(player, npc, trade, guardNation, guardType)
end

function onTrigger(player,npc)
    dsp.conq.overseerOnTrigger(player, npc, guardNation, guardType, guardEvent, guardRegion)
end

function onEventUpdate(player,csid,option)
    dsp.conq.overseerOnEventUpdate(player, csid, option, guardNation)
end

function onEventFinish(player,csid,option)
    dsp.conq.overseerOnEventFinish(player, csid, option, guardNation, guardType, guardRegion)
end