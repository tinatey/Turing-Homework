var x, y:int
var buttonnumber, buttonupdown: int
var squarevisible:boolean:=false

procedure drawsquare
    
 Draw.Box(100,200,200,300,4)

end drawsquare

loop
    Mouse.ButtonWait("down", x, y, buttonnumber, buttonupdown)
    squarevisible := not squarevisible
    
    if squarevisible then
	drawsquare
    else
	cls
    end if
 
end loop
