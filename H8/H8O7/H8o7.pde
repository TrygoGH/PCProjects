//640 xcenter 320 ycenter 4:3 aspect ratio
//Baseplate stuff
//init var area
int xScreenWidth = 1280; int yScreenWidth = 720;
int xCenter = xScreenWidth / 2; int yCenter = yScreenWidth / 2; int allignL = 0; int allignR = 1280; int allignT = 0; int allignB = 720;
int i = 0; int i2 = 0; float holder = 0;
int GMtick = 0;

int counter = 20;

void settings() {
  size(xScreenWidth,yScreenWidth);
}

//init setup
void setup() {
background(0,0,0);
stroke(255);
strokeWeight(0);
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

for(int i = 0; i < 11; i++){
 numInCon(counter);
  counter--;
 }

}

//Functions Area
void numInCon(float numText) {
  println(numText);
}
  
void StringInConsole(String stringText) {
  println(stringText);
}  

void powerMethod(float value) {
  holder = value * value;
}
