function onUpdatePost()
        setProperty('timeBarBG.visible', false)
            setProperty('timeBar.visible', false)
                setProperty('timeTxt.visible', false)
                       setProperty('botplayTxt.visible', false)
  
        setTextBorder('scoreTxt', 1, '000000')
        setTextSize('scoreTxt', 20)
        setObjectCamera('scoreTxt', 'hud')
        setTextAlignment('scoreTxt', 'center')
        setProperty('scoreTxt.x', 300)
        setProperty('scoreTxt.y', 685)
  
        
        if getPropertyFromClass('ClientPrefs', 'timeBarType') == 'Song Name' then
            setProperty('timeTxt.visible', false)
            setProperty('scoreTxt.x', -10)
            setTextAlignment('scoreTxt', 'right')
        end
  
        if botPlay == true then
          setProperty('scoreTxt.visible', false)
        else
            setTextString('scoreTxt', 'Score: ' ..score.. ' ')
        end

        setPropertyFromClass('ClientPrefs', 'scoreZoom', false)
    end
  

function getRatingVar()
	return string.sub(tostring(rating*100), 1, 5)
end
