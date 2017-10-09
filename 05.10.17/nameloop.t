var name: string
put "Please enter the word Goodbye when you are finished."
put "Make sure to use the capital G when typing Goodbye."
loop
    put "What is your full name? " ..
    get name:*
    exit when name = "Goodbye"
    put "Hello, ", name, "."
end loop
