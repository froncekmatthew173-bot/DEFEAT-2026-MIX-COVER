local huke1 = 0
local tweentime = 0
local myGroup = {}

local removeTime = 197 * 1000

local NoteAnglex = 1
local NoteAngle = 360

local luachartingmode = false

local hp = 50

local Misstake = 99

local positioned = false

local truerating = 0.0

local charter = {"Yu-kun","Voider_","C.K"}

local rank = 'F'

function onCreate()
	-- background shit
	makeLuaSprite('BG_legacy', 'BG_legacy', -2080, -720);
	setScrollFactor('BG_legacy', 1, 1);
	scaleObject('BG_legacy', 1.25, 1.25);
	addLuaSprite('BG_legacy', false);
	setProperty('BG_legacy.alpha',1)

	setProperty('skipCountdown', true);
	makeLuaSprite("blacl","",0,0)
	makeGraphic("blacl",1280,720,"000000")
	setObjectCamera("blacl","other")
	addLuaSprite("blacl",true)
	setProperty("blacl.alpha",1)

	makeLuaSprite("BBlack","",0,0)
	makeGraphic("BBlack",480,720,"000000")
	setObjectCamera("BBlack","HUD")
	addLuaSprite("BBlack",false)
	screenCenter("BBlack","XY")
	setProperty("BBlack.alpha",0)

	makeLuaSprite('BG', 'BG', -2080, -720);
	setScrollFactor('BG', 1, 1);
	scaleObject('BG', 1.25, 1.25);
	addLuaSprite('BG', false);
	setProperty('BG.alpha',0);

	if lowQuality == false then
	makeAnimatedLuaSprite('loght', 'lights')
	addAnimationByPrefix('loght', 'hi pie bye liy', 'lights beat',6,false)
	scaleObject('loght',1.25,1.25)
	addLuaSprite('loght')
	setProperty('loght.x',-2080)
	setProperty('loght.y',-750)
	setProperty('loght.alpha',0)

	makeLuaSprite('criminal', 'criminal', -2080, -720);
	setScrollFactor('criminal', 1, 1);
	scaleObject('criminal', 1.25, 1.25);
	addLuaSprite('criminal', false);
	setProperty('criminal.alpha',0);

	makeLuaSprite('BG_mono', 'BG_mono', -2080, -720);
	setScrollFactor('BG_mono', 1, 1);
	scaleObject('BG_mono', 1.25, 1.25);
	addLuaSprite('BG_mono', false);
	setProperty('BG_mono.alpha',0);
	end

	makeLuaSprite('BG_front', 'BG_front', -1650, -720);
	setScrollFactor('BG_front', 0.5, 0.5);
	scaleObject('BG_front', 1.25, 1.25);
	addLuaSprite('BG_front', true);
	setProperty('BG_front.alpha',0);

	if lowQuality == false then
	makeLuaSprite('Polus', 'Double', -1450, -300);
	setScrollFactor('Polus', 1, 1);
	scaleObject('Polus', 2.5, 2);
	addLuaSprite('Polus', false);
	setProperty('Polus.alpha',0);
	end

	makeLuaSprite("lyrics","kill",0,0)
	screenCenter("lyrics","XY")
	setObjectCamera("lyrics","other")
	addLuaSprite("lyrics",true)
	setProperty("lyrics.alpha",0)

	makeLuaSprite('OMG','OMG',0,0)
	setObjectCamera('OMG','HUD')
	addLuaSprite('OMG',true)

	makeLuaSprite('Cool','Cool',-1000,0)
	scaleObject('Cool',0.45,0.45)
	setObjectCamera('Cool','HUD')
	addLuaSprite('Cool',true)

	makeLuaSprite('blackleft','blackleft',0,0)
	screenCenter('blackleft','XY')
	setObjectCamera('blackleft','other')
	addLuaSprite('blackleft',true)
	setProperty('blackleft.alpha',0)

	makeLuaText('songName','DEFEAT 2026 MIX',1280,-150,200)
	addLuaText('songName')
	setTextFont('songName','AmaticSC-Bold.ttf')
	setTextSize('songName',150)
	setTextColor('songName','000000')
	setTextBorder('songName',2,'FF0000')

	if difficultyName == 'Normal' or difficultyName == 'Easy' then
		ImnoliImpurple = 1
	elseif difficultyName == 'Hard' then
		ImnoliImpurple = 2
	else
		ImnoliImpurple = 3
	end

	makeLuaText('songsetumei','ART: BURUARU\nCHART:'..charter[ImnoliImpurple],1280,300,350)
	addLuaText('songsetumei')
	setTextFont('songsetumei','AmaticSC-Bold.ttf')
	setTextSize('songsetumei',75)
	setTextAlignment('songsetumei','left')
	setTextColor('songsetumei','000000')
	setTextBorder('songsetumei',2,'FF0000')
	setProperty('OMG.alpha',0)
	setProperty('songName.alpha',0)
	setProperty('songsetumei.alpha',0)
	if lowQuality == false then
	setProperty('songName.antialiasing',true)
	setProperty('songsetumei.antialiasing',true)
	end
    setPropertyFromClass("openfl.Lib", "application.window.title", "VS IMPOSTOR LEGACY")
    addHaxeLibrary('Image','lime.graphics')
    addHaxeLibrary('Application', 'lime.app')
    runHaxeCode([[
        Application.current.window.setIcon(Image.fromFile(Paths.modFolders('images/legacy.png')));
    ]])
