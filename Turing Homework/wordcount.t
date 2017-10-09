var word: string
var wordcount: int := 0
put "Please enter as many words as you like."
put "Type STOP when you are finished."
loop
    get word
    exit when word="STOP"
    wordcount+=1
end loop
put "You typed ", wordcount, " words."
