function onCreate()
	if flashingLights then
	makeLuaSprite('black','',0,0)
	makeGraphic("black",screenWidth,screenHeight,"000000")
	setObjectCamera("black","other")
	addLuaSprite("black",true)
	setProperty("black.alpha",0)
	end
end

function onEvent(name, value1, value2)
	if flashingLights then
	if name == "blackflash" then
		if getProperty('black.alpha') == 1 then
			setProperty('black.alpha',0)
		else
			setProperty('black.alpha',1)
		end
	end
end
end

function onUpdate()
	local luachartingmode = runHaxeCode("return PlayState.chartingMode;")
	if luachartingmode == true then
		setProperty('black.visible',false)
	end
end