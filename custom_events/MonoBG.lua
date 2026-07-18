function onEvent(name, value1, value2)
	if name == "MonoBG" then
		if lowQuality == false then
		if value1 == '1' then
			setProperty('BG_mono.alpha',1);
		else
			doTweenAlpha('bgmonotween', 'BG_mono', 0, 0.5, 'linear')
		end
	end
	end
end