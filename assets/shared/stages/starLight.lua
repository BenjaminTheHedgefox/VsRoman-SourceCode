function onCreate()

	makeLuaSprite('theSky','starLight/farLightZone', -300, 000)
	addLuaSprite('theSky',false)
	setLuaSpriteScrollFactor('theSky',0.3,0.3)
	scaleObject('theSky', 1.3, 1.3)
	
	makeAnimatedLuaSprite('bgloop', 'starLight/loopTheLoop', -100, -350);
	addAnimationByPrefix('bgloop', 'idle', 'Background Loop', 24, false);
	scaleObject('bgloop', 2, 2);
	setScrollFactor('bgloop', 0.8, 0.8);
	addLuaSprite('bgloop', false);
	
	makeAnimatedLuaSprite('lampy', 'starLight/lampyTheLampost', 1300, 200);
	addAnimationByPrefix('lampy', 'idle', 'lampost', 24, false);
	scaleObject('lampy', 2, 2);
	setScrollFactor('lampy', 1, 1);
	addLuaSprite('lampy', false);
	
	makeAnimatedLuaSprite('fg', 'starLight/groundLightZone', -500, 700);	
	addAnimationByPrefix('fg', 'idle', 'FG', 24, false);
	scaleObject('fg', 2, 2);
	setScrollFactor('fg', 1, 1);
	addLuaSprite('fg', false);
end

-- Gameplay/Song interactions
function onBeatHit()
	-- triggered 2 times per section
	if curBeat % 2 == 0 then
		playAnim('bgloop', 'idle', true);
		playAnim('fg', 'idle', true);
		
	end
	--uhhhhhhh
		if curBeat % 4 == 0 then
		playAnim('lampy', 'idle', true);
		
	end
end