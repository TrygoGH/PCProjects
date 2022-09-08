//640 xcenter 320 ycenter 4:3 aspect ratio
//Baseplate stuff
//init var area
int xScreenWidth = 1280; int yScreenWidth = 720;
int xCenter = 640; int yCenter = 320; int allignL = 0; int allignR = 1280; int allignT = 0; int allignB = 720;
int x = 100; int y = 100; int xWidth = 50; int yWidth = 50;

//init setup
size(1280,720);
background(0,0,0);
stroke(255);
strokeWeight(5);
fill(255,255,255);

//Code Area
rect(x,y,xWidth,yWidth);
