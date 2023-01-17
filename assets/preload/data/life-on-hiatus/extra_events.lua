function onCreate()
      makeLuaSprite('BarradeArriba', '', 0, -120)
	makeGraphic('BarradeArriba', 1280, 120, '000000')
	setObjectCamera('BarradeArriba', 'camHUD')
	addLuaSprite('BarradeArriba', false)

	makeLuaSprite('BarradeAbajo', '', 0, 720)
	makeGraphic('BarradeAbajo', 1280, 120, '000000')
	setObjectCamera('BarradeAbajo', 'camHUD')
	addLuaSprite('BarradeAbajo', false)

	makeAnimatedLuaSprite('oswaldicon2', 'icons/oswald-suicide', getProperty('iconP2.x'), getProperty('iconP2.y'))

	luaSpriteAddAnimationByPrefix('oswaldicon2', 'idle', 'idle', 24, true)
	luaSpriteAddAnimationByPrefix('oswaldicon2', 'losing', 'angryish', 24, true)

	setObjectCamera('oswaldicon2', 'hud')
	addLuaSprite('oswaldicon2', true)
	setObjectOrder('oswaldicon2', getObjectOrder('iconP2') + 1)
	setProperty('oswaldicon2.alpha', 0)
	objectPlayAnimation('oswaldicon2', 'idle', true)

	makeAnimatedLuaSprite('oswaldiconHell', 'icons/icon-oswald-hell2', getProperty('iconP2.x'), getProperty('iconP2.y'))

	luaSpriteAddAnimationByPrefix('oswaldiconHell', 'idle', 'o no', 24, true)
	luaSpriteAddAnimationByPrefix('oswaldiconHell', 'losing', 'q rico', 24, true)

	setObjectCamera('oswaldiconHell', 'hud')
	addLuaSprite('oswaldiconHell', true)
	setObjectOrder('oswaldiconHell', getObjectOrder('iconP2') + 1)
	setProperty('oswaldiconHell.alpha', 0)
	objectPlayAnimation('oswaldiconHell', 'idle', true)
end
function onUpdate()
  setProperty('oswaldicon2.x', getProperty('iconP2.x') + 15)
  setProperty('oswaldicon2.y', getProperty('iconP2.y') + 5)
  setProperty('oswaldicon2.angle', getProperty('iconP2.angle'))
  scaleObject('oswaldicon2', getProperty('iconP2.scale.x'), getProperty('iconP2.scale.y'))
  if getProperty('healthBar.percent') > 80 then
	  if getProperty('oswaldicon2.animation.curAnim.name') ~= 'losing' then
		  objectPlayAnimation('oswaldicon2', 'losing', true)
	  end
  else
	  objectPlayAnimation('oswaldicon2', 'idle', true)
  end

  setProperty('oswaldiconHell.x', getProperty('iconP2.x') + 15)
  setProperty('oswaldiconHell.y', getProperty('iconP2.y') + 5)
  setProperty('oswaldiconHell.angle', getProperty('iconP2.angle'))
  scaleObject('oswaldiconHell', getProperty('iconP2.scale.x'), getProperty('iconP2.scale.y'))
  if getProperty('healthBar.percent') > 80 then
	  if getProperty('oswaldiconHell.animation.curAnim.name') ~= 'losing' then
		  objectPlayAnimation('oswaldiconHell', 'losing', true)
	  end
  else
	  objectPlayAnimation('oswaldiconHell', 'idle', true)
  end
end

function onStepHit()
	if curStep >= 400 and curStep < 401 then
		cameraFlash('other', 'ffffff', 1, true) 
	end
	if curStep == 400 then
		setProperty('oswaldicon2.alpha', 1)
		setProperty('iconP2.alpha', 0)
	end
	if curStep == 777 then
		setProperty('oswaldicon2.alpha', 0)
		setProperty('oswaldiconHell.alpha', 1)
	end
if curStep == 1295 then
doTweenY('BarraNegra1', 'BarradeArriba', 0, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 600, 1, 'quartOut')
      noteTweenAlpha("notapl1", 0, 0, 1, "linear")
	noteTweenAlpha("notapl2", 1, 0, 1, "linear")
	noteTweenAlpha("notapl3", 2, 0, 1, "linear")
	noteTweenAlpha("notapl4", 3, 0, 1, "linear")
      noteTweenAlpha("notaop1", 4, 0, 1, "linear")
	noteTweenAlpha("notaop2", 5, 0, 1, "linear")
	noteTweenAlpha("notaop3", 6, 0, 1, "linear")
	noteTweenAlpha("notaop4", 7, 0, 1, "linear")
      doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 1)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 1)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 1)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 1)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 1)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 1)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 1)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 1)
	doTweenAlpha('AlphaTween9', 'marktime', 0, 1)
	doTweenAlpha('AlphaTween10', 'sick', 0, 1)
	doTweenAlpha('AlphaTween11', 'good', 0, 1)
	doTweenAlpha('AlphaTween12', 'bad', 0, 1)
	doTweenAlpha('AlphaTween13', 'shit', 0, 1)
	doTweenAlpha('AlphaTween14', 'score', 0, 1)
	doTweenAlpha('AlphaTween15', 'misses', 0, 1)
	doTweenAlpha('AlphaTween16', 'accu', 0, 1)
	doTweenAlpha('AlphaTween17', 'songname', 0, 1)
	doTweenAlpha('AlphaTween18', 'oswaldiconHell', 0, 1)
end
if curStep == 1310 then
	setProperty('oswaldiconHell.alpha', 0)