end

function onCreatePost()
	luachartingmode = runHaxeCode("return PlayState.chartingMode;")
	if luachartingmode == true then
		setProperty('defaultCamZoom', 0.6);
		setProperty('cameraSpeed', 1);
		setProperty('blacl.alpha', 0);
	end
	if luachartingmode == false then
    setProperty('iconP1.alpha', 0)
    setProperty('iconP2.alpha', 0)
	noteTweenAlpha('a', 4, 0, 0.05, 'linear')
	noteTweenAlpha('b', 5, 0, 0.05, 'linear')
	noteTweenAlpha('c', 6, 0, 0.05, 'linear')
	noteTweenAlpha('d', 7, 0, 0.05, 'linear')
	noteTweenAngle('a2', 4, 0, 0.05, 'linear')
	noteTweenAngle('b2', 5, 0, 0.05, 'linear')
	noteTweenAngle('c2', 6, 0, 0.05, 'linear')
	noteTweenAngle('d2', 7, 360, 0.05, 'linear')
	end
	setTextColor('scoreTxt','FF0000')
	if difficultyName == 'Easy' then
		Misstake = 10000000
	elseif difficultyName == 'Normal' or difficultyName == 'Hell' then
		Misstake = 0
	elseif difficultyName == 'Hard' then
		Misstake = 3
	else
		Misstake = 6
	end
	if difficultyName == 'Easy' then
		setTextString('scoreTxt', 'SCORE: ' .. score ..' | COMBO BREAKS: ' .. misses .. ' | Accuracy:N/A'..' | Rank:N/A')
	else
	setTextString('scoreTxt', 'SCORE: ' .. score ..' | COMBO BREAKS: ' .. misses .. ' / ' .. Misstake..' | Accuracy:N/A'..' | Rank:N/A')
	end
	if getModSetting('BBlack') == true then
		setProperty('BBlack.alpha',0.5)
	end
end

