var x, y:int
var buttonnumber, buttonupdown: int
var trianglevisible:boolean:=false

procedure drawtriangle
    
var x1, x2, x3, y1, y2, y3: int

x1:= x-75
x2:= x+15
x3:= x+60
y1:= y-20
y2:= y+50
y3:= y-70

Draw.Line(x1, y1, x2, y2, 4)
Draw.Line(x3, y3, x2, y2, 4)
Draw.Line(x1, y1, x3, y3, 4)

end drawtriangle

loop
    Mouse.ButtonWait("down", x, y, buttonnumber, buttonupdown)
    trianglevisible := not trianglevisible
    
    if trianglevisible then
	drawtriangle
    else
	cls
    end if
 
end loop
