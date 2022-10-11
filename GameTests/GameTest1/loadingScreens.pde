void initLoad(){
// int a = 0; byte b[] = loadBytes("Images/Discord.png"); for(int i = 0; i < b.length; i++){a = a + (b[i] & 0xff);}
 //b = loadBytes("Sounds/BenBeat.mp3"); 

  


  //B A S E  S E T T I N G S// 
  
  /*imports*/
  //cp5 = new ControlP5(this); loadedItems++; 
  
  /*buttons*/
  //button1 = cp5.addButton("button1").setPosition(xCenter-(btSize/2),yCenter-(btSize/4)+144).setSize(btSize,btSize/2).setCaptionLabel ("Click");
  //button2 = cp5.addButton("button2").setPosition(xCenter-(btSize/2)+100,yCenter-(btSize/4)).setSize(btSize,btSize/2).setCaptionLabel ("Click");

  /*textfields*/
  //textfield1 = cp5.addTextfield("Text").setPosition(xCenter-100,yCenter-0).setText("Hello").setCaptionLabel("Type Smth").setColorLabel(255);


  
  //lists
  for (int i = 0; i < 10000; i++){manager[i] = "";} loadedItems++;
  
  /*canvas settings*/ 

    



  //text
  
  //images

  //sounds
  
  /*images*/
  img = loadImage("Images/Discord.png"); loadedItems++; 
    
  /*sounds*/
  //sFile = new SoundFile(this, "Sounds/BenBeat.mp3");
  //saveBytes("SoundTest.mp3", b);
  //sFile = new SoundFile(this, "SoundTest.mp3");
  //soundSet(2,25,0);
  //soundSet(2,25);
  //sFile.play();
  sFile = new SoundFile(this, "Sounds/Pop.wav"); loadedItems++; 
   
  /*text*/
  font = loadFont("Calibri-Light-48.vlw"); loadedItems++; 
  //sFile = new SoundFile(this, "Sounds/Shine.mp3");
  textFont(font); loadedItems++; 
  textAlign(CENTER, CENTER); loadedItems++; 
 
   
  /*canvas*/
  frameRate(targetFPS); loadedItems++; 
  background(0, 0, 0); loadedItems++; 
  stroke(255); loadedItems++; 
  strokeWeight(5); loadedItems++; 
  fill(255, 255, 255, 1); loadedItems++; 
  colorMode(RGB,255,255,255,1); loadedItems++; 
  noCursor(); loadedItems++; 


  
  //ECS
    entities.add(new entity(
    "0102030405060708091011121314151617181920212223242526272829303132333435",
    "010",
    "1",
    "",
    "",
    "manager",
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
    "0",
    "0",
    "0",
    "0",
    "0",
    "5",
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
    "",
    "255"
    )); loadedItems++; 

  entities.add(new entity(
    "0102030405060708091011121314151617181920212223242526272829303132333435",
    "10101",
    "1",
    "",
    "",
    "player",
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
    "0",
    "0",
    "0",
    "0",
    "10",
    "0",
    "0.5",
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
    )); loadedItems++; 
    
        entities.add(new entity(
    "0102030405060708091011121314151617181920212223242526272829303132333435",
    "0001",
    "1",
    "",
    "",
    "camera",
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
    "0",
    "0",
    "0",
    "0",
    "0",
    "1",
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
    )); loadedItems++; 
    

   //done
   manager[1] = str((loadedItems/totalLoadItems)*100);
   if(float(manager[1])>=100){
   loading = 0; gameState = 1; 
   }
}
