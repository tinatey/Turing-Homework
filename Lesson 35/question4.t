function As (word : string) : string
    var new_word : string := ""
    for i : 1 .. length (word)
	if word (i) = "a" then
	    new_word += "aa"
	else
	    new_word += word (i)
	end if
    end for
    result new_word
end As

function Bs (word : string) : string
    var new_word : string := ""
    for i : 1 .. length (word)
	if word (i) = "b" then
	    new_word += "c"
	else
	    new_word += word (i)
	end if
    end for
    result new_word
end Bs

function Cs (word : string) : string
    var new_word : string := ""
    var pos : int
    randint (pos, 1, length (word))
    new_word := word (1 .. pos - 1) + "c" + word (pos .. *)
    result new_word
end Cs

var word : string
var f : int
put "Enter a string of a`s b`s and c`s: " ..
get word

for i : 1 .. 5
    randint (f, 1, 3)
    case f of
	label 1 :
	    word := As (word)
	label 2 :
	    word := Bs (word)
	label 3 :
	    word := Cs (word)
    end case
end for

put word
