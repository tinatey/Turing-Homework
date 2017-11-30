const ITEMS : int := 10
var databaseNumber : array 1 .. ITEMS of int
var databaseName : array 1 .. ITEMS of string
var user: string

for i : 1 .. ITEMS
    put "Please enter an item. " ..
    get databaseName (i)
    put "Please enter a quantity " ..
    get databaseNumber (i)
end for

put "For which item do you want to check your inventory levels? "
get databaseName

if user = databaseName
    put "You have ", databaseNumber(i), " ", databaseName, "."
end if
