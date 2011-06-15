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

Game = {}
function Game.Load(level_pak)

 level_loaded = true
 elf.HideMouse( true )
 elf.SetGuiObjectVisible(maingui, false )
  
 scene = elf.LoadScene(level_pak)
 cam = elf.GetSceneActiveCamera(scene)
   
end
