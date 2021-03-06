-----------------------------------
-- Area: Port Jeuno
--  NPC: Kochahy-Muwachahy
-- !pos 40 0 6 246
-------------------------------------
package.loaded["scripts/zones/Port_Jeuno/TextIDs"] = nil
-----------------------------------
require("scripts/zones/Port_Jeuno/TextIDs")
require("scripts/globals/conquest")
-------------------------------------

local guardNation = dsp.nation.OTHER
local guardType   = dsp.conq.guard.CITY
local guardEvent  = 32763

function onTrade(player,npc,trade)
    dsp.conq.overseerOnTrade(player, npc, trade, guardNation, guardType)
end

function onTrigger(player,npc)
    dsp.conq.overseerOnTrigger(player, npc, guardNation, guardType, guardEvent)
end

function onEventUpdate(player,csid,option)
    dsp.conq.overseerOnEventUpdate(player, csid, option, guardNation)
end

function onEventFinish(player,csid,option)
    dsp.conq.overseerOnEventFinish(player, csid, option, guardNation, guardType)
end
