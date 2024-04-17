function onCreate()

	makeLuaText('miss2', 'err', 0, 180, 165)
	addLuaText('miss2')
	setTextColor('miss2', '000000')
	
	makeLuaText('points2', 'err', 0, 180, 35)
	addLuaText('points2')
	setTextColor('points2', '000000')
	
	makeLuaText('timer2', 'err', 0, 180, 99)
	addLuaText('timer2')
	setTextColor('timer2', '000000')

	makeLuaText('miss', 'err', 0, 180, 160)
	addLuaText('miss')
	setTextColor('miss', 'FFFFFF')
	
	makeLuaText('points', 'err', 0, 180, 30)
	addLuaText('points')
	setTextColor('points', 'FFFFFF')
	
	makeLuaText('timer', 'err', 0, 180, 94)
	addLuaText('timer')
	setTextColor('timer', 'FFFFFF')

	makeLuaSprite('time', 'time', 85.5, 113.15);
	setLuaSpriteScrollFactor('time', 0, 0);
    setProperty('time.scale.x', 3.8)
    setProperty('time.scale.y', 3.8)
	setProperty('time.antialiasing',false)

	addLuaSprite('time', true);
		setObjectCamera('time','hud')

	makeLuaSprite('misses', 'misses', 95.5, 178.15);
	setLuaSpriteScrollFactor('misses', 0, 0);
    setProperty('misses.scale.x', 3.8)
    setProperty('misses.scale.y', 3.8)
	setProperty('misses.antialiasing',false)

	addLuaSprite('misses', true);
		setObjectCamera('misses','hud')

	makeLuaSprite('score', 'score', 85.5, 48.15);
	setLuaSpriteScrollFactor('score', 0, 0);
    setProperty('score.scale.x', 3.8)
    setProperty('score.scale.y', 3.8)
	setProperty('score.antialiasing',false)

	addLuaSprite('score', true);
		setObjectCamera('score','hud')

    makeLuaText('credit', 'Miner_Maker156 Made This Hud!', 0, 10, 700);
    setTextSize('credit', 10)
    setTextFont("credit", "sonic.ttf");
	setTextColor('credit', 'FFFF00')
    setObjectCamera("credit", "other")
    addLuaText('credit');
if downscroll == true then

	makeLuaText('miss2', 'shadow', 0, 180, 669)
	addLuaText('miss2')
	setTextColor('miss2', '000000')
	
	makeLuaText('timer2', 'shadow', 0, 180, 602)
	addLuaText('timer2')
	setTextColor('timer2', '000000')
	
	makeLuaText('points2', 'shadow', 0, 180, 537)
	addLuaText('points2')
	setTextColor('points2', '000000')

	makeLuaText('miss', 'hi', 0, 180, 660)
	addLuaText('miss')
	setTextColor('miss', 'FFFFFF')
	
	makeLuaText('timer', 'there', 0, 180, 595)
	addLuaText('timer')
	setTextColor('timer', 'FFFFFF')
	
	makeLuaText('points', 'bud', 0, 180, 530)
	addLuaText('points')
	setTextColor('points', 'FFFFFF')

	makeLuaSprite('time', 'time', 85.5, 613.15);
	setLuaSpriteScrollFactor('time', 0, 0);
    setProperty('time.scale.x', 3.8)
    setProperty('time.scale.y', 3.8)
	setProperty('time.antialiasing',false)

	addLuaSprite('time', true);
		setObjectCamera('time','hud')

	makeLuaSprite('misses', 'misses', 95.5, 678.15);
	setLuaSpriteScrollFactor('misses', 0, 0);
    setProperty('misses.scale.x', 3.8)
    setProperty('misses.scale.y', 3.8)
	setProperty('misses.antialiasing',false)

	addLuaSprite('misses', true);
		setObjectCamera('misses','hud')

	makeLuaSprite('score', 'score', 85.5, 548.15);
	setLuaSpriteScrollFactor('score', 0, 0);
    setProperty('score.scale.x', 3.8)
    setProperty('score.scale.y', 3.8)
	setProperty('score.antialiasing',false)

	addLuaSprite('score', true);
		setObjectCamera('score','hud')

    makeLuaText('credit', 'Miner_Maker156 Made This Hud!', 0, 10, 5);
    setTextSize('credit', 10)
    setTextFont("credit", "sonic.ttf");
	setTextColor('credit', 'FFFF00')
    setObjectCamera("credit", "other")
    addLuaText('credit');
		end
--hud settings
    setProperty('points2.borderSize', 0)
    setProperty('miss2.borderSize', 0)
    setProperty('timer2.borderSize', 0)
    setProperty('points.borderSize', 0)
    setProperty('miss.borderSize', 0)
    setProperty('timer.borderSize', 0)

	setTextSize('timer2', 37)
	setTextSize('points2', 37)
	setTextSize('miss2', 37)
	setTextSize('timer', 37)
	setTextSize('points', 37)
	setTextSize('miss', 37)

    setTextFont("timer2", "sonic.ttf");
    setTextFont("points2", "sonic.ttf");
    setTextFont("miss2", "sonic.ttf");
    setTextFont("timer", "sonic.ttf");
    setTextFont("points", "sonic.ttf");
    setTextFont("miss", "sonic.ttf");

	setObjectCamera('miss2', 'hud')
	setObjectCamera('points2', 'hud')
	setObjectCamera('timer2', 'hud')
	setObjectCamera('miss', 'hud')
	setObjectCamera('points', 'hud')
	setObjectCamera('timer', 'hud')
end
function onUpdate(elapsed)
setTextString('miss', '   ' .. getProperty('songMisses'))
setTextString('points', '  ' .. getProperty('songScore'))
setTextString('timer', ' ' .. getTextString('timeTxt'))
setTextString('miss2', '   ' .. getProperty('songMisses'))
setTextString('points2', '  ' .. getProperty('songScore'))
setTextString('timer2', ' ' .. getTextString('timeTxt'))
end
function onBeatHit()
if curBeat == 16 then
	doTweenAlpha('fadeWarn', 'credit', 0, 1, 'linear')
	end
end
function onCreatePost()
	setProperty('scoreTxt.visible', 0)
	setProperty("timeTxt.visible", false);
	setProperty("timeBar.visible", false)
	setProperty("timeBarBG.visible", false)
    setProperty('healthBar.x', 500);
	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums',i,'visible',false)
		setPropertyFromGroup('opponentStrums',i,'y',130)
		setPropertyFromGroup('opponentStrums',i,'x',-9999)
	end
end
function onUpdatePost()
    --timer variables
    --getting song length in seconds
    local  timeElapsed = math.floor(getProperty('songTime')/1000)

    --timeTxt updates (string.format puts it into mm:ss format)
    setTextString('timeTxt', string.format("%.2d:%.2d", timeElapsed/60%60, timeElapsed%60))
end