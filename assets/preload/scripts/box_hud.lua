function onCreatePost()

    makeLuaText('score','',0,15,570); 
    setTextSize('score', 21);
    setTextBorder('score', 3.5, '000000')
    setTextFont('score', "wi.ttf") 
    setObjectCamera('score', 'HUD')
    addLuaText('score');

    makeLuaText('misses','',0,15,595.5); 
    setTextSize('misses', 21);
    setTextBorder('misses', 3.5, '000000')
    setTextFont('misses', "wi.ttf")
    setObjectCamera('misses', 'HUD')
    addLuaText('misses');
 
    makeLuaText('accu', 'Accuracy', 0, 15,622) 
    setTextSize('accu', 21);
    setTextBorder('accu', 3.5, '000000')
    setTextFont('accu', "wi.ttf")
    setObjectCamera('accu', 'HUD')
    addLuaText('accu')

    makeLuaText('marktime','',0, 625, 663)
    setTextFont('marktime','wi.ttf')
    setTextSize('marktime', 19)
    setObjectCamera('marktime', 'hud');
    setTextBorder('marktime',3.5,'000000')
    setProperty('marktime.alpha', 0);
    addLuaText('marktime')

    makeLuaText('sick','',0,1130,585); 
    setTextSize('sick', 21);
    setTextBorder('sick', 3.5, '000000')
    setTextFont('sick', "wi.ttf")
    setObjectCamera('sick', 'HUD')
    addLuaText('sick');

    makeLuaText('good','',0,1130,610.5); 
    setTextSize('good', 21);
    setTextBorder('good', 3.5, '000000')
    setTextFont('good', "wi.ttf")
    setObjectCamera('good', 'HUD')
    addLuaText('good');

    makeLuaText('bad','',0,1130,636); 
    setTextSize('bad', 21);
    setTextBorder('bad', 3.5, '000000')
    setTextFont('bad', "wi.ttf")
    setObjectCamera('bad', 'HUD')
    addLuaText('bad');

    makeLuaText('shit','',0,1130,663); 
    setTextSize('shit', 21);
    setTextBorder('shit', 3.5, '000000')
    setTextFont('shit', "wi.ttf")
    setObjectCamera('shit', 'HUD')
    addLuaText('shit');

    makeLuaText('songname','',0,7,663)
    setTextSize('songname', 23)
    setTextBorder('songname', 3.5, '000000')
    setTextFont('songname', "wi.ttf")
    addLuaText('songname')
    setTextString('songname',songName..'')

end

function onUpdate()
  setProperty('timeBarBG.visible', true)
  setProperty('scoreTxt.visible', false)

  setProperty('timeBar.x', 445)
  setProperty('timeBar.scale.x', 3.225)
  setProperty('timeBarBG.scale.x', 3.375)
  setProperty('timeBar.scale.y', 1.035)
  setProperty('timeBarBG.scale.y', 1.195)
  setProperty('timeBar.y', 712)
  setProperty('timeBarBG.y', 708)
  setObjectCamera('timeBar', 'HUD')

  setTextSize('timeTxt', 20)
  setTextFont('timeTxt', "wi.ttf")
  setTextBorder('timeTxt', 3.5, '000000')
  setTextAlignment('timeTxt', 'right')
  setProperty('timeTxt.x', 228)
  setProperty('timeTxt.y', 663)
  setObjectCamera('timeTxt', 'HUD')

  setProperty('timeBar.color', getColorFromHex('ffffff'))

setObjectOrder('timeBar', true)
setObjectOrder('timeBarBG', false)
setObjectOrder('iconP2', false)
setObjectOrder('iconP1', false)
setObjectOrder('oswaldiconHell', false)
setObjectOrder('oswaldicon2', false)
setObjectOrder('healthBar', false)
setObjectOrder('healthBarBG', false)
setObjectOrder('notes', false)
setObjectOrder('strumLineNotes', false)
setObjectOrder('strum', false)
setObjectOrder('BarradeAbajo', false)
setObjectOrder('BarradeArriba', false)
setObjectOrder('thanks', false)

if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
setProperty('sick.y', 20)
setProperty('good.y', 45)
setProperty('bad.y', 70)
setProperty('shit.y', 96)
setProperty('songname.y', 20)
setProperty('score.y', 75)
setProperty('misses.y', 102)
setProperty('accu.y', 128)
setProperty('timeTxt.y', 20)
setProperty('marktime.y', 20)
setProperty('timeBarBG.y', -4)
setProperty('timeBar.y', 0)

