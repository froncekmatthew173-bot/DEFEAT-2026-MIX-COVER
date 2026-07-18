local bfX = 0
local bfY = 0
local dadX = 0
local dadY = 0

function onCreatePost()
	bfX = getMidpointX('boyfriend') - 100 + getProperty("boyfriendCameraOffset[0]") - getProperty("boyfriend.cameraPosition[0]")
	bfY = getMidpointY('boyfriend') - 100 + getProperty("boyfriendCameraOffset[1]") + getProperty("boyfriend.cameraPosition[1]")
	dadX = getMidpointX('dad') + 150 + getProperty("opponentCameraOffset[0]") + getProperty("dad.cameraPosition[0]")
	dadY = getMidpointY('dad') - 100 + getProperty("opponentCameraOffset[1]") + getProperty("dad.cameraPosition[1]")
end

function onUpdatePost()
	setDebugWatcher('bfxy', bfX..' , '..bfY);
	setDebugWatcher('dadxy', dadX..' , '..dadY);
end

function onEvent(name, value1, value2)
	if name == "CharaCamshift" then
		if value1 == '1' then
			setProperty('camFollow.x',bfX)
			setProperty('camFollow.y',bfY)
		else
			setProperty('camFollow.x',dadX)
			setProperty('camFollow.y',dadY)
		end
	end
end