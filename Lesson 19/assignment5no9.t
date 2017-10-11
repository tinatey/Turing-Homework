var integer: int
put "Enter a number greater than zero and the program will output its opposite."
put "Enter -1 when you want to stop."
loop
    get integer
    exit when integer=-1
    put "Opposite: -", integer
end loop
