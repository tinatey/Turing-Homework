const COUNT : int := 10
var tempList : array 1 .. COUNT of real
var average, minimum, maximum : real
average := 0
minimum := 1000
maximum := -1000

put "Please enter the daily high temperature for the last ten days."
for i : 1 .. COUNT
    get tempList (i)
end for

% Output the temperatures in reverse.
put "Here they are in reverse."
for decreasing j : COUNT .. 1
    put tempList (j), " " ..
end for

put ""

% Calculate (and output) the average temperature.
put "The average temperature is " ..
for a : 1 .. COUNT
    average += tempList (a)
end for
put (average / COUNT)

% Look through the array for the highest/lowest temperature.
%put "The highest temperature is " %..
%for b : 1 .. COUNT
%    if b = 1 then
%        put "this is true: b = 1 "         
%        maximum := tempList (b)
%    elsif tempList (b) > maximum then
%        put "this is true: tempList (b) > maximum "
%        maximum := tempList (b)
%    end if
%    put "b:",b," tempList (b):",tempList (b)," maximum:",maximum
%end for
%put maximum

put "The highest temperature is " ..
for b : 1 .. COUNT
    if tempList (b) > maximum then
	maximum := tempList (b)
    end if
end for
put maximum

put "The lowest temperature is " ..
for c : 1 .. COUNT
    if tempList (c) < minimum then
	minimum := tempList (c)
    end if
end for
put minimum
