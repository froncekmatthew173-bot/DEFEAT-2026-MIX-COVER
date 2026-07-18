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

local BGlist = {"Poll","HQ","Air"}

local FinaleBGlist = {"bg","bgg","Air"}

local rank = 'F'


function onCreate()
	-- background shit
	makeLuaSprite('tester','',0,0)
	addLuaSprite('tester',true)
	setProperty('tester.visible',false)
	makeLuaSprite('tester2','',0,0)
	addLuaSprite('tester2',true)
	setProperty('tester2.visible',false)

	makeLuaSprite('BG_legacy', 'BG_legacy', -2080, -720);
	setScrollFactor('BG_legacy', 1, 1);
	scaleObject('BG_legacy', 1.25, 1.25);
	addLuaSprite('BG_legacy', false);
	setProperty('BG_legacy.alpha',1)

	setProperty('skipCountdown', true);
	if flashingLights then
	makeLuaSprite("brood","",0,0)
	makeGraphic("brood",screenWidth * 1.25,screenHeight * 1.25 ,"FF1266")
	setObjectCamera("brood","other")
	addLuaSprite("brood",false)
	setProperty("brood.alpha",0)
	end

	makeLuaSprite("blacl","",0,0)
	makeGraphic("blacl",screenWidth * 1.5,screenHeight * 1.5,"000000")
	setObjectCamera("blacl","other")
	addLuaSprite("blacl",true)
	setProperty("blacl.alpha",0)

	if flashingLights then
	makeLuaSprite("Whitee","",0,0)
	makeGraphic("Whitee",screenWidth * 1.25,screenHeight * 1.25,"FFFFFF")
	setObjectCamera("Whitee","other")
	addLuaSprite("Whitee",true)
	setProperty("Whitee.alpha",0)
	end

	makeLuaSprite("BBlack","",715,0)
	makeGraphic("BBlack",480,720,"000000")
	setObjectCamera("BBlack","HUD")
	addLuaSprite("BBlack",false)
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

	makeLuaSprite("lyrics","kill",0,0)
	screenCenter("lyrics","XY")
	setObjectCamera("lyrics","other")
	addLuaSprite("lyrics",true)
	setProperty("lyrics.alpha",0)

	makeLuaSprite('OMG','OMG',0,0)
	setObjectCamera('OMG','HUD')
	addLuaSprite('OMG',true)

	makeLuaSprite('parasite','parasite',-1500,0)
	scaleObject('parasite',0.65,0.65)
	setObjectCamera('parasite','HUD')
	addLuaSprite('parasite',true)

	makeLuaText('songName','FINALE 2026 MIX',1280,1500,200)
	addLuaText('songName')
	setTextFont('songName','AmaticSC-Bold.ttf')
	setTextSize('songName',150)
	setTextColor('songName','000000')
	setTextBorder('songName',2,'FF0000')

	makeLuaText('songsetumei','ART: KOKOSAN\nCHART: Yu-kun',1280,1500,350)
	addLuaText('songsetumei')
	setTextFont('songsetumei','AmaticSC-Bold.ttf')
	setTextSize('songsetumei',75)
	setTextAlignment('songsetumei','left')
	setTextColor('songsetumei','000000')
	setTextBorder('songsetumei',2,'FF0000')
	setProperty('OMG.alpha',0)
	setProperty('songName.alpha',1)
	setProperty('songsetumei.alpha',1)
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

	for i = 0,2 do
	makeLuaSprite(BGlist[i + 1], BGlist[i + 1], -2000, -600);
	setScrollFactor(BGlist[i + 1], 1, 1);
	scaleObject(BGlist[i + 1], 1.75, 1.5);
	addLuaSprite(BGlist[i + 1], false);
	setProperty(BGlist[i + 1] .. '.alpha',0);
	end
	setProperty('camHUD.alpha',0)

	makeLuaSprite('FinaleBGg','finale/bgg',-2300,-1120)
	addLuaSprite('FinaleBGg')
	scaleObject("FinaleBGg", 1.25, 1.25)

	makeLuaSprite('FinaleBG','finale/bg',-2300,-1120)
	addLuaSprite('FinaleBG')
	scaleObject("FinaleBG", 1.25, 1.25)

	makeLuaSprite('Finalefore','finale/fore',-2100,-650)
	addLuaSprite('Finalefore',true)
	scaleObject("Finalefore", 1.25, 1.25)

	makeLuaSprite('Finalelamp','finale/lamp',-50,-1050)
	addLuaSprite('Finalelamp',true)
	scaleObject("Finalelamp", 1.25, 1.25)

	if flashingLights then
	makeAnimatedLuaSprite('light','finale/light',-1600,-600)
	addAnimationByPrefix('light','light','light',24,true)
	addLuaSprite('light',true)
	setProperty('light.alpha',0.5)
	scaleObject("light", 1.25, 1.25)
	end

	makeLuaSprite('FinaleDark','finale/dark',-2300,-1120)
	addLuaSprite('FinaleDark',true)
	scaleObject("FinaleDark", 1.25, 1.25)

	makeLuaSprite('healthBarFinaleRed','finale/healthBarFinaleRed',100,500)
	setObjectCamera('healthBarFinaleRed','HUD')
	addLuaSprite('healthBarFinaleRed',true)	
	scaleObject('healthBarFinaleRed', 0.75, 0.75)
	if downscroll then
		setProperty('healthBarFinaleRed.flipY', true)
		setProperty('healthBarFinaleRed.y', -100)
	end

	makeLuaSprite('raed','finale/raed',100,500)
	setObjectCamera('raed','HUD')
	addLuaSprite('raed',true)	
	scaleObject('raed', 0.75, 0.75)
	setProperty('raed.flipX', true)
	if downscroll then
		setProperty('raed.flipY', true)
		setProperty('raed.y', -100)
	end

	makeAnimatedLuaSprite('blackicon','icons/icon-blackFinale',50,350)
	addAnimationByPrefix('blackicon','idle','black icon mad',24,true)
	addLuaSprite('blackicon',true)
	scaleObject("blackicon", 1, 1)
	setObjectCamera('blackicon','HUD')
	playAnim('blackicon','idle',true)
	setProperty('blackicon.alpha',0)
	if downscroll then
		setProperty('blackicon.y', -150)
	end
	setProperty('raed.visible',false)
	setProperty('healthBarFinaleRed.visible',false)
	setProperty('FinaleBGg.alpha',0)
	setProperty('FinaleBG.alpha',0)
	setProperty('Finalefore.alpha',0)
	setProperty('Finalelamp.alpha',0)
	setProperty('light.alpha',0)
	setProperty('FinaleDark.alpha',0)
