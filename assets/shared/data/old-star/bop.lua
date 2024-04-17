function onBeatHit()
         setProperty('iconP1.scale.x', 1.23)
         setProperty('iconP1.scale.y', 1.23)
         setProperty('iconP2.scale.x', 1.23)
         setProperty('iconP2.scale.y', 1.23)
         runTimer('wait', '0.03', '0')
end
function onTimerCompleted(wait)
         setProperty('iconP1.scale.x', 1)
         setProperty('iconP2.scale.x', 1)
end