MyGui := Gui()
MyGui.Title := "4-Key Keyboard"

MyGui.Add("Button", "w20 h20 vKey7", "7")
MyGui.Add("Button", "w20 h20 vKey8", "8")
MyGui.Add("Button", "w20 h20 vKey9", "9")
MyGui.Add("Button", "w20 h20 vKey0", "0")

MyGui["Key7"].OnEvent("Click", ClickHandler)
MyGui["Key8"].OnEvent("Click", ClickHandler)
MyGui["Key9"].OnEvent("Click", ClickHandler)
MyGui["Key0"].OnEvent("Click", ClickHandler)

MyGui.Show()

; The ClickHandler function uses the wildcard '*'
ClickHandler(*) {
    ; This sends the text of the button that was clicked
    SendText(A_GuiControl)
}