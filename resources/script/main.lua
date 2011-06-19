-- Main Gui for the menu
maingui = CreateGui()

-- Blank GUI For the game
blankgui = CreateGui()

-- Main Menu Music
music = LoadSound("resources/sound/menu.ogg")
sound_source = PlaySound(music, 0.5)
menu_click = LoadSound("resources/sound/menu_click.ogg")


-- Create background
elflogotex = CreateTextureFromFile("BackGround", "resources/menu/background.png")
CreatePicture(maingui, "BackGround", 0, 0, "resources/menu/background.png")

-- Create a font
font = CreateFontFromFile("resources/DejaVuSans.ttf", 20)
fpslab = CreateLabel(maingui, "FPSLabel", GetWindowWidth() - 100, 10, "FPS: ")
SetLabelFont(fpslab, font)

-- add new game button
nbtexoff = CreateTextureFromFile("NewButtonOff", "resources/menu/new_off.png")
nbtexover = CreateTextureFromFile("NewButtonHover", "resources/menu/new_hover.png")
nbtexon = CreateTextureFromFile("NewButtonClick", "resources/menu/new_off.png")

newButton = CreateButton(maingui, "NewButton", 50, GetWindowHeight() - 350, 250, 32, "")
SetButtonOffTexture(newButton, nbtexoff)
SetButtonOverTexture(newButton, nbtexover)
SetButtonOnTexture(newButton, nbtexon)
CallBack.Create(newButton, "NewClick", "Game.Load('resources/levels/level1.pak') \n PlaySound(menu_click, 0.5)")

-- add new options button
obtexoff = CreateTextureFromFile("OptionsButtonOff", "resources/menu/options_off.png")
obtexover = CreateTextureFromFile("OptionsButtonHover", "resources/menu/options_hover.png")
obtexon = CreateTextureFromFile("OptionsButtonClick","resources/menu/options_off.png")

optionsButton = CreateButton(maingui, "OptionsButton", 50, GetWindowHeight() - 300, 250, 32, "")
SetButtonOffTexture(optionsButton, obtexoff)
SetButtonOverTexture(optionsButton, obtexover)
SetButtonOnTexture(optionsButton, obtexon)

optScr = CreateScriptFromFile("OptionsScript","resources/script/options.lua")
SetGuiObjectScript(optionsButton,optScr)

-- Textures of buttion
abtexoff = CreateTextureFromFile("AboutButtonOff", "resources/menu/about_off.png")
abtexover = CreateTextureFromFile("AboutButtonHover","resources/menu/about_hover.png")
abtexon = CreateTextureFromFile("AboutButtonClicked","resources/menu/about_off.png")

-- About Buttion
aboutButton = CreateButton(maingui, "AboutButton", 50, GetWindowHeight() - 250, 250, 32, "")
SetButtonOffTexture(aboutButton, abtexoff)
SetButtonOverTexture(aboutButton, abtexover)
SetButtonOnTexture(aboutButton, abtexon)
SetGuiObjectPosition(aboutButton, 50, GetWindowHeight() - 250)

abtScr = CreateScriptFromFile("About","resources/script/about.lua")
SetGuiObjectScript(aboutButton,abtScr)

-- Create a callback for the button push
--CallBack.Create(aboutButton, "AboutScript", "SetGui(aboutgui) \n PlaySound(menu_click, 0.5)")

-- add quit about button
qbtexoff = CreateTextureFromFile("QuitButtonOff","resources/menu/quit_off.png")
qbtexover = CreateTextureFromFile("QuitButtonHover","resources/menu/quit_hover.png")
qbtexon = CreateTextureFromFile("QuitButtonClicked","resources/menu/quit_off.png")

quitButton = CreateButton(maingui, "QuitButton", 50, GetWindowHeight() - 200, 250, 32, "")
SetButtonOffTexture(quitButton, qbtexoff)
SetButtonOverTexture(quitButton, qbtexover)
SetButtonOnTexture(quitButton, qbtexon)
SetGuiObjectPosition(quitButton, 50, GetWindowHeight() - 200)
CallBack.Create(quitButton, "Exit", "Quit()")


