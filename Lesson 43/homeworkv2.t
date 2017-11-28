import GUI

var filenumber : int
var filename : int:= GUI.GetText(filename)
var linenumber : int := 0
var line : string
%var textfield:int

open : filenumber, filename, get

if filenumber > 0 then
    loop
	linenumber += 1
	exit when eof (filenumber)
	get : filenumber, line
	put linenumber, ":", line
    end loop
else
    put "File not found..."
end if