else if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
setProperty('sick.y', 585)
setProperty('good.y', 610.5)
setProperty('bad.y', 636)
setProperty('shit.y', 663)
setProperty('songname.y', 663)
setProperty('score.y', 570)
setProperty('misses.y', 595.5)
setProperty('accu.y', 622)
setProperty('timeTxt.y', 663)
setProperty('marktime.y', 663)
setProperty('timeBarBG.y', 700.5)
setProperty('timeBar.y', 700.5)
end

function goodNoteHit(coolNote, noteData, noteType, isSustain)
  if getPropertyFromClass('ClientPrefs', 'scoreZoom') == true then
    -- Psych Score Tween !!
    setProperty('score.scale.x', 1.075)
    setProperty('score.scale.y', 1.075)
    doTweenX('scoreScaleX', getProperty('score.scale'), 1, 0.2)
    doTweenY('scoreScaleY', getProperty('score.scale'), 1, 0.2)

    setProperty('misses.scale.x', 1.075)
    setProperty('misses.scale.y', 1.075)
    doTweenX('missesScaleX', getProperty('misses.scale'), 1, 0.2)
    doTweenY('missesScaleY', getProperty('misses.scale'), 1, 0.2)

    setProperty('accu.scale.x', 1.075)
    setProperty('accu.scale.y', 1.075)
    doTweenX('accuScaleX', getProperty('accu.scale'), 1, 0.2)
    doTweenY('accuScaleY', getProperty('accu.scale'), 1, 0.2)

    setProperty('songname.scale.x', 1.075)
    setProperty('songname.scale.y', 1.075)
    doTweenX('songnameScaleX', getProperty('songname.scale'), 1, 0.2)
    doTweenY('songnameScaleY', getProperty('songname.scale'), 1, 0.2)

    setProperty('sick.scale.x', 1.075)
    setProperty('sick.scale.y', 1.075)
    doTweenX('sickScaleX', getProperty('sick.scale'), 1, 0.2)
    doTweenY('sickScaleY', getProperty('sick.scale'), 1, 0.2)

    setProperty('good.scale.x', 1.075)
    setProperty('good.scale.y', 1.075)
    doTweenX('goodScaleX', getProperty('good.scale'), 1, 0.2)
    doTweenY('goodScaleY', getProperty('good.scale'), 1, 0.2)

    setProperty('bad.scale.x', 1.075)
    setProperty('bad.scale.y', 1.075)
    doTweenX('badScaleX', getProperty('bad.scale'), 1, 0.2)
    doTweenY('badScaleY', getProperty('bad.scale'), 1, 0.2)

    setProperty('shit.scale.x', 1.075)
    setProperty('shit.scale.y', 1.075)
    doTweenX('shitScaleX', getProperty('shit.scale'), 1, 0.2)
    doTweenY('shitScaleY', getProperty('shit.scale'), 1, 0.2)
  end
end
end

function onSongStart()
  doTweenAlpha('holaTIEMPO', 'marktime', 1, 0.2)
  end
  
  function onEndSong()
  doTweenAlpha('adiosTIEMPO', 'marktime', 0, 0.2)
  end

  function roundDecimal(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0);
    return math.floor(num * mult) / mult;
  end

function onUpdatePost()
    setTextString('sick', 'Sick: '..getProperty('sicks'));
    setTextString('good', 'Good: '..getProperty('goods'));
    setTextString('bad', 'Bad: '..getProperty('bads'));
    setTextString('shit', 'Shit: '..getProperty('shits'));
    setTextString('score', 'Score: '..getProperty('songScore'));
    setTextString('misses', 'Misses: '..getProperty('songMisses'));
    setTextString('accu','Acurracy: '..math.floor(getProperty('ratingPercent') * 10000)/100)
    songSecs = tostring(roundDecimal(((songLength/1000)%60), 0))
    songMins = tostring(roundDecimal(((songLength/(1000*60))%60), 0))
    if #songSecs < 2 then
        songSecs = "0" .. songSecs
    end
    setTextString('marktime',  ' - ' .. songMins .. ':' .. songSecs)
    math.randomseed(getPropertyFromClass('Conductor', 'songPosition') / curStep * math.random(4124,12312) * curBeat * 5843223)
end
end