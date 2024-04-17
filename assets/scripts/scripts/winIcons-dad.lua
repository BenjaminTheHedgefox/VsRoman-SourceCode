local folder = 'Winning'

local found = false
function onCreatePost()
	if checkFileExists('images/icons/'..folder..'/icon-'..getProperty('dad.healthIcon')..'.png') then
		loadGraphic('iconP2', 'icons/'..folder..'/icon-'..getProperty('dad.healthIcon'), 150, 0)
		addAnimation('iconP2',dadName,{0,1,2},0,true)
		setProperty('iconP2.flipX', false)
		found = true
		setProperty('iconP2.flipX', false)
	else
		setProperty('iconP2.flipX', false)
		found = false
	end
end
function onEvent(name,v1,v2)
	-- debugPrint(chars[lastChar][curIcon][1])
	if name == 'Change Character' and not (string.lower(v1) == 'girlfriend' or string.lower(v1) == 'gf' or string.lower(v1) == 'dad' or string.lower(v1) == 'opponent') then
		if checkFileExists('images/icons/'..folder..'/icon-'..getProperty('dad.healthIcon')..'.png') then
			loadGraphic('iconP2', 'icons/'..folder..'/icon-'..getProperty('dad.healthIcon'), 150, 0)
			addAnimation('iconP2',dadName,{0,1,2},0,true)
			found = true
			setProperty('iconP2.flipX', false)
		else
			setProperty('iconP2.flipX', false)
			found = false
		end
	end
end
function onUpdatePost(elapsed)
	if found then
		if getProperty('healthBar.percent') < 20 then
			setProperty('iconP2._frame.frame.x', 300)
		end
	end
end
