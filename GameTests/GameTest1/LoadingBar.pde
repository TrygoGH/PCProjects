void loadingBar(int loadPrc, float x, float y, float xW, float yW){
  textSize(48);
  textAlign(CENTER, CENTER);
 fill(255);
  if(loadPrc > -1){text(loadPrc+"%", x, y-12);} else{text(0+"%", x, y-12);}
  noFill();
  rectMode(CENTER);
  strokeWeight(5);
  rect(x, y, 800, 100);
  strokeWeight(0);
  stroke(255);
  rectMode(CORNER);
  fill(0,255,0,0.5);
  rect(x-400, y-50, float(800*(loadPrc)/100), 100);
}

void callLoadBar(){
  background(0);
  manager[1] = str((loadedItems/totalLoadItems)*100);
  loadingBar(int(manager[1]),xCenter,yCenter,0,0);
}
