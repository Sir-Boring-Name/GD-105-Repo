//Alexander Banievicz - Project 3 10/4/2026 
size(400,800);
background(255);
translate(width/2,height/2); //moves the origin to the center of the canvas

PFont hourglass;
PFont sand;
hourglass = createFont("Gill Sans MT Condensed", 1000); // both fonts are included in the folder
textFont(hourglass);

sand = createFont("Gill Sans MT", 30);
textAlign(CENTER);
textSize(1000);
fill(#C6C6C6); //color of the hourglass
String e = "8"; //declares "8" as a variable using "e" so that I don't need to include quotation marks whenever filling out the text function
text(e,0,325); //hourglass

textSize(70);
fill(#432C00); //color for the wooden feet of the hourglass
text(e,-100,340); //bottom left
text(e,100,340); //bottom right
scale(-1); //flips 8 upside-down so that both sides of the hourglass's feet have the same orientation
text(e,-90,355); //top right
text(e,90,355); //top left
//5 characters
textFont(sand); //changes the font to Gill Sans MT
fill(#BFA677); //color for the sand
scale(-1); 

//the following 14 characters represent the central stream of sand
text(e,0,-60); //textSize() function isn't necessary because the original font is size 20
text(e,0,-40); 
text(e,0,-20);
text(e,0,0); 
text(e,0,20);
text(e,0,40);
text(e,0,60);
text(e,0,80);
text(e,0,100);
text(e,0,120);
text(e,0,140);
text(e,0,160);
text(e,0,180);
text(e,0,200);
text(e,0,210);
//20 characters
textSize(70); //the following 5 characters represent the mounds of sand on top and directly beneath the stream
text(e,0,-80);
text(e,-30,-119);
text(e,30,-119);
text(e,0,-103);
text(e,0,254);
//25 characters
rotate(TAU/16); //the following 4 characters represent the edges of the sand mound
text(e,-10,-75); //top right
text(e,60,230); //bottom left

rotate((TAU/-16)*2); //undoes the previous rotation and then rotates further in the same direction. (started pointing to the right, now pointing to the left)
text(e,10,-75); //top left
text(e,-60,230); //bottom right
//29 characters
save("Hourgl8ss.png");
