var roll: int
var ones, twos, threes, fours, fives, sixes, most, dice : int := 0

for i: 1..20
    randint (roll, 1, 6)
    put roll, " " ..
    case roll of
	label 1: ones += 1
	if ones > most then 
	    most := ones
	    dice := roll
	end if
	label 2: twos += 1
	if twos > most then 
	    most := twos
	    dice := roll
	end if
	label 3: threes += 1
	if threes > most then 
	    most := threes
	    dice := roll
	end if
	label 4: fours += 1
	if fours > most then 
	    most := fours
	    dice := roll
	end if
	label 5: fives += 1
	if fives > most then 
	    most := fives
	    dice := roll
	end if
	label 6: sixes += 1
	if sixes > most then 
	    most := sixes
	    dice := roll
	end if
    end case
end for
put ""
put "You rolled 1 ", ones, " time(s)."
put "You rolled 2 ", twos, " time(s)."
put "You rolled 3 ", threes, " time(s)."
put "You rolled 4 ", fours, " time(s)."
put "You rolled 5 ", fives, " time(s)."
put "You rolled 6 ", sixes, " time(s)."

put dice, " was the most common."
