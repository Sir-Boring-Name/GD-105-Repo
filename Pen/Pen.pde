size(1000,1000);
background(255);

//Black Line
strokeWeight(50);
stroke(0);
line(0,1000,1000,1000);

//Red Lines
strokeWeight(5);
stroke(#F50000);
line(500,0,500,600);
//middle line
line(500,850,500,973);
//left bottom diagonals
line(400,900,350,840);
line(400,950,300,900);
//right bottom diagonals
line(600,900,650,840);
line(600,950,700,900);
//left side
strokeWeight(4);
line(300,350,500,600);
line(300,350,300,300);
line(300,300,325,250);
line(325,250,400,250);
line(400,250,400,0);
//right side
line(500,600,700,350);
line(700,350,700,300);
line(700,300,675,250);
line(675,250,600,250);
line(600,250,600,0);

//Left Diamond
strokeJoin(BEVEL);
stroke(#E57300);
line(0,80,20,20);
line(0,80,20,140);
line(20,20,40,80);
line(40,80,20,140);
//Right Diamond
line(1000,80,980,20);
line(1000,80,980,140);
line(980,20,960,80);
line(960,80,980,140);
save("pen_sketch.png");
