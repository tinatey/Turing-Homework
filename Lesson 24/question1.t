var word : string
var letters, count: int:= 0
for i: 1..10
    put "Please enter a word: " ..
    get word
    letters := letters + length(word)
    count := count + 1
end for
put "The average number of letters in these words is ", letters/count, "."
