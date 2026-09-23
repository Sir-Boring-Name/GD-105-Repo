size(1000,1000);
background(255);
strokeWeight(8);
stroke(#464646);
//left vertical line
line(50,50,50,500);
//top horizontal line
line(50,50,950,50);
//bottom horizontal line
line(950,50,950,500);
//hinge
line(50,500,950,500);
line(70,493,930,493);
line(49,520,952,520);
//bottom part
line(50,500,15,900);
line(15,900,985,900);
line(985,900,950,500);
//keyboard line
line(30,730,970,730);
//trackpad
line(300,750,550,750);
line(300,750,285,850);
line(285,850,565,850); 
line(565,850,550,750);
//stickers
strokeWeight(35);
strokeCap(SQUARE);
stroke(0);
//nvidia
line(790,875,860,875);
strokeWeight(15);
stroke(#73b200);
line(789,850,861,850);
//amd
strokeWeight(50);
stroke(#BCBABA);
line(875,868,945,868);
strokeWeight(4);
strokeCap(ROUND);
strokeJoin(ROUND);
stroke(#f36523);
//top left diagonal
line(890,870,900,855);
//top right diagonal
line(930,870,920,855);
//top horizontal line
line(900,855,920,855);
//left vertical line
line(890,870,890,880);
//bottom left diagonal
line(890,880,900,888);
//bottom horizontal line
line(900,888,920,888);
//bottom right diagonal
line(920,888,930,880);
//right vertical line
line(930,880,930,870);
save("laptop_sketch.png");
