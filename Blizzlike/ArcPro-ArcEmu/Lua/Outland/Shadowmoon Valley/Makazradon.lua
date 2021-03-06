--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Makazradon_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("Makazradon_Cripple", 45000, 0)
	Unit:RegisterEvent("Makazradon_FelCleave", 19000, 0)
	Unit:RegisterEvent("Makazradon_RainOfFire", 18000, 0)
end

function Makazradon_Cripple(Unit,Event)
	Unit:FullCastSpellOnTarget(11443, Unit:GetClosestPlayer())
end

function Makazradon_FelCleave(Unit,Event)
	Unit:FullCastSpellOnTarget(38742, Unit:GetClosestPlayer())
end

function Makazradon_RainOfFire(Unit,Event)
	Unit:FullCastSpellOnTarget(38741, Unit:GetClosestPlayer())
end

function Makazradon_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Makazradon_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(21501, 1, "Makazradon_OnEnterCombat")
RegisterUnitEvent(21501, 2, "Makazradon_OnLeaveCombat")
RegisterUnitEvent(21501, 4, "Makazradon_OnDied")