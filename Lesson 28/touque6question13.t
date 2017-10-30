var new_word : string := ""
var word : string
var number, number2 : int
put "Please enter a word. " ..
get word : *

for i : 1 .. length (word)
    number := length (word) div 2
    number2 := ord (word (i))
    number2 := number2 - ord ("a") + ord ("A")
    new_word += chr(number2)
end for


put "The new word is ", new_word, "."
