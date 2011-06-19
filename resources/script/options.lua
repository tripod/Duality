optionsGui = CreateGui()


-- Create a font
local HFont = CreateFontFromFile("resources/DejaVuSans.ttf", 30)
local NFont = CreateFontFromFile("resources/DejaVuSans.ttf", 20)

obl = CreateLabel(optionsGui, "Options Label", 50 , 50, "Video Options:")
    SetLabelFont(obl, HFont)

local fullscreenLabel = CreateLabel(optionsGui,"resLabel",50, 150, "Fullscreen: ")
    SetLabelFont(fullscreenLabel, NFont)

fullscreen = CreateCheckBox(optionsGui, "FullScreenBox", 160, 155, IsFullscreen() )

SetGui(optionsGui)