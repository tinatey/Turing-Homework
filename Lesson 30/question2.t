var number : int
var count : int := 0

loop
    randint (number, 1, 100)
    put number
    if number >= 90 and number <= 99 then
	exit
    end if
    count += 1
end loop
put count, " tries"
