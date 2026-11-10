//Alexander Banievicz - 11/8/2026 - Loading... Project 8...

float c = 0;
PVector flagPos, dollar2Pos, dollar5Pos, dollar100Pos, bxSkyFarm1Pos, bxSkyFarm3Pos, bxSkyFarm4Pos;
PImage diDrive, flag, dollar2, dollar5, dollar100, bxSkyFarm1, bxSkyFarm3,bxSkyFarm4;
int frames;
void loading(){
  //for (c = 0; c<10;c++){//}
  image (diDrive,0,0,diDrive.width/7,diDrive.height/7);
  
  //rotate(TAU * .2+c); 
  //c=c+0.4; //does a full rotation in 8 frames
  rotate(TAU * 0.2+c);
  c=c+0.2; //does a full rotation in 16 frames
}


void scroll(PVector position, String direction){
  if (direction == "left"){ //controls images that scroll from right to left
    position.add(-115,0);
    if (position.x <-805){ //runs when image is offscreen to the left
      do {
        position.add(115,0);
    }while (position.x <=925);} //screen wrap around. In total the images travel 1730 pixels.
  } else if(direction == "right"){ //controls images that scroll left to right
    position.add(115,0);
    if(position.x >805){ //runs when image is offscreen to the right
      do{
        position.add(-115,0);
      }while(position.x >=-925);} //wrap around
  }
}

void setup(){
  size(736,1350); //measurements: 2.18 inches horizontal, 4 inches vertical. 2.18in is 54.5% of 4in, therefore 736 pixels.
  background(255);
  imageMode(CENTER);
  frameRate(16);
  fill(0);
  flag = loadImage("Flag of Zaxod.png");
  diDrive = loadImage("DiDrive Logo.png");
  dollar2 = loadImage("Gomez2.png");
  dollar5 = loadImage("Chaudhary5.png");
  dollar100 = loadImage("LanaBuck100.png");
  bxSkyFarm1 = loadImage("Bronx Skyfarm Poster.png");
  bxSkyFarm3 = loadImage("Bronx Skyfarm Poster Workshop 3.png");
  bxSkyFarm4 = loadImage("Bronx Skyfarm Poster Workshop 4.png");
  flagPos = new PVector (0,-200);
  dollar2Pos = new PVector(80,-450);
  dollar5Pos = new PVector (0,200);
  dollar100Pos = new PVector(980,-450);
  bxSkyFarm1Pos = new PVector(380,450); 
  bxSkyFarm3Pos = new PVector(-280,450); 
  bxSkyFarm4Pos = new PVector(-880,450); 
}

void draw(){
  background(255);
  translate(width/2,height/2);
  frames = (frameCount%16)+1; //16 frames across a circle with a circumference of 36.1283 leads to 2.34 inch wide images (2mm gaps in between each image.)

  rotate(TAU* -0.2);//negates the first rotation of the loading function so that the wheel may be in a nuetral postion to start.
  loading();
  loading(); //two loading functions need to be called for some reason.
  resetMatrix(); //done so the rotations don't affect the other images.
  translate(width/2,height/2);
  //top
  image(dollar2,dollar2Pos.x,dollar2Pos.y,dollar2.width*0.2,dollar2.height*0.2);
  scroll(dollar2Pos,"left");
  image(dollar100,dollar100Pos.x,dollar100Pos.y,dollar100.width* 0.4,dollar100.height*0.4);
  scroll(dollar100Pos,"left");
  //bottom
  image(bxSkyFarm1, bxSkyFarm1Pos.x, bxSkyFarm1Pos.y, bxSkyFarm1.width * 0.12, bxSkyFarm1.height * 0.12);
  scroll(bxSkyFarm1Pos, "right");
  image(bxSkyFarm3, bxSkyFarm3Pos.x, bxSkyFarm3Pos.y, bxSkyFarm3.width * 0.12, bxSkyFarm3.height * 0.12);
  scroll(bxSkyFarm3Pos, "right");
  image(bxSkyFarm4, bxSkyFarm4Pos.x, bxSkyFarm4Pos.y, bxSkyFarm4.width * 0.12, bxSkyFarm4.height * 0.12);
  scroll(bxSkyFarm4Pos, "right");
  //contrary flow
  image(flag,flagPos.x,flagPos.y,flag.width*0.05,flag.height*0.05);
  scroll(flagPos,"right");
  image(dollar5,dollar5Pos.x,dollar5Pos.y,dollar5.width*0.03,dollar5.height*0.03);
  scroll(dollar5Pos,"left");
  if(frameCount < 17){ 
    println(frameCount); 
    saveFrame("frames/output_####.png");}
}
