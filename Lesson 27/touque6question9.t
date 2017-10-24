% Gather a word from the user and display it with every 
% vowel exchanged with the vowel which follows. 
% For example: "a" becomes "e," "e" becomes "i," "i" 
% becomes "o," "o" becomes "u," and "u" becomes "a."

var newword : string := ""
var number : int
var word : string
put "Please enter a word. " ..
get word

for i: 1..length(word)
    if word(i) = "a" then
	number := ord(word(i)) - ord("a") + ord("e")
	newword += chr(number)
    elsif word(i) = "e" then
	number := ord(word(i)) - ord("e") + ord("i")
	newword += chr(number)
    elsif word(i) = "i" then
	number := ord(word(i)) - ord("i") + ord("o")
	newword += chr(number)
    elsif word(i) = "o" then
	number := ord(word(i)) - ord("o") + ord("u")
	newword += chr(number)
    elsif word(i) = "u" then
	number := ord(word(i)) - ord("u") + ord("a")
	newword += chr(number)
    else
	newword += word(i)
    end if
end for

put newword
