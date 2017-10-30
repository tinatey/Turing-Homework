var new_word : string := ""
var number : int
var word : string
put "Please enter a word. " ..
get word : *

for i: 1..length(word)
    if i mod 2 = 0 then 
	if word(i) >= "a" and word(i) <= "z" then
	    number := ord(word(i))
	    number := number - ord("a") + ord("A")
	    new_word += chr(number)
	else
	    new_word += word(i)
	end if
    else
	if word(i) >= "A" and word(i) <= "Z" then
	    number := ord(word(i))
	    number := number - ord("A") + ord("a")
	    new_word += chr(number)
	else
	    new_word += word(i)
	end if
    end if
end for

put "The new word is ", new_word, "."
