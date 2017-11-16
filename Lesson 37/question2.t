function areaOfCircle (r : real) : real
    result r ** 2 * 3.14
end areaOfCircle
function pOfCircle (r : real) : real
    result 2 * r * 3.14
end pOfCircle

function areaOfTriangle (b : real, h : real) : real
    result b * h / 2
end areaOfTriangle
function pOfTriangle (b : real, h : real) : real
    %...
end pOfTriangle

function areaOfRectangle (l : real, w : real) : real
    result l * w
end areaOfRectangle
function pOfRectangle (l : real, w : real) : real
    result (l + w) * 2
end pOfRectangle

function areaOfSquare (s : real) : real
    result s ** 2
end areaOfSquare
function pOfSquare (s : real) : real
    result s * 4
end pOfSquare


var radius : real
var base : real
var height : real
var lengt : real
var width : real
var side : real
var shape : string

put "What type of shape do you want?"
put "I want a " ..
get shape

if shape = "circle" or shape = "Circle" then
    put "Enter a value for the radius: " ..
    get radius
    put "Area: ", areaOfCircle(radius)
    put "Perimeter: ", pOfCircle(radius)
elsif shape = "triangle" or shape = "Triangle" then
    put "Enter a value for the base: " ..
    put "Enter a value for the height: " ..
    get base
    get height
    put "Area: ", areaOfTriangle(base, height)
    %put "Perimeter: ", pOfTriangle()
elsif shape = "rectangle" or shape = "Rectangle" then
    put "Enter a value for the length: " ..
    put "Enter a value for the width: " ..
    get lengt
    get width
    put "Area: ", areaOfRectangle(lengt, width)
    put "Perimeter: ", pOfRectangle(lengt, width)
elsif shape = "square" or shape = "Square" then
    put "Enter a value for the length of the side: " ..
    get side
    put "Area: ", areaOfSquare(side)
    put "Perimeter: ", pOfSquare(side)
else
    put "Sorry, we are not familiar with that shape."
end if
