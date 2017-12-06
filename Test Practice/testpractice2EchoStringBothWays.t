import GUI

var quitButton: int
var textField1, textField2: int

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

procedure echoTextField1(textFieldContents:string)
    GUI.SetText(textField1, textFieldContents)
end echoTextField1

%procedure

quitButton:= GUI.CreateButton(10, 10, 100, "Quit", GUI.Quit)
textField1:= GUI.CreateTextField(10, 100, 100, "", echoTextField)
textField2:= GUI.CreateTextField(150, 100, 100, "", echoTextField1)

loop
    exit when GUI.ProcessEvent
end loop
