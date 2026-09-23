size(1000,1000);
background(255);
strokeWeight(18);
stroke(#0041FC);
//triangle
line(475,25,525,25);
stroke(#D80000);
line(475,25,500,75);
line(500,75,525,25);

strokeWeight(6);
//left - right - top - bottom red lines
line(50,100,50,900);
line(950,100,950,900);
line(100,200,900,200);
line(100,800,900,800);

//horizontal - vertical 'plus sign" center red lines
line(300,500,700,500);
line(500,300,500,700);

//bottom left square
line(150,850,150,900);
line(150,850,200,850);
line(200,850,200,900);
line(150,900,200,900);


//blue X cross
stroke(#0041FC);
line(100,200,900,800);
line(100,800,900,200);
//left - middle (top) - middle (bottom) - right vertical blue lines
line(300,100,300,900);
line(500,100,500,300);
line(500,700,500,900);
line(700,100,700,900);

//left - right horizontal blue lines
line(55,500,300,500);
line(945,500,700,500);

//blue square
line(850,850,850,900);
line(850,850,800,850);
line(800,850,800,900);
line(850,900,800,900);

save("playstation except circle.png");
