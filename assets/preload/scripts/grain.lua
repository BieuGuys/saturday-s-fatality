function onCreate()
    makeAnimatedLuaSprite('Stat', 'daSTAT', 0, 0);
    addAnimationByPrefix('Stat', 'staticFLASH', 'staticFLASH', 24, true);
    setProperty('Stat.visible', true)
    setObjectCamera('Stat', 'other');
    scaleObject('Stat', 3.3, 3.3);
    setProperty('Stat.alpha', 0.06)
    addLuaSprite('Stat', true);

    makeAnimatedLuaSprite('grain', 'backgrounds/grain', 0, 0);
    addAnimationByPrefix('grain', 'grain', 'grain', 24, true);  
    objectPlayAnimation('grain', 'grain', true)
    scaleLuaSprite('grain', 2.75, 2.75);
    addLuaSprite('grain', false);
    setObjectCamera('grain', 'other');
end