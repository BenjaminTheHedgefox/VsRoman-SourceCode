local folder = 'Winning'

local found = false
function onCreatePost()
	if checkFileExists('images/icons/'..folder..'/icon-'..getProperty('boyfriend.healthIcon')..'.png') then
		loadGraphic('iconP1', 'icons/'..folder..'/icon-'..getProperty('boyfriend.healthIcon'), 150, 0)
		addAnimation('iconP1',boyfriendName,{0,1,2},0,true)
		setProperty('iconP1.flipX', true)
		found = true
		setProperty('iconP1.flipX', true)
	else
		setProperty('iconP1.flipX', false)
		found = false
	end
end
function onEvent(name,v1,v2)
	-- debugPrint(chars[lastChar][curIcon][1])
	if name == 'Change Character' and not (string.lower(v1) == 'girlfriend' or string.lower(v1) == 'gf' or string.lower(v1) == 'dad' or string.lower(v1) == 'opponent') then
		if checkFileExists('images/icons/'..folder..'/icon-'..getProperty('boyfriend.healthIcon')..'.png') then
			loadGraphic('iconP1', 'icons/'..folder..'/icon-'..getProperty('boyfriend.healthIcon'), 150, 0)
			addAnimation('iconP1',boyfriendName,{0,1,2},0,true)
			found = true
			setProperty('iconP1.flipX', true)
		else
			setProperty('iconP1.flipX', false)
			found = false
		end
	end
end
function onUpdatePost(elapsed)
	if found then
		if getProperty('healthBar.percent') > 80 then
			setProperty('iconP1._frame.frame.x', 300)
		end
	end
end
