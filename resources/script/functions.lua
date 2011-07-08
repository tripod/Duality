--[[
      This file is here to make the button event handlers much much ugly
      I really hate how the old one works, but it does work. Maybe I shouldn't
      Change what works :\
--]]

-- TODO: Remove this and add a script for each button press.
CallBack = {}
function CallBack.Create(button, name, code)

    print("In function CallBack.Create()")
  
    script = CreateScript(name)
    SetScriptText(script, code)
    SetGuiObjectScript(button, script)
    
end

Game = {}
function Game.Load(level_pak)
  
  print("In function Game.Load()")
  
  scene = LoadScene(level_pak)
  cam = GetSceneActiveCamera(scene)
  
  -- Set the physics of the camera to a box and change:
  -- * FOV to 90
  -- * SHAPE to BOX
  -- * The MASS to 20
  SetActorPhysics(cam, true)
  SetActorShape(cam, BOX)
  SetCameraFov(cam, 90)
  SetActorRestitution(cam, 0.0)
  SetActorMass(cam, 20)
  
  -- Debug information.
  -- TODO: Only print this dort of information when debugging is enabled.
  print("......... Entity Information............")
  print(GetSceneEntityCount(scene))
  print(GetSceneEntity(scene, "Plane") )

  -- Level is loaded, start polling for events in the main loop.
  level_loaded = true
  HideMouse( true )
  SetGuiObjectVisible(maingui, false )

  -- Set the GUI to a blank gui.
  SetGui(blankgui)
  
end
