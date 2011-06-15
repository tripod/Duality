require("resources/script/main")
require("resources/script/about")

-- startup the main gui now
elf.SetGui(maingui)

while elf.Run() == true do
    elf.SetLabelText(lab, "FPS: " .. elf.GetFps())
    
     -- Handle about button click
      if(elf.GetGuiObjectEvent( ab ) == elf.CLICKED) then
	
      end
      
      	-- Handle new game button click
      if(elf.GetGuiObjectEvent( nb ) == elf.CLICKED) then
	  elf.PlaySound(menu_click, 0.5)
      end
      
      -- Handle options button click
      if(elf.GetGuiObjectEvent( ob ) == elf.CLICKED) then
	  elf.PlaySound(menu_click, 0.5)
      end
      
	-- Handle back button
      if(elf.GetGuiObjectEvent( bb ) == elf.CLICKED) then
	
      end
      
      -- Handle the quit button
      if(elf.GetGuiObjectEvent( qb ) == elf.CLICKED) then 
	  elf.Quit() 
      end
    
end
