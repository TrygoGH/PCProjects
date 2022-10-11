/*
Entity info

all components of an entity should start with "e". Though not required helps recognize when you're dealing with entity specific functions and calculations.

Components:
Info Components - help give information about a certain entity  
 
... = eComponents
... = eFunctions
1 = ID - ID of the entity (IDs can be anything but must be of type INT and should be unique unless used to track the oldest entity with the same IDs)
2 = Entity group ID (ID of the group)
3 = Group ID (ID within the group)
4 = Name (names are a way to visualize in the code what entity you want to find, they can act as a secondary ID)
5 = Entity group name (same function as Entity group ID but with names)
6 = Group name (same function as Group ID but with names)
7 = lifetime (how many milliseconds the entity has existed for while the game is running)
8 = gametime (same as lifetime but is dependant on the delta and targetFPS. e.g.: 30 targetFPS and 0.033 delta = 1 second every thirty frames.) 
              (If the game's framerate is intentionally slowed down for things like hitstop or sped up for things like fast forwarding the gametime would reflect time as perceived in game.)
9 = frametime (how many frames the entity has existed for while the game is running)
10 = gameframetme (same idea as gametime but for frames)

Function components - help in making functions work
... = Test - useful for testing stuff (beware it is of type STRING so cast the things you want to test to String and back).
... = XPower - determines the % of speed going in the X direction Normalized number between 0.0 and 1.0
... = XPower - determines the $ of speed going in the Y direction. Normalized number between 0.0 and 1.0
11 = AniTimer1 - used to count how many frames since the last animation
12 = AniTimer2
13 = AniTimer3
14 = Calc1 - used to store calculations temporarily (useful when needing to store a calculation for multiple frames)
15 = Calc2
16 = Calc3

Value components - stores a value that may or may not change and is used in functions
17 = x
18 = y
19 = xVel
20 = yVel
20 = MaxSpeed
21 = gravity
22 = friction
23 = weight
24 = Size - % of the x and y width
25 = Xwidth - if only xwidth used then it'll be used for both x and y. Set y width to "0" to prevent this.
26 = Ywidth
27 = HBtype - type of hitbox
28 = HBx
29 = HBy
30 = HBsize
30 = HBxWidth
31 = HBxYidth
32 = costume - is of type STRING. Try giving the entity costume the same name as the file you're trying to use.
33 = color - RBGA color type



*/

class entity {
  //base vars
  String eComponents;
  String eFunctions;
  String eTest;
  
  //non value vars
  float eXPower;
  float eYPower;
  float eTempXvel;
  float eTempYvel;
  
  //value vars
  int eId;
  String eName;
  int eEgID;
  String eEgName;
  int eGID;
  String eGName;
  float eLifetime;
  float eGametime;
  float eFrametime;
  float eGameFrametime;
  float eHp;
  int eLvl;
  float exp;
  float eX;
  float eY;
  float eXvel;
  float eYvel;
  float eGravity;
  float eFriction;
  float eWeight;
  float eHBx;
  float eHBy;
  float eHBsize;
  float eHBxWidth;
  float eHByWidth;
  String eCostume;
  float[] eColor = new float[4];
  float eSize;
  float eXWidth;
  float eYWidth;
  float eMaxSpeed;
  float eAniTimer1;
  float eAniTimer2;
  float eAniTimer3;
  float eCalc1;
  float eCalc2;
  float eCalc3;
  int eHBtype;
  entity(String... items) {
    int i3 = 0;
    eComponents = items[0];
    eFunctions = items[1];
    for (int i = 0; i < eComponents.length()/2; i++) {
      eTest = "";
      for (int i2 = 0; i2 < 2; i2++) {
        eTest = eTest + eComponents.charAt(i3);
        i3++;
      }
      int i4 = 1;
    if(int(eTest) == i4){eId = int(items[i+2]);} i4++;
    if(int(eTest) == i4){eEgID = int(items[i+2]);} i4++;
    if(int(eTest) == i4){eGID = int(items[i+2]);} i4++;
    if(int(eTest) == i4){eName = (String)(items[i+2]);} i4++;
    if(int(eTest) == i4){eEgName = (String)(items[i+2]);} i4++;
    if(int(eTest) == i4){eGName = (String)(items[i+2]);} i4++;
    if(int(eTest) == i4){eLifetime = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eGametime = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eFrametime = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eGameFrametime = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eAniTimer1 = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eAniTimer2 = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eAniTimer3 = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eCalc1 = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eCalc2 = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eCalc3 = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eX = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eY = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eXvel = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eYvel = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eMaxSpeed = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eGravity = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eFriction = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eWeight = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eSize = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eXWidth = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eYWidth = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eHBtype = int(items[i+2]);} i4++;
    if(int(eTest) == i4){eHBx = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eHBy = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eHBsize = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eHBxWidth = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eHByWidth = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eCostume = (items[i+2]);} i4++;
    if(int(eTest) == i4){eColor[0] = float(items[i+2]);} i4++;
    //if(int(eTest) == i4){eId = int(items[i+2]);} i4++;
    
    }
   
  }
  
