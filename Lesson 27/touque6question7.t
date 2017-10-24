%Gather a word from the user and display it with every vowel 
%exchanged with its capital. For example: "colour" becomes "cOlOUr."

var newword : string := ""
var number : int
var word : string
put "Please enter a word. " ..
get word

for i: 1..length(word)
    if word(i) = "a" then
	number := ord(word(i)) - ord("a") + ord("A")
	newword += chr(number)
    elsif word(i) = "e" then
	number := ord(word(i)) - ord("e") + ord("E")
	newword += chr(number)
    elsif word(i) = "i" then
	number := ord(word(i)) - ord("i") + ord("I")
	newword += chr(number)
    elsif word(i) = "o" then
	number := ord(word(i)) - ord("o") + ord("O")
	newword += chr(number)
    elsif word(i) = "u" then
	number := ord(word(i)) - ord("u") + ord("U")
	newword += chr(number)
    else
	newword += word(i)
    end if
end for

put newword
