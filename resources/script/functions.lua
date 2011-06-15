--[[
      This file is here to make the button event handlers much much ugly
      I really hate how the old one works, but it does work. Maybe I shouldn't
      Change what works :\
--]]

CallBack = {}

function CallBack.Create(button, name, code)
  
--     self.button = button
--     self.name = name
--     self.code = code
  
  
    script = elf.CreateScript(name)
    elf.SetScriptText(script, code)
    elf.SetGuiObjectScript(button, script)
    
end

-- CallBack.Create(bb, "BackScript", "elf.SetGui(maingui);elf.PlaySound(menu_click, 0.5)")