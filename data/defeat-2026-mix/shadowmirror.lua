function onCreate()
    makeAnimatedLuaSprite('BFmirror',getProperty('boyfriend.imageFile'),getProperty('boyfriend.x'),0)
    addLuaSprite('BFmirror',false)
    setProperty('BFmirror.visible',false)
    setObjectOrder('BFmirror',getObjectOrder('boyfriendGroup')-2)
    setProperty('BFmirror.offset.x',getProperty('boyfriend.offset.x'))
    setProperty('BFmirror.offset.y',getProperty('boyfriend.offset.y') - 25)
    setProperty('BFmirror.scale.x',getProperty('boyfriend.scale.x'))
    setProperty('BFmirror.scale.y',getProperty('boyfriend.scale.y'))
    setProperty('BFmirror.alpha',0.5)
    setProperty('BFmirror.flipX', getProperty('boyfriend.flipX'))
    setProperty('BFmirror.flipY', true)
    setProperty('BFmirror.y',(getProperty('boyfriend.y')-7.5) + getProperty('boyfriend.frameHeight')*getProperty('boyfriend.scale.y') * 2 - getProperty('boyfriend.offset.y') * 2 + 0)

    makeAnimatedLuaSprite('DadMirror',getProperty('boyfriend.imageFile'),getProperty('boyfriend.x'),0)
    addLuaSprite('DadMirror',false)
    setProperty('Dadmirror.visible',false)
    setObjectOrder('DadMirror',getObjectOrder('dadGroup')-2)
    setProperty('DadMirror.offset.x',getProperty('dad.offset.x'))
    setProperty('DadMirror.offset.y',getProperty('dad.offset.y') - 25)
    setProperty('DadMirror.scale.x',getProperty('dad.scale.x'))
    setProperty('DadMirror.scale.y',getProperty('dad.scale.y'))
    setProperty('DadMirror.alpha',0.5)
    setProperty('DadMirror.flipX', getProperty('dad.flipX'))
    setProperty('DadMirror.flipY', true)
    setProperty('DadMirror.y',(getProperty('dad.y')-7.5) + getProperty('dad.frameHeight')*getProperty('dad.scale.y') * 2 - getProperty('dad.offset.y') * 2 + 0)
end

function onUpdate()
    if curBeat >= 696 and curBeat < 728 or curBeat >= 856 and curBeat < 888 then
    setProperty('BFmirror.visible',true)
    setProperty('DadMirror.visible',true)
    addAnimationByPrefix('BFmirror','b',getProperty('boyfriend.animation.frameName'),1,true)
    playAnim("BFmirror","b",true)
    setProperty('BFmirror.offset.x',getProperty('boyfriend.offset.x'))
    setProperty('BFmirror.offset.y',getProperty('boyfriend.frameHeight')*getProperty('boyfriend.scale.y')-getProperty('boyfriend.offset.y') + 50)
    setProperty('BFmirror.color',getColorFromHex('000000'))

    addAnimationByPrefix('DadMirror','b',getProperty('dad.animation.frameName'),1,true)
    playAnim("DadMirror","b",true)
    setProperty('DadMirror.offset.x',getProperty('dad.offset.x'))
    setProperty('DadMirror.offset.y',getProperty('dad.frameHeight')*getProperty('dad.scale.y')-getProperty('dad.offset.y'))
    setProperty('DadMirror.color',getColorFromHex('000000'))
    else
        setProperty('BFmirror.visible',false)
        setProperty('Dadmirror.visible',false)
    end
end

function onEvent(name,value1,value2)
    if name == "Change Character" then
        if value1 == "BF" or value1 == "bf" then
            makeAnimatedLuaSprite('BFmirror',getProperty('boyfriend.imageFile'),getProperty('boyfriend.x'),0)
            addLuaSprite('BFmirror',false)
            setProperty('BFmirror.visible',false)
            setObjectOrder('BFmirror',getObjectOrder('boyfriendGroup')-2)
            setProperty('BFmirror.offset.x',getProperty('boyfriend.offset.x'))
            setProperty('BFmirror.offset.y',getProperty('boyfriend.offset.y') - 25)
            setProperty('BFmirror.scale.x',getProperty('boyfriend.scale.x'))
            setProperty('BFmirror.scale.y',getProperty('boyfriend.scale.y'))
            setProperty('BFmirror.alpha',0.5)
            setProperty('BFmirror.flipX', getProperty('boyfriend.flipX'))
            setProperty('BFmirror.flipY', true)
            setProperty('BFmirror.y',(getProperty('boyfriend.y')-7.5) + getProperty('boyfriend.frameHeight')*getProperty('boyfriend.scale.y') * 2 - getProperty('boyfriend.offset.y') * 2 + 0)
        end
        if value1 == "Dad" or value1 == "dad" then
            makeAnimatedLuaSprite('DadMirror',getProperty('dad.imageFile'),getProperty('dad.x'),0)
            addLuaSprite('DadMirror',false)
            setProperty('DadMirror.visible',false)
            setObjectOrder('DadMirror',getObjectOrder('dadGroup')-2)
            setProperty('DadMirror.offset.x',getProperty('dad.offset.x'))
            setProperty('DadMirror.offset.y',getProperty('dad.offset.y') - 25)
            setProperty('DadMirror.scale.x',getProperty('dad.scale.x'))
            setProperty('DadMirror.scale.y',getProperty('dad.scale.y'))
            setProperty('DadMirror.alpha',0.5)
            setProperty('DadMirror.flipX', getProperty('dad.flipX'))
            setProperty('DadMirror.flipY', true)
            setProperty('DadMirror.y',(getProperty('dad.y')-7.5) + getProperty('dad.frameHeight')*getProperty('dad.scale.y') * 2 - getProperty('dad.offset.y') * 2 -750)
        end
    end
end