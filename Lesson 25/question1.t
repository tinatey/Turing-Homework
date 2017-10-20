var word : string
put "Please enter the word DONE when you're finished."
loop
    put "Please enter a word: " ..
    get word
    exit when word = "DONE"
    if length(word)>1 then
	put "The first letter of your word is ", word (1), " and the last letter of your word is ", word (*), "."
    elsif length(word)=1 then
	put "The only letter in your word is ", word (1), "."
    end if
end loop
