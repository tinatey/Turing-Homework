var x, y:int
var buttonnumber, buttonupdown: int
var squarevisible:boolean:=false

procedure drawsquare
    
 Draw.Box(x-100,y-50,x+100,y+50,4)

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
