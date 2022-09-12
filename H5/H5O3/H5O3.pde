//640 xcenter 320 ycenter 4:3 aspect ratio
//Baseplate stuff
//init var area
int xScreenWidth = 1280; int yScreenWidth = 720;
int xCenter = 640; int yCenter = 320; int allignL = 0; int allignR = 1280; int allignT = 0; int allignB = 720;
int i = 0; int i2 = 0; float holder = 0; float holder2 = 0;
int GMtick = 0;

float PlayerHeight = 161.3; float PlayerWeight = 47; String Sen1 = "Wow, you so tall";

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
  cmToM(PlayerHeight);
  powerMethod(holder);
  BMIcalculator(PlayerWeight, holder);
  print("Your BMI is ");
  floatInConsole((int)holder);
}

//Functions Area
void intInConsole(int intText) {
  println(intText);
}

void floatInConsole(float floatText) {
  println(floatText);
}
  
void StringInConsole(String stringText) {
  println(stringText);
}  

void cmToM(float playerLength) {
 holder = playerLength / 100;
}

void powerMethod(float value) {
  holder = value * value;
}

void BMIcalculator(float playerWeight, float playerL2) {
  holder = playerWeight / playerL2;
}
