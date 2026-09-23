size(1000,1000);
background(255);
//Blue lines alternate between top and bottom
stroke(#139CD1);
strokeWeight(8);
line(25,25,975,25);
line(975,975,25,975);
//orange horizontal line goes in between this (line(50,50,950,50);
strokeWeight(7);
line (75, 75,925, 75);
line (925, 925,75, 925);
//orange horizontal line goes in between this (line(100,100,900,100);
strokeWeight(6);
line(125,125,875,125);
line(875,875,125,875);

//Orange Lines alternate between top and bottom
strokeWeight(8);
stroke(#F26100);
line(50,50,950,50);
line(950,950,50,950);
line(100,100,900,100);
strokeWeight(7);
line(100,100,900,100);
line(900,900,100,900);
strokeWeight(6);
line(150,150,850,150);
line(850,850,150,850);

//Yellow Lines Left
strokeWeight(8);
stroke(#F2EB00);
line(10,25,10,975);
line(35,50,35,950);
strokeWeight(7);
line(60,75,60,925);
strokeWeight(6);
line(85,100,85,900);
line(110,125,110,875);

//Purple LinesRight
strokeWeight(8);
stroke(#6800F2);
line(990,25,990,975);
line(965,50,965,950);
strokeWeight(7);
line(940,75,940,925);
strokeWeight(6);
line(915,100,915,900);
line(890,125,890,875);
