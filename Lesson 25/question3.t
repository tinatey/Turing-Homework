var number_of_a, number_of_e, number_of_i, number_of_o, number_of_u : int := 0
var word : string
put "Please enter a word: " ..
get word
for i : 1 .. length(word)
    if word(i) = "a" or word(i) = "A" then
	number_of_a += 1
    elsif word(i) = "e" or word(i) = "E" then
	number_of_e += 1
    elsif word(i) = "i" or word(i) = "I" then
	number_of_i += 1
    elsif word(i) = "o" or word(i) = "O" then
	number_of_o += 1
    elsif word(i) = "u" or word(i) = "U" then
	number_of_u += 1
    end if
end for    
put "The number of vowels in your word is ", number_of_a + number_of_e + number_of_i + number_of_o + number_of_u, "."
