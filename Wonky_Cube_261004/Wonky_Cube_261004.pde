//Alexander Banievicz - Project 3 10/4/2026 
size(1000,1000);
background(255);
translate(width/2,height/2);

PFont font;
font = createFont("Trebuchet MS Bold", 200); //Trebuchet MS is a default font on windows and apple computers
textAlign(CENTER);
textFont(font);
fill(0);

String p = "+"; //declares "+" as a variable using p so that I don't need to include quotation marks whenever filling out the text function

text(p, 0,0); //following 5 characters follow a diagonal line
text(p,100,100);
text(p,200,200);
text(p,300,300);
text(p,400,400);

rotate(TAU/128); //slightly rotates the rest of the characters while still keeping the first 5 character within the cube
text(p,0,100);

text(p,100,0);
text(p,100,200);
text(p,100,300);
text(p,100,400);

text(p,0,200);
text(p,200,100);
text(p,200,0);
text(p,200,300);
text(p,200,400);


text(p,0,300);
text(p,300,100);
text(p,300,0);
text(p,300,400);
text(p,300,200);


text(p,400,300);
text(p,0,400);
text(p,400,100);
text(p,400,0);
text(p,400,200);

save("wonky cube.png");
