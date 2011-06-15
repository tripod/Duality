require("resources/script/main")

-- startup the main gui now
elf.SetGui(maingui)

while elf.Run() == true do
   elf.SetLabelText(lab, "FPS: " .. elf.GetFps())
end
