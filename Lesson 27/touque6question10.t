% Gather a word from the user and display it with 
% an exchanged case. For example: "Colour" becomes "cOLOUR."

var newword : string := ""
var number : int
var word : string
put "Please enter a word. " ..
get word

for i: 1..length(word)
    if word(i) >= "A" and word(i) <= "Z" then
	number := ord(word(i)) - ord("A") + ord("a")
	newword += chr(number)
    elsif word(i) >= "a" and word(i) <= "z" then
	number := ord(word(i)) - ord("a") + ord("A")
	newword += chr(number)
    else
	newword += word(i)
    end if
end for

put newword