  void display(boolean eFlen, boolean eFunc){
    //println(eFlen == true);
    //println(eFlen, eFunc);
    if(eFlen){
      if(eFunc){
      if(true){ //(eX-cameraX)+xCenter+eSize >= 0 && (eX-cameraX)+xCenter-eSize <= xScreenWidth && (eY-cameraY)+yCenter+eSize >= 0 && (eY-cameraY)+yCenter-eSize <= yScreenWidth
       strokeWeight(0);
       fill(255,255,255,0.5);
       float[] a = screenPos(eX*cameraZoom,eY*cameraZoom,cameraX*cameraZoom,cameraY*cameraZoom); if(eCostume == "rect"){rectMode(CENTER); rect(a[0], a[1], eSize, eSize);}else if (eCostume == "circle"){ellipse(a[0], a[1], eSize*cameraZoom, eSize*cameraZoom);}
      }
     }
   }
  }
   
    void move(boolean eFlen, boolean eFunc){
    if(eFlen){
      if(eFunc){
          if(int(keyHold[68]) > int(keyHold[65])){eXPower = 1;}else if(int(keyHold[65]) > int(keyHold[68])){eXPower = -1;} if(int(keyHold[83]) > int(keyHold[87])){eYPower = 1;}else if(int(keyHold[87]) > int(keyHold[83])){eYPower = -1;}
           float powerNorm = sqrt(sq(eXPower)+sq(eYPower));
           if(keyHold[32] != "0"){powerNorm = 1;}
             if(powerNorm > 0){eTempXvel = eTempXvel + (((eXPower/powerNorm) * eMaxSpeed)); eTempYvel = eTempYvel + (((eYPower/powerNorm) * eMaxSpeed));}
               println(eTempXvel);
            
               eXPower = 0; eYPower = 0;
    }
  }
 }
  
  void manager(boolean eFlen, boolean eFunc){
      if(eFlen){
        if(eFunc){
         if(keyHold[10] != "0"){createEntity();}
         if(keyHold[8] != "0"){}
      }
    }
  }

  void camera(boolean eFlen, boolean eFunc){//boolean eFLength, boolean eFunction
      if(eFlen){
        if(eFunc){
         e = entities.get(int(manager[0]));
         eX = cameraX; eY = cameraY;
         eCalc1 = lerp(eX,e.eX,constrain(0.20*deltaFrame,0.0,1.0)); eCalc2 = lerp(eY,e.eY,constrain(0.20*deltaFrame,0.0,1.0));
         cameraX = eCalc1; cameraY = eCalc2;
         //if(eCalc1 > 0 && cameraX > e.eX){cameraX = e.eX;} if(eCalc2 > 0 && cameraY > e.eY){cameraY = e.eY;}
         //if(eCalc1 < 0 && cameraX < e.eX){cameraX = e.eX;} if(eCalc2 < 0 && cameraY < e.eY){cameraY = e.eY;}
      }
    }
  }
  
    void mouse(boolean eFlen, boolean eFunc){
      if(eFlen){
        if(eFunc){
         eX = mouseX; eY = mouseY;
      }
    }
  }
  
  void entityInfo(){
     if(eName == "player"){manager[0] = str(entityI);}
}
  void movement(boolean eFlen, boolean eFunc){
    if(eFlen){
        if(eFunc){
          eXvel = eXvel + eTempXvel; eYvel = eYvel + eTempYvel; //eXvel = eTempXvel; eYvel = eTempYvel;
          eCalc1 = eXvel * eFriction; eCalc2 = eYvel * eFriction;
          eXvel = eXvel - eCalc1; eYvel = eYvel - eCalc2;
          eX = eX + (eXvel * deltaFrame); eY = eY + (eYvel * deltaFrame);
          eTempXvel = 0; eTempYvel = 0;
      }  
    }
  }
  
  
}
