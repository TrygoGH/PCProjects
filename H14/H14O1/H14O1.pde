//helpful resources

/*
--FOR LOOPS--
for(int i = 0; i < 10; i++){}
-------------

--IF/ELSE STATEMENTS--
if( = 0){}
if( = 0){} else {}
if( = 0){} else if {}
-------------

*/


//640 xcenter 320 ycenter 4:3 aspect ratio
//Baseplate stuff
import controlP5.*;
import processing.sound.*;
ControlP5 cp5;
SoundFile sFile;
PImage img;

Button button1; Button button2;
Textfield textfield1;

//init var area
int xScreenWidth = 1280; int yScreenWidth = 720;
int xCenter = xScreenWidth / 2; int yCenter = yScreenWidth / 2; int allignL = 0; int allignR = 1280; int allignT = 0; int allignB = 720;
int btSize = 100; 
int GMtick = 0;

//array area
int[] iList1 = new int[26];
float[] fList1 = new float[26];
String[] sList1 = new String[26];


void settings() {
  size(xScreenWidth,yScreenWidth);
}

//setup vars
 
 
//init setup
void setup() {
  //import vars
  cp5 = new ControlP5(this);
  //buttons
  //button1 = cp5.addButton("button1").setPosition(xCenter-(btSize/2),yCenter-(btSize/4)+144).setSize(btSize,btSize/2).setCaptionLabel ("Click");
  //button2 = cp5.addButton("button2").setPosition(xCenter-(btSize/2)+100,yCenter-(btSize/4)).setSize(btSize,btSize/2).setCaptionLabel ("Click");
 
  //textfields
  //textfield1 = cp5.addTextfield("Text").setPosition(xCenter-100,yCenter-0).setText("Hello").setCaptionLabel("Type Smth").setColorLabel(255);
  
  //base settings
  background(0,0,0);
  stroke(255);
  strokeWeight(5);
  fill(255,255,255);
  img = loadImage("Images/Discord.png");
  sFile = new SoundFile(this, "Sounds/BenBeat.mp3");
  soundSet(2,25,0);
  soundSet(2,25);
  sFile.play();
  

}

//Main loop area (no loop for 1 time processes)
void draw() {
 managerLoop();
 image(img, 0, 0, 100, 100);
 //noLoop();
}

void managerLoop() {
 managerTick();
 }

 void managerTick() {
   GMtick++;
   runCode();
   //numInCon(GMtick);
 }

//CODE AREA
void runCode() {
  
}





//Button area
void button1() {
  println("");
}

void button2() {
  println("");
}








//Functions Area
void numInCon(float numText) {
  println(numText);
}
  
void StringInConsole(String stringText) {
  println(stringText);
}  

float powerMethod(float value) {
  float holder = value * value;
  return holder;
}

float avg (float num1, float num2) {
  float holder = (num1 + num2) / 2;
  return holder;
}

void rekt(float num1, float num2, float num3, float num4) {
 line(num1 - (num3 / 2), num2 + (num4 / 2), num1 + (num3 / 2), num2 + (num4 / 2));
 line(num1 - (num3 / 2), num2 + (num4 / 2), num1 - (num3 / 2), num2 - (num4 / 2));
 line(num1 - (num3 / 2), num2 - (num4 / 2), num1 + (num3 / 2), num2 - (num4 / 2));
 line(num1 + (num3 / 2), num2 - (num4 / 2), num1 + (num3 / 2), num2 + (num4 / 2));
}

float combi (float num1, float num2, float num3, float num4) {
  float holder = (num1 + num2 + num3 + num4);
  return holder;
}

void soundSet(float... sets){
  if(sets.length >= 1){
 sFile.rate(sets[0]);
  }
 if(sets.length >= 2){
 sFile.amp(sets[1]/100);
 }
 if(sets.length >= 3){
 sFile.cue(sets[2]);
 }
}
