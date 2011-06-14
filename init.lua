gui = elf.CreateGui()
elf.SetGui(gui)

-- add a label
font = elf.CreateFontFromFile("resources/DejaVuSans.ttf", 12)

lab = elf.CreateLabel("FPSLabel")
elf.SetLabelFont(lab, font)
elf.SetLabelText(lab, "Loading ...")
elf.SetGuiObjectPosition(lab, 10, 10)
elf.AddGuiObject(gui, lab)


-- -- create the elf logo
elflogotex = elf.CreateTextureFromFile("resources/background.jpg")
-- 
pic = elf.CreatePicture("ElfLogo")
elf.SetPictureTexture(pic, elflogotex)
elf.SetGuiObjectPosition(pic, 0 , 0 )
elf.AddGuiObject(gui, pic)


-- add new game button
nbtexoff = elf.CreateTextureFromFile("resources/new_off.png")
nbtexover = elf.CreateTextureFromFile("resources/new_hover.png")
nbtexon = elf.CreateTextureFromFile("resources/new_off.png")

nb = elf.CreateButton("NewButton")
elf.SetButtonOffTexture(nb, nbtexoff)
elf.SetButtonOverTexture(nb, nbtexover)
elf.SetButtonOnTexture(nb, nbtexon)
elf.SetGuiObjectPosition(nb, 50, elf.GetWindowHeight() - 350)
elf.AddGuiObject(gui, nb)

-- add new options button
obtexoff = elf.CreateTextureFromFile("resources/options_off.png")
obtexover = elf.CreateTextureFromFile("resources/options_hover.png")
obtexon = elf.CreateTextureFromFile("resources/options_off.png")

ob = elf.CreateButton("OptionsButton")
elf.SetButtonOffTexture(ob, obtexoff)
elf.SetButtonOverTexture(ob, obtexover)
elf.SetButtonOnTexture(ob, obtexon)
elf.SetGuiObjectPosition(ob, 50, elf.GetWindowHeight() - 300)
elf.AddGuiObject(gui, ob)


-- add new about button
abtexoff = elf.CreateTextureFromFile("resources/about_off.png")
abtexover = elf.CreateTextureFromFile("resources/about_hover.png")
abtexon = elf.CreateTextureFromFile("resources/about_off.png")

ab = elf.CreateButton("AboutButton")
elf.SetButtonOffTexture(ab, abtexoff)
elf.SetButtonOverTexture(ab, abtexover)
elf.SetButtonOnTexture(ab, abtexon)
elf.SetGuiObjectPosition(ab, 50, elf.GetWindowHeight() - 250)
elf.AddGuiObject(gui, ab)

-- add quit about button
qbtexoff = elf.CreateTextureFromFile("resources/quit_off.png")
qbtexover = elf.CreateTextureFromFile("resources/quit_hover.png")
qbtexon = elf.CreateTextureFromFile("resources/quit_off.png")

qb = elf.CreateButton("QuitButton")
elf.SetButtonOffTexture(qb, qbtexoff)
elf.SetButtonOverTexture(qb, qbtexover)
elf.SetButtonOnTexture(qb, qbtexon)
elf.SetGuiObjectPosition(qb, 50, elf.GetWindowHeight() - 200)

exscr = elf.CreateScript("Exit")
elf.SetScriptText(exscr, "elf.Quit()")
elf.SetGuiObjectScript(qb, exscr)

elf.AddGuiObject(gui, qb)


--load some music
music = elf.LoadSound("resources/menu.ogg")
sound_source = elf.PlaySound(music, 1.0)

elf.LoadScene("resources/menu.pak")

while elf.Run() == true do
   elf.SetLabelText(lab, "FPS: " .. elf.GetFps())
end
