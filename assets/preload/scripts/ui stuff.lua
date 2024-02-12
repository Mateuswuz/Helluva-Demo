function onCreatePost()
for i = 0, getProperty('unspawnNotes.length')-1 do
if dadName == 'BlitzoR' then
if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'skins/BLITZONOTE_assets');
end
end


if dadName == 'alastor-remastered' then
if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'skins/NOTE_alastor');
end
end


if dadName == 'Moxxie-bad-happy' or dadName == 'Moxxie-bad-pissed' or dadName == 'Moxxie-bad-happy-s' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'skins/BADNOTE_assets');
setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -100);
setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 0);
end
end


for i = 0, getProperty('opponentStrums.length')-1 do
if dadName == 'BlitzoR' then
setPropertyFromGroup('opponentStrums', i, 'texture', 'skins/BLITZONOTE_assets');

elseif dadName == 'alastor-remastered' then

setPropertyFromGroup('opponentStrums', i, 'texture', 'skins/NOTE_alastor');

end
end

if dadName == 'Moxxie-bad-happy' or dadName == 'Moxxie-bad-pissed' or dadName == 'Moxxie-bad-happy-s' then
for i = 0, getProperty('strumLineNotes.length')-1 do
setPropertyFromGroup('strumLineNotes', i, 'texture', 'skins/BADNOTE_assets');
end
end
end




--[[
function onCreatePost()
for i = 0, getProperty('unspawnNotes.length')-1 do
setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -100);
setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 0);
end
end
]]