end
if curStep == 1329 then
      noteTweenAlpha("notapl1", 0, 1, 0.2, "linear")
	noteTweenAlpha("notapl2", 1, 1, 0.2, "linear")
	noteTweenAlpha("notapl3", 2, 1, 0.2, "linear")
	noteTweenAlpha("notapl4", 3, 1, 0.2, "linear")
      noteTweenAlpha("notaop1", 4, 1, 0.2, "linear")
	noteTweenAlpha("notaop2", 5, 1, 0.2, "linear")
	noteTweenAlpha("notaop3", 6, 1, 0.2, "linear")
	noteTweenAlpha("notaop4", 7, 1, 0.2, "linear")
      doTweenAlpha('AlphaTween1', 'healthBarBG', 1, 0.2)
	doTweenAlpha('AlphaTween2', 'healthBar', 1, 0.2)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.2)
	doTweenAlpha('AlphaTween4', 'iconP1', 1, 0.2)
	doTweenAlpha('AlphaTween5', 'iconP2', 1, 0.2)
	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.2)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.2)
	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.2)
	doTweenAlpha('AlphaTween9', 'marktime', 1, 0.2)
	doTweenAlpha('AlphaTween10', 'sick', 1, 0.2)
	doTweenAlpha('AlphaTween11', 'good', 1, 0.2)
	doTweenAlpha('AlphaTween12', 'bad', 1, 0.2)
	doTweenAlpha('AlphaTween13', 'shit', 1, 0.2)
	doTweenAlpha('AlphaTween14', 'score', 1, 0.2)
	doTweenAlpha('AlphaTween15', 'misses', 1, 0.2)
	doTweenAlpha('AlphaTween16', 'accu', 1, 0.2)
	doTweenAlpha('AlphaTween17', 'songname', 1, 0.2)
end
if curStep == 1410 then
	doTweenAlpha('AlphaTween18', 'oswaldiconHell', 1, 1)
end
if curStep >= 1831 and curStep < 1836 then
    playSound('KABOOM',0.7)
end
if curStep == 1831 then
	setProperty('iconP2.alpha', 0)
	setProperty('oswaldiconHell.alpha', 1)
end
if curStep == 1858 then
doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quartOut')
end
if curStep == 2368 then
doTweenY('BarraNegra1', 'BarradeArriba', 0, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 600, 1, 'quartOut')
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 1)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 1)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 1)
	doTweenAlpha('AlphaTween9', 'marktime', 0, 1)
	doTweenAlpha('AlphaTween10', 'sick', 0, 1)
	doTweenAlpha('AlphaTween11', 'good', 0, 1)
	doTweenAlpha('AlphaTween12', 'bad', 0, 1)
	doTweenAlpha('AlphaTween13', 'shit', 0, 1)
	doTweenAlpha('AlphaTween14', 'score', 0, 1)
	doTweenAlpha('AlphaTween15', 'misses', 0, 1)
	doTweenAlpha('AlphaTween16', 'accu', 0, 1)
	doTweenAlpha('AlphaTween17', 'songname', 0, 1)
end
if curStep == 2896 then
doTweenY('BarraNegra1', 'BarradeArriba', -120, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 720, 1, 'quartOut')
	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.2)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.2)
	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.2)
	doTweenAlpha('AlphaTween9', 'marktime', 1, 0.2)
	doTweenAlpha('AlphaTween10', 'sick', 1, 0.2)
	doTweenAlpha('AlphaTween11', 'good', 1, 0.2)
	doTweenAlpha('AlphaTween12', 'bad', 1, 0.2)
	doTweenAlpha('AlphaTween13', 'shit', 1, 0.2)
	doTweenAlpha('AlphaTween14', 'score', 1, 0.2)
	doTweenAlpha('AlphaTween15', 'misses', 1, 0.2)
	doTweenAlpha('AlphaTween16', 'accu', 1, 0.2)
	doTweenAlpha('AlphaTween17', 'songname', 1, 0.2)
end
if curStep == 3663 then
doTweenY('BarraNegra1', 'BarradeArriba', 0, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo', 600, 1, 'quartOut')
end
if curStep == 3673 then
      noteTweenAlpha("notapl1", 0, 0, 1, "linear")
	noteTweenAlpha("notapl2", 1, 0, 1, "linear")
	noteTweenAlpha("notapl3", 2, 0, 1, "linear")
	noteTweenAlpha("notapl4", 3, 0, 1, "linear")
      noteTweenAlpha("notaop1", 4, 0, 1, "linear")
	noteTweenAlpha("notaop2", 5, 0, 1, "linear")
	noteTweenAlpha("notaop3", 6, 0, 1, "linear")
	noteTweenAlpha("notaop4", 7, 0, 1, "linear")
      doTweenAlpha('AlphaTween1', 'healthBarBG', 0, 1)
	doTweenAlpha('AlphaTween2', 'healthBar', 0, 1)
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 1)
	doTweenAlpha('AlphaTween4', 'iconP1', 0, 1)
	doTweenAlpha('AlphaTween5', 'iconP2', 0, 1)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 1)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 1)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 1)
	doTweenAlpha('AlphaTween9', 'marktime', 0, 1)
	doTweenAlpha('AlphaTween10', 'sick', 0, 1)
	doTweenAlpha('AlphaTween11', 'good', 0, 1)
	doTweenAlpha('AlphaTween12', 'bad', 0, 1)
	doTweenAlpha('AlphaTween13', 'shit', 0, 1)
	doTweenAlpha('AlphaTween14', 'score', 0, 1)
	doTweenAlpha('AlphaTween15', 'misses', 0, 1)
	doTweenAlpha('AlphaTween16', 'accu', 0, 1)
	doTweenAlpha('AlphaTween17', 'songname', 0, 1)
	doTweenAlpha('AlphaTween18', 'oswaldiconHell', 0, 1)
end
end