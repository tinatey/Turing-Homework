put "this is GGGOOORRRIIILLLLLLAAA!!!"
put "Welcome to GGGOOORRRIIILLLLLLAAA!!!" ..
put "a program that will perform an amazing feat..behold..."
var new_word : string := ""
var word : string
var number : int
put "Please enter a word. " ..

get word : *
if word = "gorilla" or word = "Gorilla" then
    for i : 1 .. length (word)
	number := length (word) div 2
	for a : 1 .. number
	    number := ord (word (i))
	    number := number - ord ("a") + ord ("A")
	    new_word += chr (number)
	end for
    end for
    put "The new word is ", new_word, "."
else  
    put "Do not enter anything but gorilla. We don't make the rules we just enforce them. We are not familiar with anything else. Thank you for your cooperation!"
end if
