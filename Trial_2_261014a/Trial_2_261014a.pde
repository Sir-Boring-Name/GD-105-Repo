//Alexander Banievicz - 10/14/2026 - Trial 2
size(900,930);
background(255);
translate(width/2,height/2);

PImage arm = loadImage("Arm Mic.png");
PImage a3ds = loadImage("3ds arms.png"); //variable isn't named "3ds" because integers can't be placed after the PImage type;
PImage Rface = loadImage("cat face right.png");
PImage Lface = loadImage("dog face left.png");
PImage body = loadImage("tree stump.png");
PImage legs = loadImage("legs.png");
fill(0);
textSize(30);
text("Screeching Stragump",130,-300);
textSize(15);

text("Named so as it seems to be an amalgamation",120,-270);
text("of a dog and cat with the body",160,-250);
text("of a stump staring at a light emitting device.",120,-230);
text("The object in it's left hand projected",-390,230);
text("the Stragump's voice tenfold as it cried every few minutes",-440,250);
text("while looking at the device.",-375,270);

imageMode(CENTER);
image(body,0,0,body.width/8,body.height/8);
image(legs,7,300,legs.width/3.8,legs.height/3.8);
scale(-1,1);
image(Lface,-30,-328,Lface.width/7,Rface.height/7);
image(Rface,70,-280,Rface.width/7,Rface.height/7);

rotate(TAU/9);
image(legs,0,305,legs.width/3.8,legs.height/3.8);
rotate(TAU/128); //slight rotation to match bottom arm with body
image(a3ds,170,-150,a3ds.width/8,a3ds.height/8); 

resetMatrix();
translate(width/2,height/2);
image(arm,200,10,arm.width/2,arm.height/2); //lowered slightly to match shoulder with the sloping line of the body
save("Screeching Stragump.png");
