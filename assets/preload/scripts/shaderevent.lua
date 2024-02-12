function onCreatePost()
initLuaShader("blur")
makeLuaSprite("Shader")
makeLuaSprite("Shader2")
setSpriteShader("Shader", "blur")
setSpriteShader("Shader2", "blur")
		runHaxeCode([[
trace(ShaderFilter);
game.camGame.setFilters([new ShaderFilter(game.getLuaObject("Shader").shader)]);
game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("Shader2").shader)]);
		]])
addHaxeLibrary("ShaderFilter1", "openfl.filters")
setShaderFloat("Shader", "blurWidth", 0)
setShaderFloat("Shader", "cx", 0.5)
setShaderFloat("Shader", "cy", 0.5)
setShaderFloat("Shader2", "blurWidth", 0)
setShaderFloat("Shader2", "cx", 0.5)
setShaderFloat("Shader2", "cy", 0.5)
end


blurval1 = 0
blurval2 = 0
function onUpdatePost()
setShaderFloat("Shader", "blurWidth", blurval1)
setShaderFloat("Shader2", "blurWidth", blurval2)
end


function onUpdate(elapsed)
blurval1 = math.lerp(blurval1, 0, boundTo(elapsed * 7, 0, 500));
blurval2 = math.lerp(blurval2, 0, boundTo(elapsed * 7, 0, 500));
end

function onEvent(n,v1,v2)
if n == 'Add Camera Zoom' then
if getPropertyFromClass('ClientPrefs','camZooms') then
blurval1 = v1
blurval2 = v2
end
end
end


function boundTo(value, min, max)
return math.max(min, math.min(max, value))
end
function math.lerp(from,to,i)
return from+(to-from)*i
end