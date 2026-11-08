//Alexander Banievicz - 11/8/2026 - Loading... Project 8...

float c = 0;
PImage diDrive;
void loading(){
  //for (c = 0; c<10;c++){//}
  image (diDrive,0,0,diDrive.width/5,diDrive.height/5);
  
  rotate(TAU * .2+(c/0.001));
  c++;
}

void setup(){
  size(1000,1000);
  background(255);
  diDrive = loadImage("DiDrive Logo.png");
  imageMode(CENTER);
  frameRate(5);
}

void draw(){
  background(255);
  translate(width/2,height/2);
  
  loading();
  loading();
  
  
  
}
