function onCreate()
	-- background shit
	makeLuaSprite('bg', 'hydro/background', -25, 743);
	
	makeLuaSprite('fg', 'hydro/foreground', -25, 743);

	addLuaSprite('bg', false);
	setProperty('bg.antialiasing',false);
	addLuaSprite('fg', false);
	setProperty('fg.antialiasing',false);

	
	addCharacterToList('bf-s3k', 'gf')
	addCharacterToList('bf-s3k-alt', 'gf')
end

function onUpdate()

if mustHitSection == true then
	triggerEvent('Change Character', 2, 'bf-s3k')
end
if mustHitSection == false then
triggerEvent('Change Character', 2, 'bf-s3k-alt')
	end
end