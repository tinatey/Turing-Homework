function converttom (cm:real):real
    result cm/100
end converttom

var centimeters: real
put "PLease enter a length in cm: " ..
get centimeters
put "That is equivalent to ", converttom(centimeters), "m."
