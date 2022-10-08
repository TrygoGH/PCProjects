class entity {
  String eComponents;
  String eFunctions;
  String eTest;
  int eId;
  float eHp;
  int eLvl;
  float eX;
  float eY;
  int eType;
  float eXPower;
  float eYPower;
  float eSize;
  float eMaxSpeed;
  float eAniTimer1;
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
    if(int(eTest) == i4){eHp = int(items[i+2]);} i4++;
    if(int(eTest) == i4){eLvl = int(items[i+2]);} i4++;
    if(int(eTest) == i4){eX = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eY = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eType = int(items[i+2]);} i4++;
    if(int(eTest) == i4){eSize = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eMaxSpeed = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eAniTimer1 = float(items[i+2]);} i4++;
    if(int(eTest) == i4){eId = int(items[i+2]);} i4++;
    }
    if(eType == 2){eMaxSpeed = 2;}
  }
  
  void display(boolean eFlen, boolean eFunc){
    //println(eFlen == true);
    println(eFlen, eFunc);
    if(eFlen){
      if(eFunc){
      if((eX-cameraX)+xCenter+eSize >= 0 && (eX-cameraX)+xCenter-eSize <= xScreenWidth && (eY-cameraY)+yCenter+eSize >= 0 && (eY-cameraY)+yCenter-eSize <= yScreenWidth){
       strokeWeight(0);
       fill(255,255,255,0.5);
       float[] a = screenPos(eX,eY,cameraX,cameraY); if(eType == 1){rectMode(CENTER); rect(a[0], a[1], eSize, eSize);}else if (eType == 2){ellipse(a[0], a[1], eSize, eSize);}
      }
     }
   }
  }
   
    void move(boolean eFlen, boolean eFunc){
    if(eFlen){
      if(eFunc){
          //eXPower = (int(uInput[68] != "0") - int(uInput[65] != "0")); yPower = (int(uInput[83] != "0") - int(uInput[87] != "0"));
          if(int(uInput[68]) > int(uInput[65])){eXPower = 1;}else if(int(uInput[65]) > int(uInput[68])){eXPower = -1;} if(int(uInput[83]) > int(uInput[87])){eYPower = 1;}else if(int(uInput[87]) > int(uInput[83])){eYPower = -1;}
          //float[] a = worldPos(mouseX,mouseY,cameraX,cameraY); eX = a[0]; eY = a[1];
         float powerNorm = sqrt(sq(eXPower)+sq(eYPower));
           if(uInput[32] != "0"){powerNorm = 1;}
             if(powerNorm > 0){eX = eX + (((eXPower/powerNorm) * eMaxSpeed)*frameDelta); eY = eY + (((eYPower/powerNorm) * eMaxSpeed)*frameDelta);}
               //eX = eX + (mouseX - ((eX-cameraX)+xCenter)); eY = eY + (mouseY - ((eY-cameraY)+yCenter));
               eXPower = 0; eYPower = 0;
    }
  }
 }
  
  void manager(boolean eFlen, boolean eFunc){
      if(eFlen){
        if(eFunc){
         if(uInput[10] != "0"){createEntity();}
         if(uInput[8] != "0"){}
      }
    }
  }

  void camera(boolean eFlen, boolean eFunc){//boolean eFLength, boolean eFunction
      if(eFlen){
        if(eFunc){
         e = entities.get(0);
         eX = e.eX; eY = e.eY;
         cameraX = cameraX + ((eX-cameraX)*(0.2*frameDelta)); cameraY = cameraY + ((eY-cameraY)*(0.2*frameDelta));
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
  
}
