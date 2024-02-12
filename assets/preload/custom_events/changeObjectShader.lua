shaders = {'bnw', 'chromaticAbber', 'chromaticPincush', 'flip', 'invert', 'chromaticRadialBlur', 'glitch', 'glitch2', 'vcrshader', 'epilepsy', 
'demonBlur'}

value = 'none'

function onEvent(n, v1, v2)
    if n == "changeObjectShader" then
        if v1 == 'none' then
            removeSpriteShader(v2)
        else
            value = v1
            setSpriteShader(v2, v1)
        end
    end
end

function onCreate()
    for i=1, #shaders do
        initLuaShader(shaders[i])
    end
end

function onUpdate(elapsed)
    if value == 'glitch' then
        setShaderFloat("glitch", "iTime", os.clock())
    elseif value == 'vcrshader' then
        setShaderFloat("vcrshader", "iTime", os.clock())
    end
 end