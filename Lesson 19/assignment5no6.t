var mark: int
var count, sum: int:= 0
put "Enter a series of marks."
loop
    get mark
    exit when mark = -1
    count := count+1
    sum := sum + mark
end loop
put "Your average mark is ", sum/count, "."
