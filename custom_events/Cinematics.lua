-- Created by RamenDominoes (Feel free to credit or not I don't really care)
--Not bad for my first event created... I think

StartStop = 0

nSpeed = 0



function onCreate()
	

	--THE TOP BAR
	makeLuaSprite('UpperBar', 'empty', 0, -120)
	makeGraphic('UpperBar', 1280, 120, '000000')
	setObjectCamera('UpperBar', 'camHUD')
	addLuaSprite('UpperBar', false)


	--THE BOTTOM BAR
	makeLuaSprite('LowerBar', 'empty', 0, 720)
	makeGraphic('LowerBar', 1280, 120, '000000')
	setObjectCamera('LowerBar', 'camHUD')
	addLuaSprite('LowerBar', false)

end


function onUpdate()

	if StartStop == 1 then
	
	doTweenY('Cinematics1', 'UpperBar', 0, nSpeed, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 600, nSpeed, 'Linear')
	--[[noteTweenY('NOTEMOVE1', 0, 130, nSpeed, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 130, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 130, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 130, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 130, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 130, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 130, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 130, nSpeed, 'Linear')
	doTweenY("RATINGTXTMOVE1", "ratingTxt", 130 + 10, nSpeed, "Linear")
	doTweenY("COMBOTXTMOVE1", "comboTxt", 130 + 60, nSpeed, "Linear")]]
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.1 / playbackRate)

	end

	if downscroll and StartStop == 1 then
	
	doTweenY('Cinematics1', 'UpperBar', 0, nSpeed, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 600, nSpeed, 'Linear')
	--[[noteTweenY('NOTEMOVE1', 0, 480, nSpeed, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 480, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 480, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 480, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 480, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 480, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 480, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 480, nSpeed, 'Linear')
	doTweenY("RATINGTXTMOVE1", "ratingTxt", 480 + 10, nSpeed, "Linear")
	doTweenY("COMBOTXTMOVE1", "comboTxt", 480 + 60, nSpeed, "Linear")]]
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.1 / playbackRate)

	end


	if StartStop == 2 then
	
	doTweenY('Cinematics1', 'UpperBar', -120, nSpeed, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 720, nSpeed, 'Linear')
	--[[noteTweenY('NOTEMOVE1', 0, 50, nSpeed, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 50, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 50, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 50, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 50, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 50, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 50, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 50, nSpeed, 'Linear')
	doTweenY("RATINGTXTMOVE1", "ratingTxt", 50 + 10, nSpeed, "Linear")
	doTweenY("COMBOTXTMOVE1", "comboTxt", 50 + 60, nSpeed, "Linear")]]
	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.1 / playbackRate)
	
	end

	if downscroll and StartStop == 2 then
	
	doTweenY('Cinematics1', 'UpperBar', -120, nSpeed, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 720, nSpeed, 'Linear')
	--[[noteTweenY('NOTEMOVE1', 0, 570, nSpeed, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 570, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 570, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 570, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 570, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 570, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 570, nSpeed, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 570, nSpeed, 'Linear')
	doTweenY("RATINGTXTMOVE1", "ratingTxt", 570 + 10, nSpeed, "Linear")
	doTweenY("COMBOTXTMOVE1", "comboTxt", 570 + 60, nSpeed, "Linear")]]
	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.1 / playbackRate)
	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.1 / playbackRate)
	
	end
	
end

function onEvent(name,value1,value2)
	if name == 'Cinematics' then
		StartStop = tonumber(value1)
		nSpeed = tonumber(value2) / playbackRate
			end
	
		end