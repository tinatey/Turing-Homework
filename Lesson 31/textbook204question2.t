var word: string
var new_word: string

loop
    put "Enter word: " ..    
    get word
    exit when word="wow"
    if length(word) = 1 then
	put "That word has only one character."
    else
	new_word:= word(1) + word(*)
	put new_word  
    end if
end loop
