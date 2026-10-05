//Alexander Banievicz - Project 3 - 9/30/2026 

size(1200,600);
background(255);
translate(width/2,height/2); //moves the origin to the center of the canvas
textAlign(CENTER);
PFont font;
font = createFont("Trebuchet MS Bold", 300); //Trebuchet MS is a default font on windows and apple computers
textFont(font);
fill(#01d2bd);

String A = "A"; //declares "A" as a variable so that I don't need to include quotation marks whenever filling out the text function

text(A,-400,0);

rotate(TAU/4);
textSize(50);
text(A,-200,200); //start of the vertical line for the "L"

scale(-1); //flips the following around the x and y axis
text(A,180,-165);

scale(-1); //flips again
text(A,-160,200);

scale(-1); 
text(A,140,-165);

scale(-1); 
text(A,-120,200);

scale(-1); 
text(A,100,-165);

scale(-1); 
text(A,-80,200);

scale(-1); 
text(A,60,-165);

scale(-1); 
text(A,-40,200);

scale(-1); 
text(A,20,-165);

scale(-1); 
text(A,-20,163); //start of the horizontal line for the "L"
text(A,-20,133);
text(A,-20,103);
//14 letters

textSize(100);
text(A,-35,10); //start of the "E" -- going from bottom to top
text(A,-95,10);
text(A,-155,10);
//17 letters
textSize(68); //following 6 letters are in the same position but at a smaller size to embolden the "E"
text(A,-35,10); 
text(A,-95,10);
text(A,-155,10);
textSize(15);
text(A,-35,-15); 
text(A,-95,-15);
text(A,-155,-15);
//23 letters

textSize(300);
text(A,-100,-150);
scale(-1);
text(A,100,420);

save("Fractalex.png");
