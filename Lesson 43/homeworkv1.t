var filenumber : int
var filename : string
var linenumber : int := 0
var line : string

get filename

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
