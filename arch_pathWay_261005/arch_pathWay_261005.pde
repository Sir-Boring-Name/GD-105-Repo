//Alexander Banievicz - Project 3 10/4/2026 
size(1000,1000);
background(255);
translate(width/2,height/2); //moves the origin to the center of the canvas

PFont font = createFont("Calcula Rounded Regular", 100);
textAlign(CENTER);
textFont(font);
fill(0);
String w = "w";
text(w,-495,400); //bottom of bottom row
text(w,-200,400);
text(w,100,400);
text(w,400,400);

text(w,-350,200); //top of bottom row
text(w,-50,200);
text(w,250,200);

rotate(TAU/-8);
text(w,-480,-100); //middle (rising) of bottom row
text(w,-270,100);
text(w,-60,300);

rotate((TAU/8)*2);

text(w,-15,400);//middle (falling) of bottom row
text(w,200,180); 
text(w,420,-60);
//13 characters
rotate(TAU/-8); //resets rotation

scale(1,-1);
text(w,-495,400); //top of top row
text(w,-200,400);
text(w,100,400);
text(w,400,400);

text(w,-350,200); //bottom of top row
text(w,-50,200);
text(w,250,200);

rotate(TAU/-8);
text(w,-480,-100); //middle (rising) of bottom row
text(w,-270,100);
text(w,-60,300);

rotate((TAU/8)*2);

text(w,-15,400);//middle (falling) of bottom row
text(w,200,180); 
text(w,420,-60);
//26 characters
save("arch pathWay.png");
