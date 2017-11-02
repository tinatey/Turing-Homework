setscreen ( "graphics:500;700" )
var bat0x : array 1.. 10 of int := init(0,3,4,5,6,8,10,7,5,3) 
var bat0y : array 1.. 10 of int := init(3,6,5,6,5,6,2,4,3,4)

var housex : array 1.. 5 of int := init(60,48,264,480,468) 
var housey : array 1.. 5 of int := init(56,252,462,252,60)

var houseroofx : array 1.. 3 of int := init(48,264,480) 
var houseroofy : array 1.. 3 of int := init(252,462,252)

var towerx : array 1.. 5 of int := init(168,144,252,384,348) 
var towery : array 1.. 5 of int := init(42,420,560,420,42)

var towerroofx : array 1.. 3 of int := init(144,252,384) 
var towerroofy : array 1.. 3 of int := init(420,560,420)

var doorx : array 1..4 of int:= init(221,214,300,293)
var doory : array 1..4 of int := init(42,182,182,42)

var bat1x, bat1y , bat2x, bat2y , bat3x, bat3y : array 1.. 10 of int 


for i:1..10
  bat0x(i) := bat0x(i) * 5
  bat0y(i) := bat0y(i) * 5
  
  bat1x(i) := bat0x(i) + 100
  bat1y(i) := bat0y(i) + 500
  
  bat2x(i) := bat0x(i)*2 + 200
  bat2y(i) := bat0y(i)*2 + 530
  
  bat3x(i) := bat0x(i) + 250
  bat3y(i) := bat0y(i) + 450
end for


% start drawing

% draw moon
drawfillarc (180, 518, 132, 132, 0, 360, 92)

% draw house
drawfillpolygon( housex , housey, 5 , 8 )
drawpolygon( housex , housey, 5 , 7 )

% draw house roof
drawfillpolygon( houseroofx , houseroofy, 3 , 7 )
drawpolygon( houseroofx , houseroofy, 3 , 7 )

% draw tower
drawfillpolygon( towerx , towery, 5 , 8 )
drawpolygon( towerx , towery, 5 , 7 )

% draw tower roof
drawfillpolygon( towerroofx , towerroofy, 3 , 7 )
drawpolygon( towerroofx , towerroofy, 3 , 7 )

% draw bats
drawfillpolygon( bat1x , bat1y, 10 , 4 )
drawfillpolygon( bat2x , bat2y, 10 , 4 )
drawfillpolygon( bat3x , bat3y, 10 , 4 )

% door
drawfillpolygon(doorx, doory, 4, 7)
