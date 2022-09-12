//640 xcenter 320 ycenter 4:3 aspect ratio
//Baseplate stuff
//init var area
int xScreenWidth = 1280;
int yScreenWidth = 720;
int xCenter = 640;
int yCenter = 320;
int allignL = 0;
int allignR = 1280;
int allignT = 0;
int allignB = 720;
int i = 0;
int i2 = 0;
float holder = 0;
int GMtick = 0;

void settings() {
  size(xScreenWidth, yScreenWidth);
}

//init setup
void setup() {
  background(0, 0, 0);
  stroke(255);
  strokeWeight(5);
  fill(255, 255, 255);
}

//Main loop area (no loop for 1 time processes)
void draw() {
  managerLoop();
  noLoop();
}

void managerLoop() {
  managerTick();
}

void managerTick() {
  GMtick++;
  runCode();
  //intInConsole(GMtick);
}

//Code Area

void runCode() {
  //EX1
  int temperatuur = -2;
  if ( temperatuur < 0) {
    println("EX1 " + true);
  }

  //EX2
  String sneeuw = "Wit";
  if (sneeuw != "Geel") {
    println("EX2 " + true);
  }

  //EX3
  int jantje = 6;
  if (jantje > 4) {
    println("EX3 " + true);
  }

  //EX4
  String datum = "01-04";
  String mijnVerjaardag = "01-04";
  if(mijnVerjaardag == datum){
      println("EX4 " + true);
   }

  //EX5
  double mijnLengte = 1.60;
  if (mijnLengte <= 1.60) {
    println("EX5 " + true);
  }

  //EX6
  int mijnMondGehouden = 15;
  if (mijnMondGehouden >= 10) {
    println("EX6 " + true);
  }
}

//Functions Area
void intInConsole(int intText) {
  println(intText);
}

void StringInConsole(String stringText) {
  println(stringText);
}

void floatInConsole(float floatText) {
  println(floatText);
}

void powerMethod(float value) {
  holder = value * value;
}
