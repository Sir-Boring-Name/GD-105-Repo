//Alexander Banievicz - 10/28/2026 - Hourgl8ss animation

color hourGlass = (#C6C6C6); //silver
PFont hourglass;
PFont sandFont;
color sandColor = (#BFA677);
String glass = "8";
String sand = ".";

PVector hG; //hourGlass
PVector neck;

PVector s1;
PVector s2;
PVector s3;
PVector s4;
PVector s5;
PVector s6;
PVector s7;
PVector s8;
PVector s9;
PVector s10;
PVector s11;
PVector s12;
PVector s13;
PVector s14;
PVector s15;
PVector s16;
PVector s17;
PVector s18;
PVector s19;

PVector s21;

int c;
void slide (PVector sand, int x, int y){
  if (sand.x < 0){ //make an if branch for the left side, and a branch for the right side
    do {
      sand.add(x,y); }
    while (sand.x >= 0 && sand.y >= -56);
    text("skibidi",0,300);
  }
  
  
  //s21.add(0,c++*(4^2));
  //if (s1.x >= -5 || s1.x <= 5){
    //s1.add(PVector.random2D().mult(2));}
}

  void setup(){
  size(500,1000);
  background(255);
  textAlign(CENTER);
  
  //remember to ask how to use loadFont to change font filetype
  hourglass = createFont("AGENCYR.TTF",1200); //font changed based on feedback
  
  
  sandFont = createFont("Gill Sans MT",100);
  hG = new PVector(3,460); //moved slightly to the right, because the sand text is placed slightly to the right even when in CENTER mode.  
  neck = new PVector (1,0);
  s1 = new PVector(-96,-120); //slope = 2/3 (2y 3x). In (x,y) it's (+12,+8) every line.
  s2 = new PVector(-84,-112); 
  s3 = new PVector(-72,-104); 
  s4 = new PVector(-60,-96);
  s5 = new PVector(-48,-88); 
  s6 = new PVector(-36,-80);
  s7 = new PVector(-24,-72);
  s8 = new PVector(-12,-64);
  s9 = new PVector(0,-56);
  
  
  s10 = new PVector(96,-120);
  s12 = new PVector(84,-112); 
  s13 = new PVector(72,-104); 
  s14 = new PVector(60,-96);
  s15 = new PVector(48,-88); 
  s16 = new PVector(36,-80);
  s17 = new PVector(24,-72);
  s18 = new PVector(12,-64);
  s19 = new PVector(0,-56);
  
  s21 = new PVector(0,-400);
  
}
void draw(){
  background(255);
  translate(width/2,height/2);
  textFont(hourglass);
  fill(hourGlass);
  
  text(glass,hG.x,hG.y);
  textSize(300);
  fill(255);
  text("|",neck.x,neck.y);
  
  textFont(sandFont); //changes the font to Gill Sans MT
  fill(sandColor);
  
  //left to right
  text(sand,s1.x,s1.y); //edge
  text(sand,s2.x,s2.y);
  text(sand,s3.x/*hm*/,s3.y);
  text(sand,s4.x,s4.y);
  text(sand,s5.x,s5.y);
  text(sand,s6.x,s6.y);
  text(sand,s7.x,s7.y);
  text(sand,s8.x,s8.y);
  text(sand,s9.x,s9.y); //center
  
  //right to left
  text(sand,s10.x,s10.y); //edge
  text(sand,s12.x,s12.y);
  text(sand,s13.x,s13.y);
  text(sand,s14.x,s14.y);
  text(sand,s15.x,s15.y);
  text(sand,s16.x,s16.y);
  text(sand,s17.x,s17.y);
  text(sand,s18.x,s18.y);
  text(sand,s19.x,s19.y); //center
  
  //text(sand,s21.x,s21.y);
  
  slide(s1,4,3); 
  
    
  //}
  
}
