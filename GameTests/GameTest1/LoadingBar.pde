void loadingBar(float loadPrc, float x, float y, float xW, float yW){
  textSize(48);
  textAlign(CENTER, CENTER);
 fill(255);
  text(loadPrc+"%", x, y-12); 
  strokeWeight(0);
  stroke(255);
  fill(0,255,0,0.5);
  rectMode(CORNER);
  rect(x-400, y-50, 800*(loadPrc/100), 100);
  noFill();
  rectMode(CENTER);
  strokeWeight(5);
  rect(x, y, 800, 100);
}

void callLoadBar(){
  background(0);
    loadingBar(float (int( ((loadedItems/totalLoadItems)*10000) ) )/100,xCenter,yCenter,0,0);
}
