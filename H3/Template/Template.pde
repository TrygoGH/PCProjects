//640 xcenter 320 ycenter 4:3 aspect ratio
//Baseplate stuff
//init var area
int xScreenWidth = 1280; int yScreenWidth = 720;
int xCenter = 640; int yCenter = 320; int allignL = 0; int allignR = 1280; int allignT = 0; int allignB = 720;
int i = 0; int i2 = 65; String textStrings = "";

void settings() {
  size(xScreenWidth,yScreenWidth);
}

//init setup
void setup() {
background(0,0,0);
stroke(255);
strokeWeight(5);
fill(255,255,255);
}

//Code Area
void draw() {
 managerLoop();
}

void managerLoop() {
 managerTick();
 webText();
 }


 void managerTick() {
   
 }

void intInConsole(String stringText) {
  println();
}
  
