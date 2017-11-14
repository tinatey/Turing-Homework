procedure slant (rows : int)
    for i : 1 .. rows
	put repeat (" ", i - 1), "*"
    end for
end slant

slant (7)
slant (2)
