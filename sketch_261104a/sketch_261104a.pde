//Alexander Banievicz - 11/4/2026 - Screeching Stragump (Trial 2) Animation

PImage arm, n3ds, n3dsSquish, rFace, lFace, body, legs, jaw, jawCover;
PVector armPos, n3dsPos, n3dsSquishPos ,rFacePos, lFacePos, bodyPos, legs1Pos, legs2Pos, jawPos, jawCoverPos, soundPos;
PShape sound;
void soundWave(){
  
  
  for (int i=0;i<10;i++){
  shape(sound,soundPos.x-(i*10),soundPos.y-(i*30),sound.width/4,sound.height/4);
  }
}

void setup(){
  size(890,930);
  background(255);
  translate(width/2,height/2);
  fill(0);
  textSize(30);
  frameRate(1);

  arm = loadImage("Arm Mic.png");
  n3ds = loadImage("3ds arms.png"); //variable isn't named "3ds" because integers can't be placed after the PImage type
  n3dsSquish = loadImage("3ds arms squished.png");
  rFace = loadImage("cat face right.png");
  lFace = loadImage("dog face left.png");
  body = loadImage("tree stump.png");
  legs = loadImage("legs.png");
  sound = loadShape("sound waves.svg");
  
  bodyPos = new PVector (0,0);
  jawCoverPos = new PVector (-15,-203);
  legs1Pos = new PVector(7,300);
  legs2Pos = new PVector (0,305);
  lFacePos = new PVector (-30,-328);
  rFacePos = new PVector (70,-280);
  jawPos = new PVector (0,-183); //(0,-203)
  n3dsPos = new PVector (170,-150);
  n3dsSquishPos = new PVector (170,-220);
  armPos = new PVector (200,10);
  soundPos = new PVector(random(-400,400),random(-400,400));
}
void draw(){
  background(255);
  //textSize(15);
  translate(width/2,height/2);
  soundWave();
  soundWave();
  text("Screeching Stragump",130,-300);
  imageMode(CENTER);
  image(body,bodyPos.x,bodyPos.y,body.width/8,body.height/8);
  jawCover = get(-65 + width / 2,-218 + height/2,115,30);
  image(legs,legs1Pos.x,legs1Pos.y,legs.width/3.8,legs.height/3.8);
  scale(-1,1);
  image(lFace,lFacePos.x,lFacePos.y,lFace.width/7,rFace.height/7);
  image(rFace,rFacePos.x,rFacePos.y,rFace.width/7,rFace.height/7);
  jaw = get(-50 + width / 2,-218 + height/2,100,30); //selects a portion of pixels and saves it to the variable "jaw". Created with assistance from Matthew
                          //-228                50
  rotate(TAU/9);
  image(legs,legs2Pos.x,legs2Pos.y,legs.width/3.8,legs.height/3.8);
  rotate(TAU/128); //slight rotation to match bottom arm with body
  image(n3ds,n3dsPos.x,n3dsPos.y,n3ds.width/8,n3ds.height/8); 
  
  resetMatrix();
  translate(width/2,height/2);
  image(arm,armPos.x,armPos.y,arm.width/2,arm.height/2); //lowered slightly to match shoulder with the sloping line of the body

  
  //rect(100,100,200,100);
  if (frameCount%2 == 0){
    tint(#E03091);
    image(jawCover,jawCoverPos.x,jawCoverPos.y);
    noTint();
    image (jaw, jawPos.x,jawPos.y);
    scale(-1,1);
    rotate(TAU/9 + TAU/128);
    image (n3dsSquish, n3dsSquishPos.x,n3dsSquishPos.y,n3ds.width/8,n3ds.height/8);
    //rectMode(CENTER);
    //rect(0,-204,100,50);
  }
  if(frameCount < 3){ 
    println(frameCount); 
    saveFrame("frames/output_####.png");}
}
