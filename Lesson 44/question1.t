const COUNT: int:= 10
var tempList: array 1..COUNT of real
var average, minimum, maximum: real:= 0

put "Please enter the daily high temperture for the last ten days."
for i: 1..COUNT
    get tempList(i)
end for

% Output the temperatures in reverse.
put "Here they are in reverse."
for decreasing j: COUNT..1
    put tempList(j), " " ..
end for 

put ""

% Calculate (and output) the average temperature.
put "The average temperature is " ..
for a: 1..COUNT
    average += tempList(a)
end for
put (average/COUNT)

% Look through the array for the highest/lowest temperature.  
put "The highest temperature is " ..
for b: 1..COUNT
    if tempList(b)>=maximum then
	maximum := tempList
    end if
end for
