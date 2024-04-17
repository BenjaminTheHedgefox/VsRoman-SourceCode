function onCreate()

	makeLuaSprite('theSky','sunsMead/BGSky', -280, -140)
	addLuaSprite('theSky',false)
	setLuaSpriteScrollFactor('theSky',0.1,0.1)
	scaleObject('theSky', 1.4, 1.4)

	makeLuaSprite('theBack','sunsMead/BGMountains', -280, -140)
	addLuaSprite('theBack',false)
	setLuaSpriteScrollFactor('theBack',0.4, 0.8)
	scaleObject('theBack', 1.2, 1.2)

	makeLuaSprite('theWater','sunsMead/BGWater', -360, 300)
	addLuaSprite('theWater',false)
	setLuaSpriteScrollFactor('theWater',0.8,0.9)
	scaleObject('theWater', 1.2, 1.2)	
	
	makeAnimatedLuaSprite('waterfall', 'sunsMead/BGFallingWater', 900, 340);
	addAnimationByPrefix('waterfall', 'idle', 'Waterfall', 24, true);
	scaleObject('waterfall', 1.2, 1.2);
	setScrollFactor('waterfall', 0.8, 0.9);
	addLuaSprite('waterfall', false);
	playAnim('waterfall', 'idle', true);

	makeLuaSprite('theGround','sunsMead/BGKatsumaLookinGrass', -500, 300)
	addLuaSprite('theGround',false)
	setLuaSpriteScrollFactor('theGround',1,1)
	scaleObject('theGround', 1.2, 1.2)

	
	makeAnimatedLuaSprite('rings', 'sunsMead/BGRings', -200, 170);
	addAnimationByPrefix('rings', 'idle', 'Ringerdinger', 24, true);
	scaleObject('rings', 1.4, 1.4);
	setScrollFactor('rings', 1, 1);
	addLuaSprite('rings', false);
	playAnim('rings', 'idle', true);
	
	makeAnimatedLuaSprite('monitor', 'sunsMead/BGMonitor', 1550, 200);
	addAnimationByPrefix('monitor', 'idle', 'Monte', 24, false);
	scaleObject('monitor', 1.4, 1.4);
	setScrollFactor('monitor', 1, 1);
	addLuaSprite('monitor', false);
end

function onCountdownTick(counter)
	makeBoppersDance();
end

function onBeatHit()
	makeBoppersDance();
end

function makeBoppersDance()
		playAnim('monitor', 'idle', true);
end