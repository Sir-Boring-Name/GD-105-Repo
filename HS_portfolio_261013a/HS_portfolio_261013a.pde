//Alexander Banievicz - 10/13/2026 - HS Portfolio - A collection of posters and graphics that I made in my Junior and Senior year of highschool
size(2800,2000);
background(255);
translate(width/2,height/2);

//Dollars with the faces of my classmates and teachers
PImage d2G = loadImage("Gomez2.png");
PImage d2b = loadImage("2 Dollar Back.png");
PImage d5C = loadImage("Chaudhary5.png"); //handed out to the senior class to convince them to vote for Mr. Chaudhary for student body president. He won
PImage d5M = loadImage("Marshall5.png");
PImage d50F = loadImage("Flaherty50.png");
PImage d100L = loadImage("LanaBuck100.png");

//Posters advertising meetings for the garden club
PImage BxSFp1 = loadImage("Bronx Skyfarm Poster.png");
PImage BxSFp3 = loadImage("Bronx Skyfarm Poster Workshop 3.png");
PImage BxSFp4 = loadImage("Bronx Skyfarm Poster Workshop 4.png");
PImage BxSFp5 = loadImage("Bronx Skyfarm Poster Workshop 5.png");
PImage BxSFpED = loadImage("Earth Day.png");
//Elements used in the posters
PImage bigT = loadImage("Tomato Big.png");
PImage smallT = loadImage("Tomato Small.png");

//Miscellaneous
PImage didrive = loadImage("DiDrive Logo.png"); //Media project
PImage zaxod = loadImage("Flag of Zaxod.png"); //AP Gov project
PImage ithp = loadImage("Preston In the Heights Poster v4.png");
PImage mayor = loadImage("Salvador Mayor.png"); //these mayoral ads were made for an AP Gov project
PImage pin = loadImage("Salvador Saltore.png");

int c = 0; //counter
while(c<6){ //creates an X formation starting from the left and ending on the right
  image(bigT, -640 +(c*200), -370 + (c*200),bigT.width/6, bigT.height/6); //tomatoes step down towards the right
  image(smallT, -640 +(c*200), 580 - (c*200), smallT.width/6,smallT.height/6); //tomatoes step up towards the right
  c++;
}
//12 images
image(BxSFp1,-1400,-1000,BxSFp1.width/5,BxSFp1.height/5); //posters for 1st,

image(BxSFp3,-481,-1000,BxSFp3.width/5,BxSFp3.height/5); //3rd,
image(BxSFp4,-1,-1000,BxSFp4.width/5,BxSFp4.height/5); //4th workshops and

image(BxSFpED,919,-1000,BxSFp4.width/5,BxSFp4.height/5); //Earth Day event. -- height and width of the 4th poster is used intentionally to keep the dimsensions the exact same. This earth day poster is sized slightly differently by default.

imageMode(CENTER); //changed to center because it's easier to position the circles this way
image(didrive,700,-600,didrive.width/5,didrive.height/5);
image(pin,-700,-600,pin.width/1.6,pin.height/1.6);
//18 images

imageMode(CORNER);
scale(-1,-1); //flips images to be readable when looked at upside down. If i only flipped them over the x axis, they would be mirrored and unreadable. That is why both axis must be flipped
image(d2G,-1400,-1000,d2G.width/5,d2G.height/5); //front
image(d2b,-1400,-691,d2b.width/4,d2b.height/4); //back - englarged to show detail

image(d5C,-479,-1000,d5C.width/7.5,d5C.height/7.5);
image(d100L,523,-1000,d5C.width/10,d5C.height/10);
image(d5M,470,-416,d5M.width/6,d5M.height/6);
rotate(TAU/4); //to place images sideways
image(BxSFp5,-550,-1400,BxSFp5.width/1.5,BxSFp5.height/1.5);

image (ithp,-352,70,ithp.width/6,ithp.height/6);
//25 images
scale(1,1);
image(mayor,-300,894,mayor.width/3.27,mayor.height/3.27);
image(zaxod,-220,630,zaxod.width/8,zaxod.height/8);
image(d50F,-1000,490,d5M.width/18,d5M.height/18);
//28 images
save("HS_portfolio.png");
