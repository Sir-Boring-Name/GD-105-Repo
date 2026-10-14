//Alexander Banievicz - 10/11/2025 - Remember Sammy Jankis - This is about forgetting things (and a "Memento" reference).
size(2560,1440);
background(255);
translate(width/2,height/2);
//initializes and loads all the images to be used
PImage roof = loadImage("Decayed Garden.jpg");
PImage door = loadImage("DSC00020.JPG");
PImage cake = loadImage("Happy Cake.png");
PImage david = loadImage("David Blurry.png");
PImage angel = loadImage("Blurry Angel Knife.png");
PImage sams = loadImage("Dark Samson.png");
PImage locos = loadImage("Brandon Silhouette.png");
PImage rams = loadImage("Ramssey Blurry.png");
PImage mirror = loadImage("Mirror Me.png");
PImage dad = loadImage("Dad Blurry.png");


imageMode(CENTER); //makes it so image coordinates are measured by the center
image(roof,0,60,roof.width/4,roof.height/4); //central photo
//images on bottom row, displayed from left to right except for the man in the beige hat
image(door,-1050,394,door.width/8,door.height/8); 
image(cake,0,564,cake.width/9,cake.height/9);
image(david,600,564,david.width/9,david.height/9);
image(angel,1050,394,angel.width/8,angel.height/8);

image(sams,-909,-190,sams.width/8,sams.height/8); //cat positioned above backrooms door

image(rams,210,0,rams.width/100,rams.height/100); //appears in the window

int c = 0; //count 
while(c < 16){ //starts the first image on the top left, then places new ones moving towards the right
  image(mirror,-1192 + c*159, -605,mirror.width/18,mirror.height/18);
  c++;
}

scale(-1,1); //flips along y axis so that the man is looking towards the middle, and the shovel person is looking away
image(dad,575,564,dad.width/9,dad.height/9);
image(locos, 350, 20, locos.width/25,locos.height/25);

save("Remember Sammy Jankis.png");
