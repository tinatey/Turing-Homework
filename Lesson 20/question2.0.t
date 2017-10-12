%Doesn't work for counting down
var number1, number2: int
loop
    put "Enter two even numbers. " ..
    get number1
    get number2
    exit when number1 mod 2 not= 0 or number2 mod 2 not= 0
    if number1 < number2 then
	for count : number1..number2 by 2
	    put count, " " ..
	end for
    elsif number1 > number2 then
	for decreasing count : number2..number1 by 2
	    put count, " " ..
	end for
    else
	put "Sorry, we cannot display anything."
    end if
end loop
