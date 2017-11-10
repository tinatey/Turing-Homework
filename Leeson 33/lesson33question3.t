function line (m, x, b : real) : real
    result m * x + b
end line

var x, y : real
var slope, yintercept : real

put "Enter slope: " ..
get slope
put "Enter y-intercept: " ..
get yintercept

loop
    put "Enter an x value (enter -99 to exit): " ..
    get x
    exit when x = -99
    y := line (slope, x, yintercept)
    put "The y value is ", y, "."
end loop
