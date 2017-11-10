function starit(ch:char):char
    if index("AEIOUaeiou", ch)>0 then
	result "*"
    else
	result ch
    end if
end starit

var word: string
var new_word: string:= ""

put "Enter a word; " ..
get word

for i: 1..length(word)
    new_word += starit(word(i))
end for
put "Your new word is ", new_word, "."
