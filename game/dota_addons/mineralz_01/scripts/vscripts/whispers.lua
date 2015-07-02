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
		Say(nil,"Earth: " .. _G.resource_earth, false)
		SendOverheadEventMessage(keys.target,10,keys.caster, tonumber(amount_harvested),nil)
	end

	if(nodeClass=="mz_structure_fire") then
		--HarvestFire

		--Housekeeping
		--Say (nil, "Harvesting Fire!", false)
		
		--pull relevant values from KV
		local ability = keys.ability
		local ability_level = ability:GetLevel() - 1
		local amount_harvested = ability:GetLevelSpecialValueFor("harvest_multiplier", ability_level)
		local harvest_interval = ability:GetLevelSpecialValueFor("harvest_interval", ability_level)

		--do the work
		_G.resource_fire = _G.resource_fire + amount_harvested
		Say(nil,"Fire: " .. _G.resource_fire, false)
		SendOverheadEventMessage(keys.target,2,keys.caster, tonumber(amount_harvested),nil)
	end

	if(nodeClass=="mz_structure_arcane") then
		--HarvestAir
		--Housekeeping
		--Say (nil, "Harvesting Fire!", false)
		
		--pull relevant values from KV
		local ability = keys.ability
		local ability_level = ability:GetLevel() - 1
		local amount_harvested = ability:GetLevelSpecialValueFor("harvest_multiplier", ability_level)
		local harvest_interval = ability:GetLevelSpecialValueFor("harvest_interval", ability_level)

		--do the work
		_G.resource_arcane = _G.resource_arcane + amount_harvested
		Say(nil,"Arcane: " .. _G.resource_arcane, false)
		SendOverheadEventMessage(keys.target,4,keys.caster, tonumber(amount_harvested),nil)
	end

	if(nodeClass=="mz_structure_water") then
		--HarvestAir
		--Housekeeping
		--Say (nil, "Harvesting Fire!", false)
		
		--pull relevant values from KV
		local ability = keys.ability
		local ability_level = ability:GetLevel() - 1
		local amount_harvested = ability:GetLevelSpecialValueFor("harvest_multiplier", ability_level)
		local harvest_interval = ability:GetLevelSpecialValueFor("harvest_interval", ability_level)

		--do the work
		_G.resource_water = _G.resource_water + amount_harvested
		Say(nil,"Water: " .. _G.resource_water, false)
		SendOverheadEventMessage(keys.target,12,keys.caster, tonumber(amount_harvested),nil)
	end
end