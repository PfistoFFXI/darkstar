-----------------------------------------
-- ID: 4328
-- Item: loaf_of_hobgoblin_bread
-- Food Effect: 60Min, All Races
-----------------------------------------
-- Health 10
-- Vitality 3
-- Charisma -7
-- Health Regen While Healing 2
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,3600,4328)
end

function onEffectGain(target, effect)
    target:addMod(dsp.mod.HP, 10)
    target:addMod(dsp.mod.VIT, 3)
    target:addMod(dsp.mod.CHR, -7)
    target:addMod(dsp.mod.HPHEAL, 2)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.HP, 10)
    target:delMod(dsp.mod.VIT, 3)
    target:delMod(dsp.mod.CHR, -7)
    target:delMod(dsp.mod.HPHEAL, 2)
end
