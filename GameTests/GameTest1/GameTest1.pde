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
// int xScreenWidth = 0, yScreenWidth = 0; //user fullscreen
// int xScreenWidth = 1920, yScreenWidth = 1080; //1080p
int xScreenWidth = 1280, yScreenWidth = 720; //720p
int xCenter, yCenter;
int allignL, allignR, allignT, allignB;
int btSize = 100;
int GMtick = 0, entityI = 0; 
float nowTime = 0, oldTime = 0, delta = 0, deltaFrame = 0, targetFPS = 300, oldFrame = 0, nowFrame = 0, storedFrames = 0, framesPassed = 0;
int keyCount = 0;
float cameraX, cameraY, cameraZoom = 1.0;
int gameState = 0, loading = 1, testLoad = 0; 
float loadedItems = 0, totalLoadItems = 16; 
String eF = "";

//array area
int[] entityIDlist = new int[200];
float[] fList1 = new float[26];
String[] manager = new String[10000];
String[] keyHold = {"0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"};
String[] keyPress = {"0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"};
boolean entityCheck[] = new boolean[2];
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
  /*println("hi");
  for (int i = 0; i < 10000; i++){manager[i] = "";}
 int a = 0; byte b[] = loadBytes("Images/Discord.png"); for(int i = 0; i < b.length; i++){a = a + (b[i] & 0xff);}
 b = loadBytes("Sounds/BenBeat.mp3"); 
 println(a);
  xScreenWidth = width; yScreenWidth = height;
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
  rectMode(CORNER);

  //canvas settings
  frameRate(targetFPS);
  background(0, 0, 0);
  stroke(255);
  strokeWeight(5);
  fill(255, 255, 255);
  colorMode(RGB,255,255,255,1);
  noCursor();
    



  //text
  
  //images

  //sounds
  saveBytes("SoundTest.mp3", b);
  //sFile = new SoundFile(this, "SoundTest.mp3");
  //soundSet(2,25,0);
  //soundSet(2,25);
  //sFile.play();
  */
  rectMode(CORNER); 
  frameRate(targetFPS);
  background(0, 0, 0);
  stroke(255);
  strokeWeight(5);
  fill(255, 255, 255);
  colorMode(RGB,255,255,255,1);
  noCursor();

  /*screen settings*/
  xScreenWidth = width; yScreenWidth = height; 
  xCenter = xScreenWidth / 2; yCenter = yScreenWidth / 2; 
  allignL = 0; allignR = xScreenWidth; allignT = 0; allignB = yScreenWidth; 
}

//Main loop area
void draw() {
  //println((Object[])keyPress); 
  //println(manager[0]);
  if(loading == 0){
    managerLoop();
    if(gameState == 1 && int(storedFrames) > 0){drawLoop(); ecsLoop(); managerEnd();}}
    else if(loading == 1){callLoadBar(); if(testLoad == 0){textSize(24); textAlign(CENTER, CENTER); fill(255); text("press enter to start loading", xCenter, ((yScreenWidth/2)+100)-6);}
  }
}

void managerLoop() {
  GMtick++;
  timeProcess();
  if(keyHold[38] != "0"){cameraZoom = cameraZoom + 0.01;}if(keyHold[40] != "0"){cameraZoom = cameraZoom - 0.01;}
}

void managerEnd() {
  for (int i = 0; i < keyHold.length; i++){
   if(keyPress[i] != "0"){keyPress[i] = "0";}
  }
}

void managerTick() {
  GMtick++;
}

void ecsLoop() {
  for (entityI = 0; entityI < entities.size(); entityI++) {
    e = entities.get(entityI);
    eF = e.eFunctions;
    e.entityInfo();
    arrayCopy(eFLength(eF, 1),entityCheck); e.display(entityCheck[0],entityCheck[1]);
    arrayCopy(eFLength(eF, 2),entityCheck); e.manager(entityCheck[0],entityCheck[1]);
    arrayCopy(eFLength(eF, 3),entityCheck); e.move(entityCheck[0],entityCheck[1]);
    arrayCopy(eFLength(eF, 5),entityCheck); e.movement(entityCheck[0],entityCheck[1]);
    arrayCopy(eFLength(eF, 4),entityCheck); e.camera(entityCheck[0],entityCheck[1]); 
  }
}

void drawLoop() {
  background(0);
  textMode(CORNER);
  textSize(48);
  fill(255,255,255,1);
  text(int(frameRate), 0 + 24, 0 + 24); 
  text(entities.size(), xScreenWidth - ((textWidth(str(entities.size()))) / 2), 0 + 24);
}






//Button area
void button1() {
  println("");
}

void button2() {
  println("");
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
  deltaFrame = 60*delta; //frameDelta = 1; 
  oldTime = millis() / 1;
  nowFrame = nowFrame + targetFPS * delta;
  storedFrames = storedFrames + targetFPS * delta;
  framesPassed = nowFrame - oldFrame; println(storedFrames);
  oldFrame = oldFrame + targetFPS * delta;
}

void createEntity(){
   //println(random(cameraX-xCenter,cameraX+xCenter)); println(random(cameraY-yCenter,cameraY+yCenter));
   //println(cameraX,cameraY);
entities.add(new entity(
    "0102030405060708091011121314151617181920212223242526272829303132333435",
    "10001",
    "1",
    "",
    "",
    "enemy",
    "",
    "",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    str(random(cameraX-xCenter,cameraX+xCenter)),
    str(random(cameraY-yCenter,cameraY+yCenter)),
    str(random(-1.0,1.0)),
    str(random(-1.0,1.0)),
    "5",
    "0",
    "0",
    "0",
    "100",
    "50",
    "50",
    "2",
    "0",
    "0",
    "100",
    "50",
    "50",
    "circle",
    "255"
    ));
}
