//640 xcenter 320 ycenter 4:3 aspect ratio
//Baseplate stuff
//init var area
int xScreenWidth = 1280; int yScreenWidth = 720;
int xCenter = 640; int yCenter = 320; int allignL = 0; int allignR = 1280; int allignT = 0; int allignB = 720;
int i = 0; int i2 = 0; float holder = 0;
int GMtick = 0;

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

//Main loop area (no loop for 1 time processes)
void draw() {
 managerLoop();
 noLoop();
}

void managerLoop() {
 managerTick();
 }

 void managerTick() {
   GMtick++;
   runCode();
   //intInConsole(GMtick);
 }

//Code Area

void runCode() {
  int mijnEersteVariabele = 2;
  if(mijnEersteVariabele == 2){
    println("ja de var is 2");
 }
}

//Functions Area
void intInConsole(int intText) {
  println(intText);
}
  
void StringInConsole(String stringText) {
  println(stringText);
}  

void floatInConsole(float floatText) {
  println(floatText);
}

void powerMethod(float value) {
  holder = value * value;
}
