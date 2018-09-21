-----------------------------------
-- Attachment: Damage Gauge
-----------------------------------
require("scripts/globals/status")

function onEquip(pet)
    pet:setLocalVar("damagegauge", 1)
    pet:addMod(dsp.mod.AUTO_HEALING_THRESHOLD, 20)
    pet:addMod(dsp.mod.AUTO_HEALING_DELAY, 3)
end

function onUnequip(pet)
    pet:setLocalVar("damagegauge", 0)
    pet:delMod(dsp.mod.AUTO_HEALING_THRESHOLD, 20)
    pet:delMod(dsp.mod.AUTO_HEALING_DELAY, 3)
end

function onManeuverGain(pet,maneuvers)
    if (maneuvers == 1) then
        pet:addMod(dsp.mod.AUTO_HEALING_THRESHOLD, 10)
        pet:addMod(dsp.mod.AUTO_HEALING_DELAY, 3)
    elseif (maneuvers == 2) then
        pet:addMod(dsp.mod.AUTO_HEALING_DELAY, 2)
    elseif (maneuvers == 3) then
        pet:addMod(dsp.mod.AUTO_HEALING_DELAY, 2)
    end
end

function onManeuverLose(pet,maneuvers)
    if (maneuvers == 1) then
        pet:delMod(dsp.mod.AUTO_HEALING_THRESHOLD, 10)
        pet:delMod(dsp.mod.AUTO_HEALING_DELAY, 3)
    elseif (maneuvers == 2) then
        pet:delMod(dsp.mod.AUTO_HEALING_DELAY, 2)
    elseif (maneuvers == 3) then
        pet:delMod(dsp.mod.AUTO_HEALING_DELAY, 2)
    end
end
