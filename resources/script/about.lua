-- Play menu click sound on menu preload.
PlaySound(menu_click, 0.5)

-- TODO: Each person shoubd be appended to the string in a differnt line of code.
abouttext = "Duality, a FPS style game, powered by the blendelf game engine.\n\nProgramming - Mark 'Ling' Hahl\nGraphics - James 'tripod' Gray\nMusic - Mick 'mickrip' Rippon"
aboutgui = CreateGui() 

-- About label and font
abl = CreateLabel(aboutgui, "AboutLabel", 90, 200, abouttext)
SetLabelFont(abl, font)

-- Add a new Back Button texture
-- TODO: Add this to a seperate file, so it only gets loaded once.
bbtexoff = CreateTextureFromFile("BackButtonOn","resources/menu/back_off.png")
bbtexover = CreateTextureFromFile("BackButtonHover", "resources/menu/back_hover.png")
bbtexon = CreateTextureFromFile("BackButtonClick", "resources/menu/back_off.png")

backButton = CreateButton(aboutgui, "AboutButton", 50, GetWindowHeight() - 200, 250, 32, "")
SetButtonOffTexture(backButton, bbtexoff)
SetButtonOverTexture(backButton,bbtexover)
SetButtonOnTexture(backButton, bbtexon)
CallBack.Create(backButton, "BackScript", "SetGui(maingui);PlaySound(menu_click, 0.5)")

-- Show the menu after all the
-- menu resources have been loaded.
SetGui(aboutgui)