function onUpdate()
	runHaxeCode('game.updateIconsPosition = () -> {};')
    if not positioned and positioned ~= nil then
        for strumLine = 0,3 do
            setPropertyFromGroup('strumLineNotes',strumLine,'visible',false)
        end
        if not middlescroll then
            for strumLine = 4,7 do
                setPropertyFromGroup('strumLineNotes',strumLine,'x',412 + (112 * (strumLine - 4)))
            end
        end
        positioned = true
    end
	setProperty('iconP2.x',100)
	setProperty('iconP1.x',980)
	if curBeat < 8 then
		setProperty('camFollow.x', -1000);
	end
	if curBeat == 92 or curBeat == 93 then
		setProperty('camFollow.x', -1000);
	end
	if curBeat == 94 or curBeat == 95 then
		setProperty('camFollow.x', 50);
	end
    if curStep >= 388 and curStep < 1504 or curStep >= 1792 and curStep < 2974 or curStep >= 3032 then
        for i, v in ipairs(myGroup) do
            setProperty(v .. '.visible', true)
        end
    else
        for i, v in ipairs(myGroup) do
            setProperty(v .. '.visible', false)
        end
    end
	if misses <= 70 or truerating >= 50 then
		rank = 'D'
	else rank = 'F'
	end
	if misses <= 50 or truerating >= 70 then
		rank = 'C'
	end
	if misses <= 30 or truerating >= 85 then
		rank = 'B'
	end
	if misses <= 20 or truerating >= 90 then
		rank = 'A'
	end
	if misses <= 0 and truerating >= 95 then
		rank = 'S'
	end
	if misses <= 0 and truerating >= 99 then
		rank = 'P'
	end
end


function onSongStart()
	doTweenAlpha('blacltween', 'blacl', 0, 2, 'linear')
	setProperty('songLength', removeTime)
end

function onSectionHit()
	playAnim('loght',"hi pie bye liy",true)
end

function onStepHit()
	if lowQuality == false then
	huke()
	end
    if curStep == 2608 then
        startTween('realTime', 'game', {songLength = songLength}, 1.2, {ease = 'CircInOut'})
    end
end

