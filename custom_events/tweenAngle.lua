function onCreate()
	makeLuaSprite('testangle','',0,0)
end

function onEvent(name, value1, value2)
	if name == "tweenAngle" then
		doTweenAngle('1x1x1x1','testangle',value1,0.3, 'cubeOut')
	end
end

function onUpdate()
	setProperty('camGame.angle',getProperty('testangle.angle'))
end