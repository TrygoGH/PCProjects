//640 xcenter 320 ycenter 4:3 aspect ratio
//Baseplate stuff
import controlP5.*;
//init var area
int xScreenWidth = 1280; int yScreenWidth = 720;
int xCenter = xScreenWidth / 2; int yCenter = yScreenWidth / 2; int allignL = 0; int allignR = 1280; int allignT = 0; int allignB = 720;
int i = 0; int i2 = 0; float holder = 0;
int GMtick = 0;

void settings() {
  size(xScreenWidth,yScreenWidth);
}

//init setup
void setup() {
//import vars
  ControlP5 cp5 = new ControlP5(this);
//base settings
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

float avg (float num1, float num2) {
  holder = (num1 + num2) / 2;
  return holder;
}

void rekt(float num1, float num2, float num3, float num4) {
 line(num1 - (num3 / 2), num2 + (num4 / 2), num1 + (num3 / 2), num2 + (num4 / 2));
 line(num1 - (num3 / 2), num2 + (num4 / 2), num1 - (num3 / 2), num2 - (num4 / 2));
 line(num1 - (num3 / 2), num2 - (num4 / 2), num1 + (num3 / 2), num2 - (num4 / 2));
 line(num1 + (num3 / 2), num2 - (num4 / 2), num1 + (num3 / 2), num2 + (num4 / 2));
}

float combi (float num1, float num2, float num3, float num4) {
  holder = (num1 + num2 + num3 + num4);
  return holder;
}