function onBeatHit()
	if curBeat == 8 then
		setProperty('defaultCamZoom', 0.6);
		setProperty('cameraSpeed', 1);
	end

	if curBeat == 20 then
		doTweenAlpha('e', 'healthBar', 1, 0.5, 'linear')
		doTweenAlpha('e', 'timeBar', 1, 0.5, 'linear')
		doTweenAlpha('e', 'timeTxt', 1, 0.5, 'linear')
		doTweenAlpha('e', 'scoreTxt', 1, 0.5, 'linear')
		doTweenAlpha('e', 'iconP1', 1, 0.5, 'linear')
		noteTweenAngle('faf', 7, NoteAngle*2, 0.5, 'cubeOut')
		noteTweenAlpha('a', 7, 1, 0.5, 'cubeOut')
	end
	if curBeat == 21 then
		noteTweenAlpha('b', 6, 1, 0.5, 'cubeOut')
		noteTweenAngle('b2', 6, NoteAngle*NoteAnglex, 0.5, 'cubeOut')
	end
	if curBeat == 22 then
		doTweenAlpha('e', 'iconP2', 1, 0.5, 'linear')
		noteTweenAlpha('c', 5, 1, 0.5, 'cubeOut')
		noteTweenAngle('c2', 5, NoteAngle*NoteAnglex, 0.5, 'cubeOut')
	end
	if curBeat == 23 then
		noteTweenAlpha('d', 4, 1, 0.5, 'cubeOut')
		noteTweenAngle('d2', 4, NoteAngle*NoteAnglex, 0.5, 'cubeOut')
	end
	if curBeat == 92 then
		setProperty('cameraSpeed', 5.0);
		setProperty('defaultCamZoom', 0.9);
	end
	if curBeat == 97 then
		setProperty('timeBar.visible', true)
		setProperty('comboGroup.visible', true)
		setProperty('timeTxt.visible', true)
		setProperty('scoreTxt.visible', true)
		setProperty('BG.alpha', 1.0);
		setProperty('criminal.alpha', 1.0);
		setProperty('BG_front.alpha', 1.0);
		setProperty('loght.alpha', 1.0);
		setProperty('BG_Legacy.alpha', 0.0);
		setProperty('cameraSpeed', 1.0);
		setProperty('defaultCamZoom', 0.7);
		doTweenAlpha('e', 'OMG', 1, 1.5, 'linear')
		doTweenAlpha('f', 'songName', 1, 1.5, 'linear')
		doTweenAlpha('g', 'songsetumei', 1, 1.5, 'linear')
		doTweenX('h', 'Cool', 400, 1.5, 'cubeOut')
	end
	if curBeat == 108 then
		setProperty("lyrics.alpha",1)
		setProperty("blacl.alpha",1)
		removeLuaSprite('OMG')
		removeLuaSprite('Cool')
		removeLuaText('songName')
		removeLuaText('songsetumei')
	end
	if curBeat == 110 then
		doTweenAlpha("lyricstween","lyrics",0,1,"linear")
		doTweenAlpha("fauiogfhaifw","blacl",0,1,"linear")
	end
	if curBeat == 372 then
		setProperty('blacl.alpha', 1);
		noteTweenAlpha('a', 4, 0, 0.05, 'linear')
		noteTweenAlpha('b', 5, 0, 0.05, 'linear')
		noteTweenAlpha('c', 6, 0, 0.05, 'linear')
		noteTweenAlpha('d', 7, 0, 0.05, 'linear')
		noteTweenAngle('a2', 4, 0, 0.05, 'linear')
		noteTweenAngle('b2', 5, 0, 0.05, 'linear')
		noteTweenAngle('c2', 6, 0, 0.05, 'linear')
		noteTweenAngle('d2', 7, 360, 0.05, 'linear')
	    setProperty('iconP1.alpha', 0)
		setProperty('iconP2.alpha', 0)
	end
	if curBeat == 376 then
		setProperty('BG.alpha', 0.0);
		setProperty('criminal.alpha', 0.0);
		setProperty('BG_front.alpha', 0.0);
		setProperty('loght.alpha', 0.0);
		setProperty('BG_Legacy.alpha', 1.0);
		doTweenAlpha("fauiogfhaifw","blacl",0,2,"linear")
	    setProperty('iconP1.alpha', 0)
		setProperty('iconP2.alpha', 0)
        setProperty('scoreTxt.visible',false)
        setProperty('timeBar.visible',false)
        setProperty('iconP1.visible',false)
        setProperty('iconP2.visible',false)
        setProperty('timeTxt.visible',false)
        setProperty('healthBar.visible',false)
        setProperty('botplayTxt.visible',false)
        setProperty('comboGroup.visible', false)
        setProperty('grpNoteSplashes.visible', false)
        setPropertyFromClass('Main', 'fpsVar.visible',false) 
	    setPropertyFromClass("openfl.Lib", "application.window.title", "FNF: VS Impostor")
		addHaxeLibrary('Image','lime.graphics')
		addHaxeLibrary('Application', 'lime.app')
		runHaxeCode([[
			Application.current.window.setIcon(Image.fromFile(Paths.modFolders('images/v3.png')));
		]])
	end
	if curBeat == 388 then
		doTweenAlpha('e', 'iconP1', 1, 0.5, 'linear')
		noteTweenAngle('faf', 7, NoteAngle*2, 0.5, 'cubeOut')
		noteTweenAlpha('a', 7, 1, 0.5, 'cubeOut')
		noteTweenAlpha('b', 6, 1, 0.5, 'cubeOut')
		noteTweenAngle('b2', 6, NoteAngle*NoteAnglex, 0.5, 'cubeOut')
	end
	if curBeat == 390 then
		doTweenAlpha('e', 'iconP2', 1, 0.5, 'linear')
		noteTweenAlpha('c', 5, 1, 0.5, 'cubeOut')
		noteTweenAngle('c2', 5, NoteAngle*NoteAnglex, 0.5, 'cubeOut')
		noteTweenAlpha('d', 4, 1, 0.5, 'cubeOut')
		noteTweenAngle('d2', 4, NoteAngle*NoteAnglex, 0.5, 'cubeOut')
	end
	if curBeat == 448 then
		setProperty('criminal.alpha', 1);	
		setProperty('BG.alpha', 1);
		setProperty('BG_front.alpha', 1);
		setProperty('loght.alpha', 1.0);
		setProperty('BG_Legacy.alpha', 0.0);
        setProperty('scoreTxt.visible',true)
        setProperty('timeBar.visible',true)
        setProperty('iconP1.visible',true)
        setProperty('iconP2.visible',true)
        setProperty('timeTxt.visible',true)
        setProperty('healthBar.visible',true)
        setProperty('comboGroup.visible', true)
        setProperty('grpNoteSplashes.visible', true)
        setPropertyFromClass('Main', 'fpsVar.visible',true) 
        if botplay == true then
        setProperty('botplayTxt.visible',true)
        end
		setPropertyFromClass("openfl.Lib", "application.window.title", "VS IMPOSTOR LEGACY")
		addHaxeLibrary('Image','lime.graphics')
		addHaxeLibrary('Application', 'lime.app')
		runHaxeCode([[
			Application.current.window.setIcon(Image.fromFile(Paths.modFolders('images/legacy.png')));
		]])
	end
	if curBeat == 512 then
		setProperty('BG.alpha', 0);
		setProperty('criminal.alpha', 0);
		setProperty('BG_front.alpha', 0);
		setProperty('loght.alpha', 0);
		setProperty('Polus.alpha', 0.25);
	end
	if curBeat == 548 then
		setProperty('Polus.alpha', 0);
		setProperty('BG.alpha', 1);
		setProperty('criminal.alpha', 1);
		setProperty('BG_front.alpha', 1);
		setProperty('loght.alpha', 1);
	end
	if curBeat == 556 then
		if downscroll then
			noteTweenY('a', 4, 720, 0.9, 'cubeInOut')
			noteTweenY('b', 5, 720, 1, 'cubeInOut')
			noteTweenY('c', 6, 720, 1.1, 'cubeInOut')
			noteTweenY('d', 7, 720, 1.2, 'cubeInOut')
		else
			noteTweenY('a', 4, -120, 0.9, 'cubeInOut')
			noteTweenY('b', 5, -120, 1, 'cubeInOut')
			noteTweenY('c', 6, -120, 1.1, 'cubeInOut')
			noteTweenY('d', 7, -120, 1.2, 'cubeInOut')
		end
	end
	if curBeat == 572 then
		if downscroll then
			noteTweenY('a', 4, 570, 0.3, 'cubeOut')
		else
			noteTweenY('a', 4, 50, 0.3, 'cubeOut')
		end
	end
	if curBeat == 573 then
		if downscroll then
			noteTweenY('b', 5, 570, 0.3, 'cubeOut')
		else
			noteTweenY('b', 5, 50, 0.3, 'cubeOut')
		end
	end
	if curBeat == 574 then
		if downscroll then
			noteTweenY('c', 6, 570, 0.3, 'cubeOut')
		else
			noteTweenY('c', 6, 50, 0.3, 'cubeOut')
		end
	end
	if curBeat == 575 then
		if downscroll then
			noteTweenY('d', 7, 570, 0.3, 'cubeOut')
		else
			noteTweenY('d', 7, 50, 0.3, 'cubeOut')
		end
	end
	if curBeat == 648 then
		doTweenY('TimebarY',"timeBar", 350, 1.5, 'cubeInOut')
		doTweenY('TimeTxtY',"timeTxt", 340, 1.5, 'cubeInOut')
		doTweenX('TimebarScaleX',"timeBar.scale", 1.5, 1.5, 'cubeInOut')
		doTweenY('TimebarScaleY',"timeBar.scale", 1.5, 1.5, 'cubeInOut')
		doTweenX('TimeTxtscaleX',"timeTxt.scale", 1.5, 1.5, 'cubeInOut')
		doTweenY('TimeTxtscaleY',"timeTxt.scale", 1.5, 1.5, 'cubeInOut')
	end
	if curBeat == 656 then
		doTweenX('TimebarScaleX',"timeBar.scale", 1, 1.5, 'cubeInOut')
		doTweenY('TimebarScaleY',"timeBar.scale", 1, 1.5, 'cubeInOut')
		doTweenX('TimeTxtscaleX',"timeTxt.scale", 1, 1.5, 'cubeInOut')
		doTweenY('TimeTxtscaleY',"timeTxt.scale", 1, 1.5, 'cubeInOut')
		if downscroll then
			doTweenY('TimebarY',"timeBar", 684.25, 1.5, 'cubeInOut')
			doTweenY('TimeTxtY',"timeTxt", 676, 1.5, 'cubeInOut')
		else
			doTweenY('TimebarY',"timeBar", 27.25, 1.5, 'cubeInOut')
			doTweenY('TimeTxtY',"timeTxt", 19, 1.5, 'cubeInOut')
		end
	end
	if curBeat == 744 then
		setProperty('BG.alpha', 0);
		setProperty('criminal.alpha', 0);
		setProperty('BG_front.alpha', 0);
		setProperty('loght.alpha', 0.0);
		setProperty('BG_Legacy.alpha', 1.0);
	end
	if curBeat == 759 then
		setProperty('criminal.alpha', 1);	
		setProperty('BG.alpha', 1);
		setProperty('BG_front.alpha', 1);
		setProperty('loght.alpha', 1.0);
		setProperty('BG_Legacy.alpha', 0.0);
	end
	if curBeat == 896 then
		setProperty('blacl.alpha', 1);
		setProperty('blackleft.alpha', 1);
	end

