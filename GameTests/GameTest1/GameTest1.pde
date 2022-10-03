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
PFont font;
PImage img;


Button button1;
Button button2;
Textfield textfield1;

//init var area
int xScreenWidth = 0; int yScreenWidth = 0; //user fullscreen
// int xScreenWidth = 1920; int yScreenWidth = 1080; //1080p
//int xScreenWidth = 1280; int yScreenWidth = 720; //720p
int xCenter; int yCenter;
int allignL; int allignR; int allignT; int allignB;
int btSize = 100;
int GMtick = 0;
float nowTime = 0; float oldTime = 0; float delta = 0;

//array area
int[] entityIDlist = new int[200];
float[] fList1 = new float[26];
String[] sList1 = new String[26];
ArrayList<keyPress> keyPresses = new ArrayList<keyPress>();



void settings() {
  if (xScreenWidth > 0 && yScreenWidth > 0) {
    size(xScreenWidth, yScreenWidth);
  } else {
    fullScreen();
  }
}

//setup vars


//init setup
void setup() {
  xCenter = xScreenWidth / 2; yCenter = yScreenWidth / 2;
  allignL = 0; allignR = xScreenWidth; allignT = 0; allignB = yScreenWidth;
  //import vars
  cp5 = new ControlP5(this);
  //buttons
  //button1 = cp5.addButton("button1").setPosition(xCenter-(btSize/2),yCenter-(btSize/4)+144).setSize(btSize,btSize/2).setCaptionLabel ("Click");
  //button2 = cp5.addButton("button2").setPosition(xCenter-(btSize/2)+100,yCenter-(btSize/4)).setSize(btSize,btSize/2).setCaptionLabel ("Click");

  //textfields
  //textfield1 = cp5.addTextfield("Text").setPosition(xCenter-100,yCenter-0).setText("Hello").setCaptionLabel("Type Smth").setColorLabel(255);

  //B A S E  S E T T I N G S//

  //function settings
  rectMode(CENTER);

  //canvas settings
  frameRate(60);
  background(0, 0, 0);
  stroke(255);
  strokeWeight(5);
  fill(255, 255, 255);


  //text
  font = createFont("Calibri-48", 48);
  textFont(font);
  textAlign(CENTER, CENTER);

  //images
  img = loadImage("Images/Discord.png");

  //sounds
  //sFile = new SoundFile(this, "Sounds/BenBeat.mp3");
  //soundSet(2,25,0);
  //soundSet(2,25);
  //sFile.play();
}

//Main loop area (no loop for 1 time processes)
void draw() {
  managerLoop();
  drawLoop();
  ecsLoop();
}

void managerLoop() {
  GMtick++;
  timeProcess();
}

void managerTick() {
  GMtick++;
}

void ecsLoop() {
   for(int i = 0; i < entityIDlist.length; i++){
   println(frameRate);
   }
}

void drawLoop() {
  //background(0);
  //text(keyCode, xCenter, 300);
  //text(key, xCenter, 150);
  //if (keyPresses.size() > 0) {
  //  for (int i = 0; i < keyPresses.size(); i++) {
  //    keyPress holder = keyPresses.get(i);
  //    print(holder.keyC);
  //  }
  //  println("");
  // }
}

void keyPressed() {
  keyPresses.add(new keyPress(keyCode));
}

//CODE AREA






//Button area
void button1() {
  println("");
}

void button2() {
  println("");
}






//Class




class keyPress {
  int keyC;
  keyPress(int keyNum) {
    keyC = keyNum;
  }
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

void rekt2(float num1, float num2, float num3, float num4) {
  line(num1 - (num3 / 2), num2 + (num4 / 2), num1 + (num3 / 2), num2 + (num4 / 2));
  line(num1 - (num3 / 2), num2 + (num4 / 2), num1 - (num3 / 2), num2 - (num4 / 2));
  line(num1 - (num3 / 2), num2 - (num4 / 2), num1 + (num3 / 2), num2 - (num4 / 2));
  line(num1 + (num3 / 2), num2 - (num4 / 2), num1 + (num3 / 2), num2 + (num4 / 2));
}

void rekt(float num1, float num2, float num3, float a) {
  rect(0, 0, 10, 10);
}

float combi (float num1, float num2, float num3, float num4) {
  float holder = (num1 + num2 + num3 + num4);
  return holder;
}

void soundSet(float... sets) {
  if (sets.length >= 1) {
    sFile.rate(sets[0]);
  }
  if (sets.length >= 2) {
    sFile.amp(sets[1]/100);
  }
  if (sets.length >= 3) {
    sFile.cue(sets[2]);
  }
}

void timeProcess() {
  nowTime = millis() / 1;
  delta = (millis() - oldTime) /1000;
  oldTime = millis() / 1;
}
