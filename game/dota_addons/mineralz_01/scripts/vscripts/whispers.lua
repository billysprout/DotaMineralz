--Enigma trigger
function Whispers(trigger)
    Say(nil,"You are not welcome here.", false)
end

function mz_harvest(keys)
	nodeClass = keys.target:GetUnitName()
	_G.timesHarvested = _G.timesHarvested + 1
	--Say(nil,"Attempted to harvest a " .. nodeClass .. " node.", false)

	if(nodeClass=="mz_structure_earth") then
		--HarvestEarth

		--Housekeeping
		Say (nil, "Harvesting Earth!", false)
		

		--pull relevant values from KV
		local ability = keys.ability
		local ability_level = ability:GetLevel() - 1
		local amount_harvested = ability:GetLevelSpecialValueFor("harvest_multiplier", ability_level)
		local harvest_interval = ability:GetLevelSpecialValueFor("harvest_interval", ability_level)

		--do the work
		_G.resource_earth = _G.resource_earth + amount_harvested
		SendOverheadEventMessage(keys.target,10,keys.caster, tonumber(amount_harvested),nil)
	end
end

