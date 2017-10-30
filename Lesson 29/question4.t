var number: int
var answer

randint (number, 1, 100)
put "I am thinking of a number between 1 and 100. Guess the number. "
for i: 1..7
    get answer
    loop
	if answer > number then
	    put "Lower."
	elsif answer < number then
	    put "Higher."
	elsif answer = number then
	    put "You've got it!"
     end loop
end for