end

function goodNoteHit()
	truerating = math.floor(rating * 10000 + 0.5) / 100
	if difficultyName == 'Easy' then
	setTextString('scoreTxt', 'SCORE: ' .. score ..' | COMBO BREAKS: ' .. misses .. ' | Accuracy: '..truerating ..'% ['..ratingFC..']'..' | Rank: '..rank)
	else
	setTextString('scoreTxt', 'SCORE: ' .. score ..' | COMBO BREAKS: ' .. misses .. ' / ' .. Misstake..' | Accuracy: '..truerating ..'% ['..ratingFC..']'..' | Rank: '..rank)
	end
end

function noteMiss()
	truerating = math.floor(rating * 10000 + 0.5) / 100
	if difficultyName == 'Easy' then
	setTextString('scoreTxt', 'SCORE: ' .. score ..' | COMBO BREAKS: ' .. misses .. ' | Accuracy: '..truerating ..'% ['..ratingFC..']'..' | Rank: '..rank)
	else
	setTextString('scoreTxt', 'SCORE: ' .. score ..' | COMBO BREAKS: ' .. misses .. ' / ' .. Misstake..' | Accuracy: '..truerating ..'% ['..ratingFC..']'..' | Rank: '..rank)
	end
	if Misstake < misses then
		setProperty('health', -999999)
	end
