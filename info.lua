local infomodule = {}


local plr = game.Players.LocalPlayer 
local class = {}
class.New = function(cd, a, b, c, d)
local module = loadstring(game:HttpGet('https://raw.githubusercontent.com/bad-scripter/template/main/yes.lua', true))()
CoolDowns = {
    ATK = cd[1], 
    AB1 = cd[2], 
    AB2 = cd[3], 
    CRIT = cd[4] 
}
local char = plr.Character 
local hum = char.Humanoid

local us = game:GetService('UserInputService')
local mouse = plr:GetMouse()

local a, b 
function onkey(key, processed)
    if plr.Character ~= char then 
        a:Disconnect()
    end 
    
    
    if processed then 
        return 
    end 
    
    local keycode = key.KeyCode 
    local ek = Enum.KeyCode 
    
    
    
    if keycode == ek.Q then 
        module.UsingAbility1:Connect(b, CoolDowns.AB1)
    elseif keycode == ek.E then 
        module.UsingAbility2:Connect(c, CoolDowns.AB2)
    elseif keycode == ek.F then 
        module.UsingCritical:Connect(d, CoolDowns.CRIT)
    end
end

function onmouse()
    if plr.Character ~= char then 
        b:Disconnect()
    end 
    
    module.UsingAttack:Connect(a, CoolDowns.ATK)    
end
a = mouse.Button1Down:Connect(onmouse)
b = us.InputBegan:Connect(onkey)  
end

infomodule.archer = function()
  local ok = class.New({1, 1, 1, 1})
end

return infomodule
