var number : int
var continue : string

loop
    put "Please enter a number to see if it is a multiple of seven. " ..
    get number
    if number mod 7 = 0 then
	put "Your number is a multiple of seven."
    elsif number < 0 then
	put "Please enter a positive number."
    else
	put "Your number is not a multiple of seven."
    end if
    put "Do you want to enter another number?"
    put "Enter a capital Y for yes or a capital N for no."
    get continue
    if continue = "N" then
	put "Goodbye!"
	exit
    elsif continue not= "Y" and continue not= "N" then
	loop
	    put "Please enter a capital Y for yes or a capital N for no."
	    get continue
	    exit when continue="Y" or continue ="N"
	end loop
    end if
end loop
