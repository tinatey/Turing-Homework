var word: string
var count: int:= 0
var sum: int:= 0

for i: 1..10
    get word
    sum:= sum + length(word)
    count += 1
end for

put "The avreage length of your words is ", sum/count, "."
