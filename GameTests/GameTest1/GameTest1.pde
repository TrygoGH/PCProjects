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
entity e;
ControlP5 cp5;
SoundFile sFile;
PFont font;
PImage img;


Button button1;
Button button2;
Textfield textfield1;

//init var area
int xScreenWidth = 0, yScreenWidth = 0; //user fullscreen
// int xScreenWidth = 1920, yScreenWidth = 1080; //1080p
//int xScreenWidth = 1280, yScreenWidth = 720; //720p
int xCenter, yCenter;
int allignL, allignR, allignT, allignB;
int btSize = 100;
int GMtick = 0;
float nowTime = 0, oldTime = 0, delta = 0, frameDelta = 0, targetFPS = 60; 
int keyCount = 0;
float cameraX, cameraY;
int gameState = 0, loading = 1; 
float loadedItems = 0, totalLoadItems = 7;

//array area
int[] entityIDlist = new int[200];
float[] fList1 = new float[26];
String[] sList1 = new String[26];
String[] uInput = new String[222];
ArrayList<keyPress> keyPresses = new ArrayList<keyPress>();
ArrayList<entity> entities = new ArrayList<entity>();





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
  xScreenWidth = width; yScreenWidth = height;
  xCenter = xScreenWidth / 2; yCenter = yScreenWidth / 2;
  allignL = 0; allignR = xScreenWidth; allignT = 0; allignB = yScreenWidth;
  
  for(int i = 0; i < 222; i++){
   uInput[i] = "0";
  }
  //import vars
  cp5 = new ControlP5(this);
  //buttons
  //button1 = cp5.addButton("button1").setPosition(xCenter-(btSize/2),yCenter-(btSize/4)+144).setSize(btSize,btSize/2).setCaptionLabel ("Click");
  //button2 = cp5.addButton("button2").setPosition(xCenter-(btSize/2)+100,yCenter-(btSize/4)).setSize(btSize,btSize/2).setCaptionLabel ("Click");

  //textfields
  //textfield1 = cp5.addTextfield("Text").setPosition(xCenter-100,yCenter-0).setText("Hello").setCaptionLabel("Type Smth").setColorLabel(255);

  //B A S E  S E T T I N G S//

  //function settings
  rectMode(CORNER);

  //canvas settings
  frameRate(targetFPS);
  background(0, 0, 0);
  stroke(255);
  strokeWeight(5);
  fill(255, 255, 255);
  colorMode(RGB,255,255,255,1);
  thread("initLoad");
    



  //text
  
  //images

  //sounds
  //sFile = new SoundFile(this, "Sounds/BenBeat.mp3");
  //soundSet(2,25,0);
  //soundSet(2,25);
  //sFile.play();
}

//Main loop area
void draw() {
  if(loading == 0){
    managerLoop();
    if(gameState == 1){
      drawLoop();
      ecsLoop();
      managerEnd();
    }
  }else if(loading == 1){
       callLoadBar();
  }
  print(loading);
  println(entities.size(), int(frameRate));
  
}

void managerLoop() {
  GMtick++;
  timeProcess();
}

void managerEnd() {
  //keyCount = 0;
}

void managerTick() {
  GMtick++;
}

void ecsLoop() {
  for (int i = 0; i < entities.size(); i++) {
    e = entities.get(i);
    e.display();
    e.manager();
    e.camera();
    e.move();
   
        
  }
  //println(" " + frameRate);
}

void drawLoop() {
  background(0);
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

void soundSet(float... sets) {
  if(sets.length >= 1){sFile.rate(sets[0]);}
  if(sets.length >= 2){sFile.amp(sets[1]/100);}
  if(sets.length >= 3){sFile.cue(sets[2]);}
}

void timeProcess() {
  nowTime = millis() / 1;
  delta = (millis() - oldTime) /1000;
  frameDelta = 60/(1/delta);
  oldTime = millis() / 1;
}

void createEntity(){
entities.add(new entity(
    "01020304050607",
    "100",
    str(2),
    str(10),
    str(3),
    str(random(0,1000)),
    str(random(0,1000)),
    str(2),
    str(25)
    ));
}
