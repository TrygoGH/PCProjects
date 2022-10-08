void initLoad(){

    //images
    if(0 == 0){
   img = loadImage("Images/Discord.png");
   loadedItems++; 
    }
    
   //sounds
   if(0 == 0){
   //sFile = new SoundFile(this, "Sounds/BenBeat.mp3");
   sFile = new SoundFile(this, "Sounds/Pop.wav");
   loadedItems++; 
   }
   
   //text
   if(0 == 0){
   font = loadFont("Calibri-Light-48.vlw");
   //sFile = new SoundFile(this, "Sounds/Shine.mp3");
  textFont(font);
  textAlign(CENTER, CENTER);
  loadedItems++; 
   }
   
  //canvas
  if(0 == 0){
  stroke(255);
  strokeWeight(5);
  fill(255, 255, 255);
  loadedItems++; 
  }
  
  //ECS
  if(0 == 0){
  entities.add(new entity(
    "0102030405060708",
    "101",
    str(2),
    str(10),
    str(3),
    str(0),
    str(0),
    str(2),
    str(25),
    str(5)
    ));
    loadedItems++; 
  }
    
    if(0 == 0){
    entities.add(new entity(
    "01",
    "010",
    str(1)
    ));
    loadedItems++; 
    }
    
      if(0 == 0){
    entities.add(new entity(
    "010405",
    "0001",
    str(2),
    str(0),
    str(0)
    ));
    loadedItems++; 
  }

   //done
   if(loadedItems == 7){
   loading = 0; gameState = 1;
   }
}
