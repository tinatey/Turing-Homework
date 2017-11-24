import GUI

procedure GuessingGame
    var number : int
    var answer : int
    randint (number, 1, 100)
    put "I am thinking of a number between 1 and 100. Guess the number. "
    for i : 1 .. 7
	get answer
	loop
	    if answer > number then
		put "Lower."
	    elsif answer < number then
		put "Higher."
	    elsif answer = number then
		put "You've got it!"
	    end if
	end loop
    end for
end GuessingGame

var guessbutton : int
var quitbutton : int

guessbutton := GUI.CreateButton (100, 30, 100, "Guessing Game", GuessingGame)
quitbutton:= GUI.CreateButton (300, 30, 50, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
