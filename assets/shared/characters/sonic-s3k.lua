function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.13 then
        setProperty('health', health- 0.025);
    end
end