% Write a program which asks the user five 
% times to enter a word with a random number of letters.
var wordlength : int
var word : string

for i: 1..5
    randint (wordlength, 1, 8)
    put "Please enter a word that is ", wordlength, " characters long: " ..
    get word
    if length(word) not= wordlength then
	put "That is not a ", wordlength, "-letter word."
	% put "Please enter a word that is ", wordlength, " characters long: "
    end if
end for

% As in part b, just make them enter the word over and 
% over until they get one of the correct length.
