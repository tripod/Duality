require("resources/script/main")

-- startup the main gui now
elf.SetGui(maingui)

while elf.Run() == true do
   elf.SetLabelText(lab, "FPS: " .. elf.GetFps())
   
  -- Handle about button click
   if(elf.GetGuiObjectEvent( ab ) == elf.CLICKED) then
      elf.PlaySound(menu_click, 0.5)
   end
   
     -- Handle new game button click
   if(elf.GetGuiObjectEvent( nb ) == elf.CLICKED) then
      elf.PlaySound(menu_click, 0.5)
   end
   
   -- Handle options button click
   if(elf.GetGuiObjectEvent( ob ) == elf.CLICKED) then
      elf.PlaySound(menu_click, 0.5)
   end
   
   -- Handle the quit button
   if(elf.GetGuiObjectEvent( qb ) == elf.CLICKED) then 
      elf.Quit() 
   end
   
end
