var weight: int
var count, sum: int:= 0
put "Enter a set of weights. Enter 0 when you are done."
loop
    get weight
    exit when weight=0
    count := count+1
    sum := sum + weight
end loop
put "The average of these weights is ", sum/count, "."
