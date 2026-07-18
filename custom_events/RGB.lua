function onCreate()
	  makeLuaSprite('flashg', 'viggle', 0, 0);
		setProperty('flashg.alpha',0)
	  setBlendMode('flashg', 'add')
	  setObjectCamera('flashg', 'hud')
	  addLuaSprite('flashg')
end

function onEvent(n,v1,v2)
	if n == 'RGB' then
triggerEvent("Add Camera Zoom", 0.015 % 2, 0.0015)

setProperty('flashg.alpha',0.5)
doTweenAlpha('flTw','flashg',0,0.75,'linear')
end
end