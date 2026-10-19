//Alexander Banievicz - 10/16/2026 - Laptop animation

color keyboard = #2B2E36; //global variables for the keyboard and backlight colors
color backlight = #D33500;

void setup() {
size(1000,1000);

  strokeWeight(8);
  stroke(#464646);
  background(255);
  //left vertical line
  line(50,50,50,500); //slope -- (400/35)
  //top horizontal line
  line(50,50,950,50);
  //bottom horizontal line
  line(950,50,950,500);
  
  //hinge
  line(50,500,950,500);
  line(70,493,930,493);
  line(49,520,952,520);
  //bottom part
  line(50,500,15,900); //left
  line(15,900,985,900); //bottom
  line(985,900,950,500); //right
  //keyboard line
  line(30,730,970,730);
  //trackpad
  line(300,750,550,750);
  line(300,750,285,850);
  line(285,850,565,850); 
  line(565,850,550,750);
  //stickers
  strokeWeight(35);
  strokeCap(SQUARE);
  stroke(0);
  
  //nvidia gpu sticker
  line(790,875,860,875);
  strokeWeight(15);
  stroke(#73b200);
  line(789,850,861,850);
  
  //amd cpu sticker
  strokeWeight(50);
  stroke(#BCBABA);
  line(875,868,945,868);
  strokeWeight(4);
  stroke(#f36523);
  //top left diagonal
  line(890,870,900,855);
  //top right diagonal
  line(930,870,920,855);
  //top horizontal line
  line(900,855,920,855);
  //left vertical line
  line(890,870,890,880);
  //bottom left diagonal
  line(890,880,900,888);
  //bottom horizontal line
  line(900,888,920,888);
  //bottom right diagonal
  line(920,888,930,880);
  //right vertical line
  line(930,880,930,870);
  textSize(13);
}
void draw(){
  fill(255); 
  stroke(255);
  strokeWeight(0);
  rect(55,55,890,420); //resets the canvas on the main laptop screen
  text(frameCount%25, 100, 100); //keps track of the number of frames
  
  int count = 0;
  int frames = frameCount%25; //simplifies any code that relies on framerate to just use the variable "frames"
  if(frames < 6){ //
  fill(#4D9BC4);
  rect(140,160,420,280);
  fill(#A0D3ED); //light blue
  rect(160,180,150,30,5); //container for the title of the code
  fill(255);
  rect(160, 200, 380, 170);
  fill(0);
  rect(140,380,420,40);
  text("Laptop Animation 26101a", 164,193);
  
  text("fill(#4D9BC4);\nfill(#A0D3ED); //light blue\nrect(140,160,420,280);/nfill(#A0D3ED); //light blue\nrect(160,180,150,30,5); //container for the title of the code\nfill(255);\nrect(160, 200, 380, 170);\nfill(0);\nrect(140,380,420,40);\ntext('Laptop Animation 26101a', 164,193);", 172,212); 
   }
  
  else{ //once 6 frames have passed, the window and everything in it will move to the right
  fill(#4D9BC4); //approximate color of the Processing window
  rect(140 + frames * 10 ,160,420,280); 
  fill(#A0D3ED); //light blue
  rect(160 + frames * 10,180,150,30,5); //container for the title of the code
  fill(255);
  rect(160 + frames * 10, 200, 380, 170); //white rectangle which represents the code editor 
  fill(0);
  rect(140 + frames * 10,380,420,40); //black rectangle which represents the console
  text("Laptop Animation 26101a", 164 + frames * 10,193); //title of the code
  
  // \n creates a line break, and is much easier to write out than manually entering each line of fake code as it's own line of real code, then manually entering the coordinates. It's also quicker than creating a while loop. 
  text("fill(#4D9BC4);\nfill(#A0D3ED); //light blue\nrect(140,160,420,280);/nfill(#A0D3ED); //light blue\nrect(160,180,150,30,5); //container for the title of the code\nfill(255);\nrect(160, 200, 380, 170);\nfill(0);\nrect(140,380,420,40);\ntext('Laptop Animation 26101a', 164,193);", 172 + frames * 10,212);
  }
  text(frameCount%25, 100, 100); //keps track of the number of frames
  
  strokeWeight(5);
  fill(keyboard);
  
  stroke(0);
  //flashes the keyboard backlight on after 6 frames
  if (frames > 5){ //I tried to do this with a while loop but I couldn't find a way
    stroke(backlight);
  }
  
  int yslope = 30; 
  float xslope = 2.625 ; //needed to use float for decimal
  
  quad(60, 695, 940, 695, //bottom row of keys
  941.75, 715, 59.25, 715);
  
  count = 0; //reset
  while(count < 5){
    quad(60 + xslope, 695 - yslope, 940 - xslope, 695 - yslope,
    941.75  - xslope, 715 - yslope, 59.25 + xslope, 715 - yslope);
    xslope =  xslope + 2.625; //distance travelled horizontally (x) every 30 pixels vertically (y). (30/2.625) = (20/1.75);
    yslope = yslope + 30;  //every loop, a row of keys is placed down. xslope and yslope are updated each loop
    count++;
  }
  if(frameCount < 25){
    println(frameCount);
    saveFrame("frames/output_####.png");
  }
}

//save("laptop_sketch.png");
