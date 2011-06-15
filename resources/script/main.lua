maingui = elf.CreateGui()

--load some music
music = elf.LoadSound("resources/sound/menu.ogg")
sound_source = elf.PlaySound(music, 0.5)
menu_click = elf.LoadSound("resources/sound/menu_click.ogg")


-- Create background
elflogotex = elf.CreateTextureFromFile("resources/menu/background.jpg")
-- -- 
pic = elf.CreatePicture("Background")
elf.SetPictureTexture(pic, elflogotex)
elf.SetGuiObjectPosition(pic, 0 , 0 )
elf.AddGuiObject(maingui, pic)


-- add a label
font = elf.CreateFontFromFile("resources/DejaVuSans.ttf", 20)

lab = elf.CreateLabel("FPSLabel")
elf.SetLabelFont(lab, font)
elf.SetLabelText(lab, "FPS: ")
elf.SetGuiObjectPosition(lab, elf.GetWindowWidth() - 100 , 10)
elf.AddGuiObject(maingui, lab)


-- add new game button
nbtexoff = elf.CreateTextureFromFile("resources/menu/new_off.png")
nbtexover = elf.CreateTextureFromFile("resources/menu/new_hover.png")
nbtexon = elf.CreateTextureFromFile("resources/menu/new_off.png")

nb = elf.CreateButton("NewButton")
elf.SetButtonOffTexture(nb, nbtexoff)
elf.SetButtonOverTexture(nb, nbtexover)
elf.SetButtonOnTexture(nb, nbtexon)
elf.SetGuiObjectPosition(nb, 50, elf.GetWindowHeight() - 350)
elf.AddGuiObject(maingui, nb)

-- add new options button
obtexoff = elf.CreateTextureFromFile("resources/menu/options_off.png")
obtexover = elf.CreateTextureFromFile("resources/menu/options_hover.png")
obtexon = elf.CreateTextureFromFile("resources/menu/options_off.png")

ob = elf.CreateButton("OptionsButton")
elf.SetButtonOffTexture(ob, obtexoff)
elf.SetButtonOverTexture(ob, obtexover)
elf.SetButtonOnTexture(ob, obtexon)
elf.SetGuiObjectPosition(ob, 50, elf.GetWindowHeight() - 300)
CallBack.Create(ob, "OptionsClick", "elf.PlaySound(menu_click, 0.5)")
elf.AddGuiObject(maingui, ob)


-- add new about button
abtexoff = elf.CreateTextureFromFile("resources/menu/about_off.png")
abtexover = elf.CreateTextureFromFile("resources/menu/about_hover.png")
abtexon = elf.CreateTextureFromFile("resources/menu/about_off.png")

ab = elf.CreateButton("AboutButton")
elf.SetButtonOffTexture(ab, abtexoff)
elf.SetButtonOverTexture(ab, abtexover)
elf.SetButtonOnTexture(ab, abtexon)
elf.SetGuiObjectPosition(ab, 50, elf.GetWindowHeight() - 250)

-- Create a callback for the button push
CallBack.Create(ab, "AboutScript", "elf.SetGui(aboutgui); elf.PlaySound(menu_click, 0.5)")
elf.AddGuiObject(maingui, ab)

-- add quit about button
qbtexoff = elf.CreateTextureFromFile("resources/menu/quit_off.png")
qbtexover = elf.CreateTextureFromFile("resources/menu/quit_hover.png")
qbtexon = elf.CreateTextureFromFile("resources/menu/quit_off.png")

qb = elf.CreateButton("QuitButton")
elf.SetButtonOffTexture(qb, qbtexoff)
elf.SetButtonOverTexture(qb, qbtexover)
elf.SetButtonOnTexture(qb, qbtexon)
elf.SetGuiObjectPosition(qb, 50, elf.GetWindowHeight() - 200)
CallBack.Create(qb, "Exit", "elf.Quit()")

elf.AddGuiObject(maingui, qb)


