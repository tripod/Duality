require("resources/script/functions")
require("resources/script/main")
require("resources/script/about")

-- startup the main gui now
elf.SetGui(maingui)

while elf.Run() == true do
    elf.SetLabelText(lab, "FPS: " .. elf.GetFps())    
end
