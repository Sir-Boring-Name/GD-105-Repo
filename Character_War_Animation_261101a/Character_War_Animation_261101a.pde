//Alexander Banievicz - 10/28/2026 - Hourgl8ss animation

color number = (#11A9F2); //cyan
PFont hourglass;
PFont sandFont;
color sandColor = (#BFA677);
String glass = "8";
String sand = ".";

PVector hG; //hourGlass
PVector neck;

PVector n1;
PVector n2;
PVector n3;
PVector n4;
PVector n5;
PVector n6;
PVector n7;
PVector n8;
PVector n9;
PVector n10;

PVector l1;
PVector l2;
PVector l3;
PVector l4;
PVector l5;
PVector l6;
PVector l7;
PVector l8;
PVector l9;
PVector l10;



  void setup(){
  size(500,1000);
  background(255);
  textAlign(CENTER);
  
  hourglass = createFont("AGENCYR.TTF",1200); //font changed based on feedback
  
  
  sandFont = createFont("Gill Sans MT",100);
  hG = new PVector(3,460); //moved slightly to the right, because the sand text is placed slightly to the right even when in CENTER mode  
  neck = new PVector (1,0);
  n1 = new PVector(-96,-120); 
  n2 = new PVector(-84,-112); 
  n3 = new PVector(-72,-104); 
  n4 = new PVector(-60,-96);
  n5 = new PVector(-48,-88); 
  n6 = new PVector(-36,-80);
  n7 = new PVector(-24,-72);
  n8 = new PVector(-12,-64);
  n9 = new PVector(0,-56);
  n10 = new PVector(); 
  
  l1 = new PVector(96,-120);
  l2 = new PVector(84,-112); 
  l3 = new PVector(72,-104); 
  l4 = new PVector(60,-96);
  l5 = new PVector(48,-88); 
  l6 = new PVector(36,-80);
  l7 = new PVector(24,-72);
  l8 = new PVector(12,-64);
  l9 = new PVector(0,-56);
  
  
  }
  
