//Alexander Banievicz - 9/16/2026 - Master Sword

size(1200,1600);
background(255);

color background = (255);
color sword = (#3860ca);
noStroke();
fill(sword);
//Base of the hilt
triangle(450,1500,750,1500,600,1300);
//handle
rect(550,1150,100,300);

//left side above handle
triangle(550,1150,450,1100,500,1050);
//right side above handle
triangle(650,1150,750,1100,700,1050);
//left then right then center shapes to fill in empty space
triangle(550,1150,500,1050,600,1050);
triangle(650,1150,700,1050,600,1050);
triangle(550,1150,650,1150,600,1050);
//7 shapes
//left side
triangle(500,1050,450,1000,350,1125);

//wing
triangle(350,1125,200,950,300,900);
//adds a flair to the wing
triangle(150,950,300,900,300,1000);
//fills in the wing 
triangle(350,1125,299,901,340,900);
triangle(450,1000,345,1025,350,1125);

//right side
triangle(700,1050,750,1000,850,1125);
//wing
triangle(850,1125,1000,950,900,900);
//adds a flair to the wing
triangle(1050,950,900,900,900,1000);
//fills in the wing 
triangle(850,1125,901,901,860,900);
triangle(750,1000,855,1025,850,1125);

//center
rect(450,1000,300,50);
//18 shapes

//Blade
rect(500,300,200,700);
//tip
triangle(500,300,700,300,600,100);

//Medallion
fill(background);
//stroke(20);
ellipse(600,970,100,150);
triangle(558,930,642,930,600,850);

//Triforce
triangle(600,650,575,700,625,700);
triangle(575,700,550,750,600,750);
triangle(600,750,625,700,650,750);
//25 shapes

save("Master Sword.png");
