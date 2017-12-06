import GUI

var quitButton: int
var textField1, textField2: int
var textFieldLabel: int

/*procedure echoTextField(textFieldContents:string)
    var t:string := GUI.GetText(textField1)
    GUI.SetText(textField2, t)
end echoTextField*/

/*procedure echoTextField(textFieldContents:string)
    GUI.SetText(textField2, GUI.GetText(textField1))
end echoTextField*/

procedure echoTextField(textFieldContents:string)
    GUI.SetText(textField2, textFieldContents)
end echoTextField

procedure changeName
    GUI.SetLabel(quitButton, "bob & steve")
    GUI.Quit
end changeName

quitButton:= GUI.CreateButton(10, 10, 0, "Quit", changeName)
textField1:= GUI.CreateTextField(10, 100, 100, "", echoTextField)
textField2:= GUI.CreateTextField(150, 100, 100, "", echoTextField)
textFieldLabel:= GUI.CreateLabel(255, 100, "This is a text field.")

loop
    exit when GUI.ProcessEvent
end loop
