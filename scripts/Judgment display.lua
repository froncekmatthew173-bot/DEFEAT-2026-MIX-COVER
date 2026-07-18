local sickHit = 0
local goodHit = 0
local badHit = 0
local shitHit = 0
local missHit = 0

local beMusicMode = false

function onCreate()
    if getModSetting('jd') == true then
    makeLuaText('judge', '', 1280, 10, 0)
    setTextSize('judge', 20)
    setTextAlignment('judge', 'left')
    setObjectCamera('judge', 'other')
    screenCenter('judge', 'y')
    setProperty('judge.antialiasing', true)
    addLuaText('judge',false)
end
end

function onUpdate()
    if getModSetting('jd') == true then
    setTextString('judge',
        'Sussy!: ' .. sickHit ..
        '\nSus!  : ' .. goodHit ..
        '\nSad   : ' .. badHit ..
        '\nAss!  : ' .. shitHit ..
        '\nMiss  : ' .. missHit
    )
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if not isSustainNote then
        local rating = getPropertyFromGroup('notes', id, 'rating')
        if rating == 'sick' then
            sickHit = sickHit + 1
        elseif rating == 'good' then
            goodHit = goodHit + 1
        elseif rating == 'bad' then
            badHit = badHit + 1
        elseif rating == 'shit' then
            shitHit = shitHit + 1
        end
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
    missHit = missHit + 1
end
