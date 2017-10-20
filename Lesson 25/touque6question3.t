var word : string
put "Please enter the word DONE when you're finished."
loop
    put "Please enter a word: " ..
    get word
    exit when word = "DONE"
    put word, " = ", word (*) + word (2..*) + word (1)
    if length(word) <= 2 then
	put "Please enter a word that has more than two letters."
    end if
end loop
