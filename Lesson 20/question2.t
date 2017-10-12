var number1: int
var number2: int
put "Enter two even numbers. " ..
loop
    get number1
    get number2
    exit when number1 mod 2 not= 0 or number2 mod 2 not= 0
    for count : number1..number2 by 2
	put count, " " ..
    end for
end loop
