---
--- @param eventName string
--- @param value1 string
--- @param value2 string
--- @param strumTime float
---
function onEvent(eventName, value1, value2, strumTime)
    if eventName == 'Flash Camera' then
        if flashingLights then
            makeLuaSprite("flashingSpr")
            makeGraphic("flashingSpr", screenWidth, screenHeight, value2)
            scaleObject("flashingSpr", 4.0, 4.0)
            setScrollFactor("flashingSpr", 0.0, 0.0)
            screenCenter("flashingSpr")
            addLuaSprite("flashingSpr", true)
            doTweenAlpha("fhwuifgwe", "flashingSpr", .0, value1 / playbackRate, "linear")
        end
    end
end