end

function onGameOver()
	setProperty('dadwin.alpha', 0)
end

function huke()
    huke1 = huke1 + 1
    tweentime = math.random(1,10)
    makeLuaSprite('huke'..huke1,'huke',math.random(-2000,1500),500)
    doTweenY('hukeytween'.. math.random(1,1000000),'huke'..huke1,-900,tweentime,'linear')
    doTweenAlpha('hukeytwefen'.. math.random(1,1000000),'huke'..huke1,0,tweentime,'linear')
    scaleObject('huke' .. huke1, 0.5,0.5);
    setObjectOrder('huke' .. huke1, getObjectOrder('BG') + 1)
    setProperty('huke'..huke1..'.visible', false)
    addLuaSprite('huke'..huke1, true)
    table.insert(myGroup, 'huke'..huke1)
    if huke1 >= 100 then
        huke1 = 0
    end
end

function onEvent(name, v1, v2)
	if name == 'badapplelol' and v1 == 'a' then
		setProperty("BG_front.alpha", 0)
	end
	if name == 'badapplelol' and v1 == 'b' then
		setProperty("BG_front.alpha", 1)
	end
end

function onDestroy()
		setPropertyFromClass("openfl.Lib", "application.window.title", "Friday Night Funkin': Psych Engine")
		addHaxeLibrary('Image','lime.graphics')
		addHaxeLibrary('Application', 'lime.app')
		runHaxeCode([[
			Application.current.window.setIcon(Image.fromFile(Paths.modFolders('images/iconOG.png')));
		]])
	end