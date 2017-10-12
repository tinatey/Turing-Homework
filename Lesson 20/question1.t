var x, n: int
var next, sum: int:= 0
loop
    put "Enter a value for x. " ..
    get x
    put "Enter a value for n. " ..
    get n
    exit when n < 1
    for i: 1..n
	put x**next
	next := next+1
	
    end for
end loop
