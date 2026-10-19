//Alexander Banievicz - 10/17/2026 - Pen animation
void setup() { //since the pen and diamonds don't move between frames, they can stay static.
  size(1000,1000);
  background(255);
  textSize(20);
  
  //Yellow Paper
  strokeWeight(50);
  stroke(#F5D97E);
  line(0,1000,1000,1000);
  //breather hole
  stroke(0);
  line(500,274,500,274);
  
  //Red Lines
  strokeWeight(5);
  stroke(#939290);
  line(500,300,500,600); //middle line
  
  //left side
  strokeWeight(4);
  line(300,350,500,600);
  line(300,350,300,300);
  line(300,300,375,150);
  line(375,150,400,0);
  //line(325,250,400,250);
  //line(400,250,400,0);
  //right side
  line(500,600,700,350);
  line(700,350,700,300);
  line(700,300,625,150);
  line(625,150,600,0);
  //line(675,250,600,250);
  //line(600,250,600,0);
  
  //Left Diamond
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
}
void draw() { //the only thing being animated is the ink droplet
  fill(255);
  stroke(255);
  rect(0,600,1000,375); //covers and resets the bottom half of the canvas
  stroke(0);
  fill(0);
  
  text(frameCount % 25, 50, height - 50);
  strokeWeight(15);
  
  line(500, 560 + (frameCount % 25) * 26, 500, 650 + (frameCount % 25) * 26); //middle ink drop //originally 21
   
  strokeWeight(4);
  //left ink splashes
  line(800 - (frameCount % 25) * 19, 1280 - (frameCount % 25 ) * 19, //top
  750-(frameCount % 25 ) * 19, 1230-(frameCount % 25 ) * 19); //top. (-1 slope)
  line(865 - (frameCount % 25 ) * 19, 1165 - (frameCount % 25 ) * 9.5, //bottom
  765 - (frameCount % 25 ) * 19, 1115-(frameCount % 25 ) * 9.5); //bottom. x coords are multiplied by 15, and y coords by 7.5 (half), so the line has a flatter angle of attack (-1/2 slope)
 
  //right bottom diagonals
  line(200 + (frameCount % 25 ) * 19, 1280 - (frameCount % 25 ) * 19, //top
  250 + (frameCount % 25 ) * 19, 1230 - (frameCount % 25 ) * 19); //top. (1 slope)
  
  line(135 + (frameCount % 25 ) * 19, 1165 - (frameCount % 25 ) * 9.5, //bottom
  235 + (frameCount % 25 ) * 19, 1115 - (frameCount % 25 ) * 9.5); //bottom. (1/2 slope);

  if(frameCount < 25){
    println(frameCount);
    saveFrame("frames/output_####.png");
  }
}
