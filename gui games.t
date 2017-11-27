import GUI

var guessbutton : int
var growinggame: int
var button: int
var quitbutton : int

procedure hide
    GUI.Hide(guessbutton)
    GUI.Hide(growinggame)
    GUI.Hide(button)
end hide

procedure hide2
    GUI.Hide(guessbutton)
    GUI.Hide(growinggame)
end hide2

procedure show 
    GUI.Show(guessbutton)
    GUI.Show(growinggame)
end show

procedure GuessingGame
    hide
    var number : int
    var answer : int
    randint (number, 1, 100)
    put "I am thinking of a number between 1 and 100. Guess the number. "
    loop
	get answer
	GUI.Refresh
	if answer > number then
	    put "Lower."
	elsif answer < number then
	    put "Higher."
	elsif answer = number then
	    put "You've got it!"
	    exit
	end if
    end loop
    put "Want to play again?"
    show
end GuessingGame

procedure GrowingButton
    hide2
    var width: int:= GUI.GetHeight(button)
    var lengt: int:= GUI.GetWidth(button)
    loop
	width += 10
	lengt += 10
    end loop
    put "Want to play again?"
    show
end GrowingButton

guessbutton := GUI.CreateButton (100, 30, 100, "Guessing Game", GuessingGame)
growinggame := GUI.CreateButton (300, 30, 100, "Growing Button", GrowingButton)
quitbutton := GUI.CreateButton (500, 30, 50, "Quit", GUI.Quit)
button := GUI.CreateButton (200, 100, 100, "Click here!", GrowingButton)

loop
    exit when GUI.ProcessEvent
end loop
