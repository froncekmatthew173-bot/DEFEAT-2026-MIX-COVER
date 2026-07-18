var lastNote = 0;

function goodNoteHit(n) 
{
    if (n.isSustainNote || boyfriend.curCharacter == 'tophat2' || boyfriend.curCharacter == 'bass3') return;
    
    if (lastNote == n.strumTime)
    {
        if (n.noteType == 'GF Note' || (gfSection && mustHitSection)) makeGhost(gf);
        else makeGhost(boyfriend);
    }
    else lastNote = n.strumTime;
}

var lastNoteOp = 0;
function opponentNoteHit(n) 
{
    if (n.isSustainNote || dad.curCharacter == 'mephonedearest2') return;

    if (lastNoteOp == n.strumTime) makeGhost(dad);
    else lastNoteOp = n.strumTime;
}

function makeGhost(char:Character)
{
    var trail = new Character(char.x, char.y, char.curCharacter, char.isPlayer);
    switch(char)
    {
    case dad:
        trail.color = FlxColor.fromRGB(dad.healthColorArray[0], dad.healthColorArray[1], dad.healthColorArray[2]);
    case boyfriend:
        trail.color = FlxColor.fromRGB(boyfriend.healthColorArray[0], boyfriend.healthColorArray[1], boyfriend.healthColorArray[2]);
    }
    trail.alpha = 0.7;
    trail.scale.set(char.scale.x, char.scale.y);
    trail.flipX = char.flipX;
    trail.holdTimer = 0;

    switch(char)
    {
        case boyfriend: addBehindBF(trail);
        case dad: addBehindDad(trail);
        case gf: addBehindGF(trail);
    }

    trail.playAnim(char.getAnimationName());

    FlxTween.tween(trail, {alpha: 0}, .4).onComplete = function() 
    {
        trail.kill();
        remove(trail, true);
    };
    
    trail.animation.frameName = char.animation.frameName;
    trail.offset.x = char.offset.x;
    trail.offset.y = char.offset.y;
}