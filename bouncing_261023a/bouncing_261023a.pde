//Alexander Banievicz - 10/23/2026 - bouncing
void setup(){
size(800, 1000);
stroke(0);
textSize(40);
}

void draw(){
  int frames = (frameCount%24)+ 1; //simplifies any code that relies on frameCount to use the variable "frames"
  background(255);
  translate(width/2, height/2);
  fill(0);
  stroke(0);
  text(frames, 350, 460);
  float xPos = (frames*30)-390;
  
  float sine = map(sin((TAU/(frames))), 0, 1.6, 0, height*0.55); //lower number in the third input creates larger distances between frames. larger number creates smaller distances and less movement between frames.
  //text(sine, 0, 0); //"sine" test
  //text(sin(TAU/frames), 0, 100); //base sin() test
 
  circle((-(xPos)), sine-400, (-sine)); //top black ball. Since the size is controlled by the "sine" variable,  it changes in size and appears to shrink into the distance
  circle(((xPos)), sine, 200);//bottom black ball. Appears to bounce
  
  float bluePos = -sq(frames)+ 500; //can also be written as -(frames*frames)
  fill(#0000aa);
  //text(bluePos, 0, 400); //blue dot test
  circle(-xPos+ 60,  bluePos,  20);
  
  float redPos = sq(frames)-500; //this and the bluePos variable cause the blue and red dots to move along a quadratic curve
  fill(#aa0000);
  //text(redPos, 0, -400); //red dot test
  circle(-xPos+ 60,  redPos,  20);  
  
  float pbDistance = dist(xPos, redPos, xPos, bluePos); //measures the distance between the red and blue dot.
  //text(pbDistance, 0, 0); //distance test
  
  int count = 0;
  if (pbDistance < 40){ //loop runs if the distance between the red and blue dot is less than 40 pixels (only happens for one frame);
    triangle(-xPos+ 60,  -10,  -xPos+ 40,  10, -xPos+ 80, 10);
    translate(-xPos+ 60, 0); //centers the rotations around the collision in the following "while" loop
    fill(#aa00aa); //the red and blue dot combine to make a purple explosion
    noStroke();
    while (count < 8){ //everything in this while loop culminates in creating a nicer looking explosion than any other
      //variation of numbers I tried,  and so it stays this way.
      rotate((TAU/8)-count);
      //triangle(-xPos+ 60,  -10,  -xPos+ 40,  10, -xPos+ 80, 10);
      triangle(-20,  -10, 0, 10, 30, -10);
      count = count+ 2; //results in 4 loops
    }
  }
  if(frameCount < 25){ 
    println(frameCount); 
    saveFrame("frames/output_####.png");}
}
