function onCreate()
	makeLuaSprite('whitebg', '', -3000, -1000)
	makeGraphic('whitebg', 7500, 5000,'FF0000')
	addLuaSprite('whitebg', false)
	setProperty("whitebg.alpha", 0)
end

function onEvent(name, value1, value2)
	if name == 'badapplelol' and value1 == 'a' then
		setProperty("whitebg.alpha", 1)
		setProperty('boyfriend.color', '000000')
		setProperty('dad.color', '000000')
		setProperty('gf.color', '000000')
		setProperty('boxs.color', '000000')
		setProperty("BG_front.alpha", 0)
	end
	if name == 'badapplelol' and value1 == 'b' then
		setProperty("whitebg.alpha", 0)
		setProperty('boyfriend.color', getColorFromHex('FFFFFF'))
		setProperty('dad.color', getColorFromHex('FFFFFF'))
		setProperty('gf.color', getColorFromHex('FFFFFF'))
		setProperty('boxs.color', getColorFromHex('FFFFFF'))
		setProperty("BG_front.alpha", 1)
	end
end