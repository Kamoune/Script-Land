--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: BlackHer0; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Machine_OnEnterCombat(Unit, Event)
    Unit:RegisterEvent("Machine_Rocket", 2000, 0)
end

function Machine_Rocket(Unit, Event)
    Unit:FullCastSpellOnTarget(38083, Unit:GetClosestPlayer())
end

function Machine_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

function Machine_OnDied(Unit, Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(21976, 1, "Machine_OnEnterCombat")
RegisterUnitEvent(21976, 2, "Machine_OnLeaveCombat")
RegisterUnitEvent(21976, 4, "Machine_OnDied")