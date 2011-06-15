-- I dont know how to append to a  string
abouttext = "Duality, a FPS style game, powered by the blendelf game engine.\n\nProgramming - Mark Hahl\nGraphics - James Gray\n"

aboutgui = elf.CreateGui() 

-- textures for buttons

abl = elf.CreateLabel("About us")
elf.SetLabelFont(abl, font)
elf.SetLabelText(abl, abouttext )
elf.SetGuiObjectPosition(abl, 90 , 200)
elf.AddGuiObject(aboutgui, abl)

-- add new game button
bbtexoff = elf.CreateTextureFromFile("resources/menu/back_off.png")
bbtexover = elf.CreateTextureFromFile("resources/menu/back_hover.png")
bbtexon = elf.CreateTextureFromFile("resources/menu/back_off.png")

bb = elf.CreateButton("BackButton")
elf.SetButtonOffTexture(bb, bbtexoff)
elf.SetButtonOverTexture(bb,bbtexover)
elf.SetButtonOnTexture(bb, bbtexon)
elf.SetGuiObjectPosition(bb, 50, elf.GetWindowHeight() - 200)

-- Use a script to check for user button presses becuase it doesnt work otherwise
bscr = elf.CreateScript("Back")
elf.SetScriptText(bscr, "elf.SetGui(maingui);elf.PlaySound(menu_click, 0.5)")
elf.SetGuiObjectScript(bb, bscr)

elf.AddGuiObject(aboutgui, bb)
