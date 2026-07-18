-----------------------------------------------------------
--Camera Movement Script by NicolasMyt--
-----------------------------------------------------------

local enableSystem = true

local DadX = 0
local DadY = 0

local BfX = 0
local BfY = 0

local GfX = 0
local GfY = 0

local BfOfs = 25
local GfOfs = 0
local DadOfs = 20

local curCameraState = nil
local cameraMoving = false

local def = 1.0

--[[If you want to know the credits:
i got a ideia of the script by Washo789, 
the script is made by BF Myt.]]--

function onCreatePost()
    def = getProperty('defaultCamZoom')
end

function onUpdate()
    if enableSystem == true then
        if mustHitSection == false then
                if gfSection == false or gfSection == nil then
                    DadX = getMidpointX('dad') + 150 + getProperty('dad.cameraPosition[0]') + getProperty('opponentCameraOffset[0]')
                    DadY = getMidpointY('dad') - 100 + getProperty('dad.cameraPosition[1]') + getProperty('opponentCameraOffset[1]')

                    if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                        triggerEvent('Camera Follow Pos',DadX-DadOfs,DadY)
                        cameraMoving = true
                    elseif getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                        triggerEvent('Camera Follow Pos',DadX+(DadOfs/2),DadY)
                        cameraMoving = true
                    elseif getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                        triggerEvent('Camera Follow Pos',DadX,DadY-DadOfs)
                        cameraMoving = true
                    elseif getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                        triggerEvent('Camera Follow Pos',DadX,DadY+DadOfs)
                        cameraMoving = true
                    elseif getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                        triggerEvent('Camera Follow Pos',DadX,DadY)
                    else
                        if cameraMoving == true then
                            triggerEvent('Camera Follow Pos',DadX,DadY)
                            cameraMoving = false
                        end
                    end
                else
                    -- The camera follows GF when she sings, only when the "GF Section" option in the chart editor is activated. 
                    GfX = getMidpointX('gf') + getProperty('gf.cameraPosition[0]') + getProperty('girlfriendCameraOffset[0]')
                    GfY = getMidpointY('gf') + getProperty('gf.cameraPosition[1]') + getProperty('girlfriendCameraOffset[1]')
                    if getProperty('gf.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singLEFT-alt' then
                        triggerEvent('Camera Follow Pos',GfX-ofs,GfOfs)
                        cameraMoving = true
                    elseif getProperty('gf.animation.curAnim.name') == 'singRIGHT' or getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
                        triggerEvent('Camera Follow Pos',GfX+ofs,GfOfs)
                        cameraMoving = true
                    elseif getProperty('gf.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
                        triggerEvent('Camera Follow Pos',GfX,GfY-GfOfs)
                        cameraMoving = true
                    elseif getProperty('gf.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
                        triggerEvent('Camera Follow Pos',GfX,GfY+GfOfs)
                        cameraMoving = true

                    else
                        if cameraMoving == true then
                            triggerEvent('Camera Follow Pos',GfX,GfY)
                            cameraMoving = false
                        end
                    end
                end
        else

                BfX = getMidpointX('boyfriend') - 100 - getProperty('boyfriend.cameraPosition[0]') + getProperty('boyfriendCameraOffset[0]')
                BfY = getMidpointY('boyfriend') - 100 + getProperty('boyfriend.cameraPosition[1]') + getProperty('boyfriendCameraOffset[1]')


            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',BfX-BfOfs,BfY)
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',BfX+BfOfs,BfY)
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singUP' or getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',BfX,BfY-BfOfs)
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',BfX,BfY+BfOfs)
            elseif getProperty('boyfriend.animation.curAnim.name') == 'idle' or getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',BfX,BfY)
            else
                if cameraMoving == true then
                    triggerEvent('Camera Follow Pos',BfX,BfY)
                    cameraMoving = false
                end
            end
        end

--[[Zooming

  if mustHitSection and enableSystem then
    setProperty('defaultCamZoom', def + 0)
  elseif enableSystem then
    setProperty('defaultCamZoom', def + 0.12)
  end
]]
    end
	
end

function onEvent(n,v1,v2)

  if n == 'enableCamMove' then

    if v1 == '0' then
      enableSystem = false

    elseif v1 == '1' then
      enableSystem = true
    end

  end

  if n == 'Set Property' and v1 == 'defaultCamZoom' then
    def = v2
  end

  if n == 'Set Cam Zoom' then
    def = value1
  end

end

function onCreate()

--precacheImage(char..'.imageFile')

end


function getIconColor(chr)

return getColorFromHex(rgbToHex(getProperty(chr .. ".healthColorArray")))

end


function rgbToHex(array)

return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])

end


function goodNoteHit(id, direction, noteType, isSustainNote)

if _G['boyfriendGhostData.strumTime'] == getPropertyFromGroup('notes', id, 'strumTime') and not isSustainNote then

--createGhost('boyfriend')

end

if not isSustainNote then

_G['boyfriendGhostData.strumTime'] = getPropertyFromGroup('notes', id, 'strumTime')

--updateGData('boyfriend')

end

end

function opponentNoteHit(id, direction, noteType, isSustainNote)

if _G['dadGhostData.strumTime'] == getPropertyFromGroup('notes', id, 'strumTime') and not isSustainNote then
--createGhost('dad')

end

if not isSustainNote then

_G['dadGhostData.strumTime'] = getPropertyFromGroup('notes', id, 'strumTime')
--updateGData('dad')

end

end


function createGhost(char)

songPos = getSongPosition() --in case game stutters

makeAnimatedLuaSprite(char..'Ghost'..songPos, getProperty(char..'.imageFile'),getProperty(char..'.x'),getProperty(char..'.y'))

addLuaSprite(char..'Ghost'..songPos, false)

setProperty(char..'Ghost'..songPos..'.scale.x',getProperty(char..'.scale.x'))

setProperty(char..'Ghost'..songPos..'.scale.y',getProperty(char..'.scale.y'))

setProperty(char..'Ghost'..songPos..'.flipX', getProperty(char..'.flipX'))

setProperty(char..'Ghost'..songPos..'.color', getIconColor(char))

setProperty(char..'Ghost'..songPos..'.alpha', 1)

doTweenAlpha(char..'Ghost'..songPos..'delete', char..'Ghost'..songPos, 0, 0.4)

setProperty(char..'Ghost'..songPos..'.animation.frameName', _G[char..'GhostData.frameName'])

setProperty(char..'Ghost'..songPos..'.offset.x', _G[char..'GhostData.offsetX'])

setProperty(char..'Ghost'..songPos..'.offset.y', _G[char..'GhostData.offsetY'])

setObjectOrder(char..'Ghost'..songPos, getObjectOrder(char..'Group')-1)

end


function onTweenCompleted(tag)

if (tag:sub(#tag- 5, #tag)) == 'delete' then

removeLuaSprite(tag:sub(1, #tag - 6), true)

end

end


function updateGData(char)

_G[char..'GhostData.frameName'] = getProperty(char..'.animation.frameName')

_G[char..'GhostData.offsetX'] = getProperty(char..'.offset.x')

_G[char..'GhostData.offsetY'] = getProperty(char..'.offset.y')

end


-- i like number 45 :thumbs_up: