var word : string
put "Please enter @ when you're finished."
loop
    put "Please enter a word: " ..
    get word
    exit when word = "@"
    put word, " = ", word (2..*) + word (1)
    if length(word) < 2 then
	put "Please enter a word that has more than two letters."
    end if
end loop
