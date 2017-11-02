var number1, number2, number3: int
randint(number1, 100, 200)
randint(number2, 100, 200)
randint(number3, 100, 200)

% put number1
% put number2
% put number3
% put ""

% first number
if number1 < number2 and number1 < number3 then
    put number1, " " ..
elsif number2 < number1 and number2 < number3 then
    put number2, " " ..
elsif number3 < number1 and number3 < number2 then
    put number3, " " ..
end if

% second number
if number1 < number2 and number1 > number3 then
    put number1, " " ..
elsif number1 < number3 and number1 > number2 then
    put number1, " " ..
elsif number2 < number3 and number2 > number1 then
    put number2, " " ..
elsif number2 < number1 and number2 > number3 then
    put number2, " " ..
elsif number3 < number1 and number3 > number2 then
    put number1, " " ..    
elsif number3 < number2 and number3 > number1 then
    put number1, " " ..
end if

% third number
if number1 > number2 and number1 > number3 then
    put number1, " " ..
elsif number2 > number1 and number2 > number3 then
    put number2, " " ..
elsif number3 > number1 and number3 > number2 then
    put number3, " " ..
end if
