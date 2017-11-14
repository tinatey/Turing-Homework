procedure stars (line_number : int)
    for i : 1 .. line_number
	put "*****"
    end for
end stars

var user_input : int
get user_input
stars (user_input)
