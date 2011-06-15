require("resources/script/functions")
require("resources/script/main")
require("resources/script/about")

-- startup the main gui now


elf.SetGui(maingui)

while elf.Run() == true do
    elf.SetLabelText(lab, "FPS: " .. elf.GetFps())
    
     if (level_loaded == true) then
       
	if elf.GetKeyState(elf.KEY_W) == elf.DOWN then
	    elf.MoveActorLocal(cam, 0.0, 0.0, -12.0)
	end

	if elf.GetKeyState(elf.KEY_S) == elf.DOWN then
	    elf.MoveActorLocal(cam, 0.0, 0.0, 12.0)
	end

	if elf.GetKeyState(elf.KEY_A) == elf.DOWN then
	    elf.MoveActorLocal(cam, -12.0, 0.0, 0.0)
	end

	if elf.GetKeyState(elf.KEY_D) == elf.DOWN then
	    elf.MoveActorLocal(cam, 12.0, 0.0, 0.0)
	end
	
	if elf.GetKeyState(elf.KEY_ESC) == elf.PRESSED then
	   elf.HideMouse( false)
	   elf.SetGuiObjectVisible(maingui, true )
	   elf.SetGui(maingui)
	end
	
	force = elf.GetMouseForce()
	elf.RotateActor(cam, 0.0, 0.0, -force.x* 5.0)
	elf.RotateActorLocal(cam, -force.y*10.0, 0.0, 0.0)
	
       
     end
    
end
