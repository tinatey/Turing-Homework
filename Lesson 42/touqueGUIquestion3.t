var x, y : int
var xpicked, ypicked : int
var buttonnumber, buttonupdown : int
var clicks : int := 0

procedure drawsquare

    if clicks = 1 then
	xpicked := x
	ypicked := y
    end if

    var c : int
    randint (c, 1, 10)
    
    Draw.Box (xpicked - 100, ypicked - 50, xpicked + 100, ypicked + 50, c)

end drawsquare

loop
    Mouse.ButtonWait ("down", x, y, buttonnumber, buttonupdown)
    
    clicks += 1

    drawsquare

end loop
