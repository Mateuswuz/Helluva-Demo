function onEvent(name, value1, value2)

    if name == "Lyrics" then

        makeLuaText('captions', 'Lyrics go here', 1000, 120, 350)
        setTextString('captions', value1)
        setTextFont('captions', 'fnf.ttf')
        setTextColor('captions', value2)
if value2 == '' then
setTextColor('captions', 'ffffff')
end
        setTextSize('captions', 55);
        addLuaText('captions')
	setObjectCamera('captions', 'other');
        setTextAlignment('captions', 'center')
        --removeLuaText('captions', true)
        
    end
end

