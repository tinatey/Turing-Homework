% Write a program which asks the user five
% times to enter a word with a random number of letters.
var wordlength : int
var word : string

for i : 1 .. 5
    randint (wordlength, 1, 3)
    loop
	put i, ".Please enter a word that is ", wordlength, " characters long: " ..
	get word
	exit when length(word) = wordlength
	put "That is not a ", wordlength, "-letter word."
    end loop
end for
