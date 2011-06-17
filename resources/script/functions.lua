--[[
      This file is here to make the button event handlers much much ugly
      I really hate how the old one works, but it does work. Maybe I shouldn't
      Change what works :\
--]]

CallBack = {}

function CallBack.Create(button, name, code)
  
--     sbutton = button
--     sname = name
--     scode = code
  
  
    script = CreateScript(name)
    SetScriptText(script, code)
    SetGuiObjectScript(button, script)
    
end

Game = {}
function Game.Load(level_pak)
   
  scene = LoadScene(level_pak)
  cam = GetSceneActiveCamera(scene)
  
  SetActorPhysics(cam, true)
  SetActorShape(cam ,BOX)
  
  print("......... Entity Information............")
  print(GetSceneEntityCount(scene))
  print(GetSceneEntity(scene, "Plane") )
  
  level_loaded = true
  HideMouse( true )
  SetGuiObjectVisible(maingui, false )
  SetGui(blankgui)
  
end
