var shader = game.createRuntimeShader("adjustColor");
var shader2 = game.createRuntimeShader("RGB_PIN_SPLIT");
var shader3 = game.createRuntimeShader("bloom");
var shader4 = game.createRuntimeShader("perspective");

function onCreatePost() game.camGame.filters = ([new ShaderFilter(shader), (new ShaderFilter(shader2)),(new ShaderFilter(shader3))]);
game.camHUD.filters = ([new ShaderFilter(shader), (new ShaderFilter(shader2)),(new ShaderFilter(shader4))]);

var tween;
var tween2;

function onEvent(namae,v1,v2) 
{
    if (namae == 'RGB') 
    {
        tween = FlxTween.num(-20, 0, 2, {ease: FlxEase.quadOut}, f -> shader.setFloat("hue", f));
        tween2 = FlxTween.num(0.025, 0, 1, {ease: FlxEase.quadOut}, f -> shader2.setFloat("amount", f));
    }
}