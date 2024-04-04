local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEAREA)
combat:setParameter(COMBAT_PARAM_DISPEL, CONDITION_FREEZING)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
    return combat:execute(creature, variant)
end

spell:name("Ice Burning")
spell:words("exana frigo")
spell:group("healing")
spell:vocation("druid;true", "elder druid;true", "knight;true", "elite knight;true", "paladin;true",
               "royal paladin;true", "sorcerer;true", "master sorcerer;true")
spell:id(43)
spell:cooldown(6000)
spell:groupCooldown(1000)
spell:level(30)
spell:mana(30)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:isPremium(true)
spell:needLearn(false)
spell:register()
