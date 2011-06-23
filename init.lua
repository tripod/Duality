require("resources/script/functions")
require("resources/script/main")
require("resources/script/about")


--read the config file looking for non-engine config
config = io.open("config.txt","r")
line = config:read()
while (line ~= nil) do
    --look for bloom settings
    if (line:find("bloom") ~= nil) then
        bloom = tonumber(line:sub(string.len("bloom ")))
    else
        bloom = 0.76
    end
    
    --look for ssao settings
    if (line:find("ssao") ~= nil) then
        ssao = tonumber(line:sub(string.len("ssao ")))
    else
        ssao = 0
    end
    
    line = config:read()
end
config:close()

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
	
	if GetKeyState(KEY_SPACE) == DOWN then
	    MoveActorLocal(cam, 0.0, 12.0, 0.0)
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
	
	yaw = GetActorRotation(cam).y
	zaw = GetActorRotation(cam).z
	xaw = GetActorRotation(cam).x
	
	print(xaw .. " | " .. yaw .. " | " .. zaw) 
	
       
     end
          
     --take a screenshot on F5
     if GetKeyState(KEY_F5) == DOWN then
         if SaveScreenShot("screenshots/shot-" .. RandomInt() ..  " .png") == true then
             print("INIT.LUA: Took Screenshot ")
         end
     end
     
    
end
