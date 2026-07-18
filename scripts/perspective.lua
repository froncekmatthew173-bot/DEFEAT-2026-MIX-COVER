local shaderName = "perspective"
function onCreate()
    if shadersEnabled == true then
    shaderCoordFix() -- initialize a fix for textureCoord when resizing game window

    makeLuaSprite("perspective")
    makeGraphic("shaderImage", screenWidth, screenHeight)

   setSpriteShader("shaderImage", "perspective")

    makeLuaSprite("monitorShaderObj")
    initLuaShader("bloom")
    setSpriteShader('monitorShaderObj','bloom')

    runHaxeCode([[
        var monitorShader = new ShaderFilter(game.getLuaObject('monitorShaderObj').shader);
        var shaderName = "]] .. shaderName .. [[";
        
        game.initLuaShader(shaderName);
        
        var shader0 = game.createRuntimeShader(shaderName);
        game.camGame.setFilters([new ShaderFilter(shader0)]);
        game.getLuaObject("perspective").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties
        game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("perspective").shader)]);
        game.camGame.filters = [monitorShader];
        return;
    ]])
end
end

function onUpdate(elapsed)
    if shadersEnabled == true then
    setShaderFloat("perspective", "iTime", os.clock())
    end
 end

function shaderCoordFix()
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null || spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camHUD.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
        return;
    ]])
    
    local temp = onDestroy
    function onDestroy()
        runHaxeCode([[
            FlxG.signals.gameResized.remove(fixShaderCoordFix);
            return;
        ]])
        if (temp) then temp() end
    end
end