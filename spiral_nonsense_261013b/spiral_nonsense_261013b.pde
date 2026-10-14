//Alexander Banievicz - 10/13/2026 - Spiral nonsense
size(2800,2000);
background(255);
translate(width/2,height/2);

PImage mirror = loadImage("Mirror Me.png");
PImage alex = loadImage("Alex.png");
PImage david = loadImage("David.png");
PImage alonso = loadImage("Alonso Korea 2010.png");
PImage smallT = loadImage("Tomato Small.png");

int c = 0;

while (c < 5) {
  
  image(alex, 0 +(c*100),0- (c*200), alex.width/4.5, alex.height/4.5);
  image(alonso, 0 -(c/200),0+ (c*100), alonso.width/2.8, alonso.height/2.8);
  image(david, 0 +(c*200),0+ (c*100), david.width/4.5, david.height/4.5);
  
  
  image(smallT, 0 +(c*50), 0 - (c*50), smallT.width/6,smallT.height/6);
  rotate(TAU/8);
  
  c++;
}
c=0;
resetMatrix();
translate(width/2,height/2);
while (c < 5) {
  image(mirror, 1000,-1000 +(c*400), mirror.width/10, mirror.height/10);
  c++;
}
save("spiral nonsense.png");
    
    
