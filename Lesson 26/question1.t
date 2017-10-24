var new_word : string := ""
var word : string
put "Please enter a word: " ..
get word
for i : 1 .. length(word)
    if word(i) < "a" or word(i) > "z" then
	new_word += word(i)
    end if
end for
put "The new word is ", new_word, "."