end

function onCreatePost()
	luachartingmode = runHaxeCode("return PlayState.chartingMode;")
	if luachartingmode == true then
		setProperty('defaultCamZoom', 0.45);
		removeLuaSprite('Whitee')
		removeLuaSprite('blacl')
	end
	if luachartingmode == false then
    setProperty('iconP1.alpha', 0)
    setProperty('iconP2.alpha', 0)
    setProperty('scoreTxt.alpha', 0)
    setProperty('timeBar.alpha', 0)
    setProperty('timeTxt.alpha', 0)
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
	setTextString('scoreTxt', 'SCORE: ' .. score ..' | MISSES: ' .. misses .. ' | Accuracy: N/A | Rank : N/A')
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
        positioned = true
    end
	setProperty('iconP2.x',100)
	setProperty('iconP1.x',850)
    if curStep >= 352 and curStep < 624 then
        for i, v in ipairs(myGroup) do
            setProperty(v .. '.visible', true)
        end
    else
        for i, v in ipairs(myGroup) do
            setProperty(v .. '.visible', false)
        end
    end
	if curSection >= 39 then
		setProperty('iconP1.alpha', 1)
		setProperty('scoreTxt.alpha', 1)
		setProperty('timeTxt.alpha', 1)
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

function onUpdatePost()
	if curSection >= 39 then
		runHaxeCode([[
        import flixel.math.FlxRect;
        var bar:FlxSprite = game.getLuaObject('raed');
        bar.clipRect = new FlxRect(0, 0, Std.int(bar.frameWidth * (game.health / 2)), Std.int(bar.frameHeight));
        bar.clipRect = bar.clipRect;
	]])
	end
	setObjectOrder('dad', getObjectOrder('tester') + 1)
end

function opponentNoteHit()
	if curSection >= 39 and getProperty('health') <= 0.02 then
		setProperty('health',getProperty('health') - 0.01)
	end
end

