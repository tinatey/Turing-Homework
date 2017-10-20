var word : string
var letters, count: int:= 0
put "Please enter words below. Enter DONE when you're done."
loop
    put "Please enter a word: " ..
    get word
    exit when word="DONE"
    letters := letters + length(word)
    count := count + 1
end loop
put "The average number of letters in these words is ", letters/count, "."
