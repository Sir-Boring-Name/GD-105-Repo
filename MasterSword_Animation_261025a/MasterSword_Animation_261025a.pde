//Alexander Banievicz - 10/25/2026 - Tri Master Sword
color sword = (#c2e0f9);
color hilt =(#3860ca);
color triforce = (#e3a809);
void setup(){
  size(1200, 1500);
  background(255);
  stroke(hilt);
  strokeWeight(1);
  fill(hilt);
  //Base of the hilt
  triangle(450, 1500, 750, 1500, 600, 1300);
  //handle
  rect(550, 1150, 100, 300);
  
  //left side above handle
  triangle(550, 1150, 450, 1100, 500, 1050);
  //right side above handle
  triangle(650, 1150, 750, 1100, 700, 1050);
  //left then right then center shapes to fill in empty space
  triangle(550, 1150, 500, 1050, 600, 1050);
  triangle(650, 1150, 700, 1050, 600, 1050);
  triangle(550, 1150, 650, 1150, 600, 1050);
  
  //left side
  triangle(500, 1050, 450, 1000, 350, 1125);
  

  
  //center
  rect(450, 1000, 300, 50);
  
  //Blade
  fill(sword);
  noStroke();
  rect(500, 300, 200, 700);
  //tip
  triangle(500, 300, 700, 300, 600, 100);
  
  //Medallion
  fill(#ffd334);
  strokeWeight(10);
  stroke(hilt);
  ellipse(600, 970, 100, 150);
  triangle(558, 930, 642, 930, 600, 850);
  noStroke();
  fill(#ffd334);
  rect(563, 920, 75, 40, 32); //to cover up the line that the triangle creates on the bottom
  
  //Triforce
  strokeWeight(2);
  stroke(#accee9);
  fill(sword);
  triangle(600, 650, 575, 700, 625, 700); //top
  triangle(575, 700, 550, 750, 600, 750); //left
  triangle(600, 750, 625, 700, 650, 750); //right
  
  
}
  void draw(){
  int frames = (frameCount%24)+1; //simplifies any code that relies on frameCount to use the variable "frames"
  
  fill(triforce);
  noStroke();
  textSize(30);
  
  float triPos1;
  float triPos2;
  float triPos3;
  
  triPos1 = noise(frameCount*0.1)* (height-800);//bottom right
  triPos1 = constrain(triPos1, 100, width*.45); //limits triforce from the edge of the sword to the right edge of the screen
  //triangle(600 + triPos1, 650 + triPos1, 575 + triPos1, 700 + triPos1, 625 + triPos1, 700 + triPos1); //top
  //triangle(575 + triPos1, 700 + triPos1, 550 + triPos1, 750 + triPos1, 600 + triPos1, 750 + triPos1); //left
  triangle(600 + triPos1, 750 + triPos1, 625 + triPos1, 700 + triPos1, 650 + triPos1, 750 + triPos1); //right
  
  triPos2 = noise(frameCount*0.1)* (height-800);//bottom left
  triPos2 = constrain(triPos2, 100, width*.45); //limits triforce from the edge of the sword to the right edge of the screen
  //triangle(600 - triPos2, 650 + triPos2, 575 - triPos2, 700 + triPos2, 625 - triPos2, 700 + triPos2); //top
  triangle(575 - triPos2, 700 + triPos2, 550 - triPos2,  750 + triPos2,  600 - triPos2, 750 + triPos2); //left
  //triangle(600 - triPos2, 750 + triPos2, 625 - triPos2, 700 + triPos2, 650 - triPos2, 750 + triPos2); //right
  
  triPos3 = noise(frameCount*0.1)* (height-800);//top
  triPos3 = constrain(triPos3, 100, width*.52); //limits triforce from the edge of the sword to the right edge of the screen
  triangle(600 , 650 - triPos3, 575 , 700 - triPos3, 625 , 700 - triPos3); //top
  //triangle(575 , 700 - triPos3, 550 , 750 - triPos3, 600 , 750 - triPos3); //left
  //triangle(600 , 750 - triPos3, 625 , 700 - triPos3, 650 , 750 - triPos3); //right
  fill(hilt);
  //wing
  triangle(350, 1125, 200, 950, 300, 900);
  //adds a flair to the wing
  triangle(150, 950, 300, 900, 300, 1000);
  //fills in the wing 
  triangle(350, 1125, 299, 901, 340, 900);
  triangle(450, 1000, 345, 1025, 350, 1125);
  
  //right side
  triangle(700, 1050, 750, 1000, 850, 1125);
  //wing
  triangle(850, 1125, 1000, 950, 900, 900);
  //adds a flair to the wing
  triangle(1050, 950, 900, 900, 900, 1000);
  //fills in the wing 
  triangle(850, 1125, 901, 901, 860, 900);
  triangle(750, 1000, 855, 1025, 850, 1125);
  
  fill(255);
  rect(980,50,100,100); //creates an refreshing area for the frame counter to update
  fill(0);
  text((frameCount%25),1000,100); //must use 25 because frame 1 won't save. It will only save frame 1 during the 2nd second, in which the canvas is altered from the start.
   if(frameCount < 25){ 
    println(frameCount); 
    saveFrame("frames/output_####.png");}

}
