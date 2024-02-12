function onCreate()
--Iterate over all notes
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'BO' then
-- if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
--     setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
-- end
end
end
end

local singAnims = {
 "singLEFT", "singDOWN", "singUP", "singRIGHT"
}

function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'BO' then
-- triggerEvent('Play Animation', 'gf', singAnims[direction + 1])
    characterPlayAnim('gf', singAnims[direction + 1])
end
end

local singAnims = {
 "singLEFT", "singDOWN", "singUP", "singRIGHT"
}
function goodNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'BO' then
    characterPlayAnim('gf', singAnims[direction + 1])
end
end