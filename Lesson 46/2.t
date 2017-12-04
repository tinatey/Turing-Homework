/*Write a program that accepts a user-specified number
 of words and outputs them in alphabetical order.
 You may assume all capitals or all lowercase to make
 the sorting easier.  It should output your sorted list.*/

var count : int

put "How many numbers are in your array?"
get count

var current_smallest : int
var list : array 1 .. count of int
var largest_number : int
var sorted_list : array 1 .. count of int

for i : 1 .. count
    get list (i)
end for

current_smallest := list (1)
for a : 2 .. count
    if count (a) < current_smallest then
	current_smallest := list (a)
    end if
end for

largest_number := list (1)
for b : 2 .. list
    if list (a) > largest_number then
	largest_number := list (a)
    end if
end for
