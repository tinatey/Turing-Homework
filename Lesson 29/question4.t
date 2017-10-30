var number : int
var answer : int
var guessed : boolean := false

randint (number, 1, 100)
put "I am thinking of a number between 1 and 100. Guess the number. "
for i : 1 .. 7
    get answer
    if answer < 1 or answer > 100 then
	put "That is not a number between 1 and 100."
    elsif answer > number then
	put "Lower."
    elsif answer < number then
	put "Higher."
    elsif answer = number then
	put "You've got it!"
	guessed:= true
	exit
    end if
end for
if not(guessed) then
    put "You are really bad at guessing..."
end if
