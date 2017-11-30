const ROLLS := 50
var sums: array 1 .. 11 of int
var dieA, dieB : int
var ask: int

for k : 1 .. 11
    sums (k) := 0
end for

for i : 1 .. ROLLS
    randint (dieA, 1, 6)
    randint (dieB, 1, 6)
    sums(dieA+dieB-1) += 1
end for

%for a : 1 .. 11
%    put a+1, ":", sums(a)
%end for

put "What sum would you like? "
get ask
put "That was rolled ", sums(ask-1), " times."
