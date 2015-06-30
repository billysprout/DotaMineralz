--Enigma trigger
function Whispers(trigger)
    Say(nil,"You are not welcome here.", false)
end

function mz_harvest(keys)
	_G.timesHarvested = _G.timesHarvested + 1
	Say(nil,"harvested " .. _G.timesHarvested .. " times.", false)
end

