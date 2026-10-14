//Alexander Banievicz - 10/12/2026 - Red Shadow
size(2800,2000);
background(0);
translate(width/2,height/2);

PImage sparkR = loadImage("spark right.JPG");
PImage sparkL = loadImage("spark left.JPG");
PImage sparkC = loadImage("spark curve.JPG");

image(sparkC,-1400,133,sparkC.width/10,sparkC.height/10); //places the first image of the curved spark
int cXpos = -1400; //initialized as the x position of the first image which will be modified by the following WHILE loop

int c = 0; //count
while (c < 9){
  cXpos = cXpos + 334;
  image(sparkC,cXpos,133,sparkC.width/10,sparkC.height/10);
  c++;
}

image(sparkR,-160,-1000,sparkR.width/10,sparkR.height/10);
image(sparkL,-160,-786 ,sparkL.width/10,sparkL.height/10);

int rpos = -1000; //y positions of the right 
int lpos = -786; //and left sparks. Same principle as the prior WHILE loop.
c = 0; //resets the count variable to zero
while (c < 3){
  rpos = lpos + 290;
  lpos = rpos + 214;
  image(sparkR,-160,rpos,sparkR.width/10,sparkR.height/10);
  image(sparkL,-160,lpos,sparkL.width/10,sparkL.height/10);
  //text(rpos,-600,rpos);
  //text(lpos,-600,lpos);  (used for testing but wanted to keep in for future reference)
  c++;
}

PImage mario = loadImage("Mario Amiibo.png");
PImage kazuya = loadImage("Kazuya Amiibo.png");
PImage joker = loadImage("Joker Amiibo.png");
PImage alex = loadImage("Alex.png");

imageMode(CENTER);
//the three amiibos face the sparks in the direction that the red lighting from the original photos is coming from
image(kazuya, -700,700, kazuya.width/4, kazuya.height/4);
image(kazuya, -420,820, kazuya.width/10, kazuya.height/10); //the three amiibos each have a mini version of themselves
image(sparkR,-1090,600,sparkR.width/7,sparkR.height/7); //kazuya and mario get an extra light source behind their backs in the form of a right and left spark respectively

image(mario, 700,-560, mario.width/4, mario.height/4);
image(mario, 420,-480, mario.width/10, mario.height/10);
image(sparkL,1040,-560 ,sparkL.width/10,sparkL.height/10);

image(joker, 700,700, joker.width/4, joker.height/4);
image(joker, 420,820, joker.width/10, joker.height/10);

image(alex, -700,-700, alex.width/4.5, alex.height/4.5);
scale(1,-1); //to mirror myself and be upside-down
image(alex, -700,153, alex.width/4.5, alex.height/4.5);

save("Red Shadow.png");
