import GUI

var guessbutton : int
var growinggame : int
var button : int
var quitbutton : int

procedure initgame (game : int)
    GUI.Hide (guessbutton)
    GUI.Hide (growinggame)
    GUI.Hide (button)
    GUI.Hide (quitbutton)
    GUI.SetSize (button, 100, 30)
    case game of
	label 1 : %Game 1 - Guessing Game
	label 2 : %Game 2 - Growing Button
	    GUI.Show (button)
	label :
	    GUI.Show (guessbutton)
	    GUI.Show (growinggame)
	    GUI.Show (quitbutton)
    end case
    GUI.Refresh
end initgame

%Game 1
procedure GuessingGame
    cls
    initgame (1)
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
    initgame (0)
end GuessingGame

procedure showGB
    cls
    initgame (2)
end showGB

procedure quitgames
    cls
    GUI.Quit
    put "Thanks for playing!"
end quitgames

%Game 2
procedure GrowingButton
    var height : int := GUI.GetHeight (button)
    var width : int := GUI.GetWidth (button)
    var x : int := GUI.GetX (button)
    var y : int := GUI.GetY (button)
    height += 10
    width += 10
    if y + height > maxy then
	cls
	initgame (0)
	put "Game Over."
	put "Want to play again?"
    else
	GUI.SetPositionAndSize (button, x, y, width, height)
    end if
end GrowingButton

guessbutton := GUI.CreateButton (100, 30, 100, "Guessing Game", GuessingGame)
growinggame := GUI.CreateButton (300, 30, 100, "Growing Button", showGB)
button := GUI.CreateButton (200, 100, 100, "Click here!", GrowingButton)
quitbutton := GUI.CreateButton (500, 30, 50, "Quit", quitgames)

initgame (0)

loop
    exit when GUI.ProcessEvent
end loop
