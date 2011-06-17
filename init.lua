require("resources/script/functions")
require("resources/script/main")
require("resources/script/about")

-- startup the main gui now
SetGui(maingui)

while Run() == true do
    SetLabelText(fpslab, "FPS: " .. GetFps())
    
    
     if (level_loaded == true) then
       
	if GetKeyState(KEY_W) == DOWN then
	    MoveActorLocal(cam, 0.0, 0.0, -12.0)
	end

	if GetKeyState(KEY_S) == DOWN then
	    MoveActorLocal(cam, 0.0, 0.0, 12.0)
	end

	if GetKeyState(KEY_A) == DOWN then
	    MoveActorLocal(cam, -12.0, 0.0, 0.0)
	end

	if GetKeyState(KEY_D) == DOWN then
	    MoveActorLocal(cam, 12.0, 0.0, 0.0)
	end
	
	if GetKeyState(KEY_ESC) == PRESSED then
	   HideMouse( false)
	   SetGuiObjectVisible(maingui, true )
	   level_loaded = false
	   SetGui(maingui)
	end
	
	force = GetMouseForce()
	RotateActor(cam, 0.0, 0.0, -force.x* 5.0)
	RotateActorLocal(cam, -force.y*10.0, 0.0, 0.0)
       
     end
          
     --take a screenshot on F5
     if GetKeyState(KEY_F5) == DOWN then
         if SaveScreenShot("ScreenShot.png") == true then
             print("INIT.LUA: Screen shot saved to " .. GetCurrentDirectory() .. "/Screenshot.png")
         end
     end
     
    
end
