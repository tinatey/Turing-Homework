var squarew, squareh, triangleb, triangleh, rectw, recth, circler: real
var user_input: string
put "This program calculates the areas of a square, triangle, rectangle, and circle."
loop
    put "Enter a square width. " ..
    get squarew
    put "Enter a square height. " ..
    get squareh
    put "Your square has an area of ", squarew*squareh, " squared units."
    put "Enter a trangle base. " ..
    get triangleb
    put "Enter a triangle height. " ..
    get triangleh
    put "Your square has an area of ", (triangleb*triangleh)/2, " squared units."
    put "Enter a rectangle width. " ..
    get rectw
    put "Enter a rectangle height. " ..
    get recth
    put "Your rectangle has an area of ", rectw*recth, " squared units."
    put "Enter a circle radius. " ..
    get circler
    put "Your circle has an area of ", 3.14*circler**2, " squared units."
    put "Do you want to calculate another four areas? If not, type NO. " ..
    get user_input
    exit when user_input= "NO"
end loop
