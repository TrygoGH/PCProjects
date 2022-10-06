void loadingBar(float loadPrc, float x, float y, float xW, float yW){
  textSize(48);
  text(loadPrc+"%", x, y); 
}

void callLoadBar(){
  background(0);
    loadingBar(float (int( ((loadedItems/totalLoadItems)*10000) ) )/100,xCenter,yCenter,0,0);
}