function onSectionHit()
	if curSection == 6 then
		doTweenAlpha('blacltween', 'black', 0, 2, 'linear')
		setProperty('camHUD.alpha',1)
	end
	if curSection == 15 then
		noteTweenAngle('faf', 7, NoteAngle*2, 0.5, 'cubeOut')
		noteTweenAlpha('a', 7, 1, 0.5, 'cubeOut')
		noteTweenAlpha('b', 6, 1, 0.5, 'cubeOut')
		noteTweenAngle('b2', 6, NoteAngle*NoteAnglex, 0.5, 'cubeOut')
		noteTweenAlpha('c', 5, 1, 0.5, 'cubeOut')
		noteTweenAngle('c2', 5, NoteAngle*NoteAnglex, 0.5, 'cubeOut')
		noteTweenAlpha('d', 4, 1, 0.5, 'cubeOut')
		noteTweenAngle('d2', 4, NoteAngle*NoteAnglex, 0.5, 'cubeOut')
	end
	if curSection == 21 then
		setProperty('blacl.alpha',1)
        setProperty('scoreTxt.visible',false)
        setProperty('timeBar.visible',false)
        setProperty('iconP1.visible',false)
        setProperty('iconP2.visible',false)
        setProperty('timeTxt.visible',false)
        setProperty('healthBar.visible',false)
	end
	if curSection == 22 then
		setProperty('criminal.alpha', 1);	
		setProperty('BG.alpha', 1);
		setProperty('BG_front.alpha', 1);
		setProperty('loght.alpha', 1.0);
		setProperty('BG_Legacy.alpha', 0.0);
		doTweenAlpha('blacltween', 'blacl', 0, 3.6, 'linear')
	end
	if curSection >= 26 and curSection < 29 then
		setProperty(BGlist[curSection - 25] .. '.alpha',0.5)
		if curSection >= 27 then
		setProperty(BGlist[curSection - 26] .. '.alpha',0)
		end
	end
	if curSection == 29 then
		doTweenAlpha('whitetween', 'Whitee', 1, 1, 'linear')
	end
	if curSection == 30 then
		setProperty('Whitee.alpha', 0)
		setProperty(BGlist[3] .. '.alpha',0)
	end
	if curSection == 39 then
        setProperty('scoreTxt.visible',true)
        setProperty('iconP1.visible',true)
        setProperty('timeTxt.visible',true)
        setProperty('healthBar.visible',true)
		setProperty('criminal.alpha', 0)
		setProperty('BG.alpha', 0)
		setProperty('BG_front.alpha', 0)
		setProperty('loght.alpha', 0)
		removeLuaSprite('BG_mono')
		removeLuaSprite('criminal')
		removeLuaSprite('BG')
		removeLuaSprite('BG_front')
		setProperty('blackicon.alpha',1)
		setProperty('FinaleBGg.alpha',1)
		setProperty('FinaleBG.alpha',1)
		setProperty('Finalefore.alpha',1)
		setProperty('Finalelamp.alpha',1)
		setProperty('light.alpha',0.5)
		setProperty('FinaleDark.alpha',1)
		setProperty('healthBarFinaleRed.visible',true)
		setProperty('raed.visible',true)
		setProperty('health',0.1)
		doTweenAlpha('e', 'OMG', 1, 1.5, 'linear')
		doTweenX('f', 'songName', 200, 1.5, 'cubeOut')
		doTweenX('g', 'songsetumei', 550, 1.5, 'cubeOut')
		doTweenX('h', 'parasite', -100, 1.5, 'cubeOut')
	end
	if curSection == 128 then
		setProperty('criminal.alpha', 0)
		setProperty('BG.alpha', 0)
		setProperty('BG_front.alpha', 0)
		setProperty('loght.alpha', 0)
		setProperty('BG_Legacy.alpha', 1)
		if flashingLights then
		setProperty('blacl.alpha', 1)
		doTweenAlpha('blacltween', 'blacl', 0, 1.2, 'linear')
		end
	end
	if curSection == 136 then
		setProperty('criminal.alpha', 1);	
		setProperty('BG.alpha', 1);
		setProperty('BG_front.alpha', 1);
		setProperty('loght.alpha', 1.0);
		setProperty('BG_Legacy.alpha', 0.0);
	end
	if curSection == 146 then
		setProperty('brood.alpha', 1)
		doTweenAlpha('blacltween', 'blacl', 1, 6, 'linear')
	end
	playAnim('loght',"hi pie bye liy",true)
	playAnim('light','light',true)
end

function onStepHit()
	if lowQuality == false then
		if curStep >= 352 and curStep < 624 then
			huke()
		end
	end
	if curStep == 672 then
		setProperty('OMG.alpha',0.66)
		setProperty('songName.alpha',0.66)
		setProperty('songsetumei.alpha',0.66)
		setProperty('parasite.alpha',0.66)
	end
	if curStep == 678 then
		setProperty('OMG.alpha',0.33)
		setProperty('songName.alpha',0.33)
		setProperty('songsetumei.alpha',0.33)
		setProperty('parasite.alpha',0.33)
	end
	if curStep == 684 then
		setProperty('OMG.alpha',0)
		setProperty('songName.alpha',0)
		setProperty('songsetumei.alpha',0)
		setProperty('parasite.alpha',0)
	end
end

function goodNoteHit()
	truerating = math.floor(rating * 10000 + 0.5) / 100
	setTextString('scoreTxt', 'SCORE: ' .. score ..' | MISSES: ' .. misses .. ' | Accuracy: '..truerating ..'% ['..ratingFC..']'..' | Rank: '..rank)
end

function noteMiss()
	truerating = math.floor(rating * 10000 + 0.5) / 100
	setTextString('scoreTxt', 'SCORE: ' .. score ..' | MISSES: ' .. misses .. ' | Accuracy: '..truerating ..'% ['..ratingFC..']'..' | Rank: '..rank)
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

function onDestroy()
		setPropertyFromClass("openfl.Lib", "application.window.title", "Friday Night Funkin': Psych Engine")
		addHaxeLibrary('Image','lime.graphics')
		addHaxeLibrary('Application', 'lime.app')
		runHaxeCode([[
			Application.current.window.setIcon(Image.fromFile(Paths.modFolders('images/iconOG.png')));
		]])
	end

--Special Thanks 
--nes 
--Line 274 haxe code
--Thank you!