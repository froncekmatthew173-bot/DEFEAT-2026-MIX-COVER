
function onCreatePost()
    setProperty('gfGroup.alpha', 0)
    setProperty('healthBar.alpha', 0)
    noteTweenX('oppo0', 0, -125, 0.01, 'ExpoOut')
    noteTweenX('oppo1', 1, -125, 0.01, 'ExpoOut')
    noteTweenX('oppo2', 2, -125, 0.01, 'ExpoOut')
    noteTweenX('oppo3', 3, -125, 0.01, 'ExpoOut')
    setTimeBarColors('FF0000', '000000')
    setProperty('timeTxt.color', getColorFromHex('FF0000'))
    setPropertyFromClass('backend.ClientPrefs','data.middleScroll',false)
end

local fullscreen = false

function onUpdate()
    fullscreen = getPropertyFromClass("openfl.Lib", "application.window.fullscreen")
    if keyboardJustPressed('F11') then
        if fullscreen == false then
            setPropertyFromClass("openfl.Lib", "application.window.fullscreen", true)
        else
            setPropertyFromClass("openfl.Lib", "application.window.fullscreen", false)
        end
    end
end