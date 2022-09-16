//640 xcenter 320 ycenter 4:3 aspect ratio
//Baseplate stuff
//init var area
int xScreenWidth = 1280; int yScreenWidth = 720;
int xCenter = xScreenWidth / 2; int yCenter = yScreenWidth / 2; int allignL = 0; int allignR = 1280; int allignT = 0; int allignB = 720;
int i = 0; int i2 = 0; float holder = 0;
int GMtick = 0;

int age;

void settings() {
  size(xScreenWidth,yScreenWidth);
}

//init setup
void setup() {
background(0,0,0);
stroke(255);
strokeWeight(5);
fill(255,255,255);
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
 int age = (int)random(0, 30);
   switch(age){
    case 1:
      println("Net begonnen aan het leven");
      break;
      case 2:
      case 3:
      println("Baby");
      break;
      case 4:
      case 5:
      println("Kleuter");
      break;
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      println("Schoolkind");
      break;
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      println("Tiener");
      break;
      case 18:
      println("Volwassen");
      break;
      default:
      println("Idk this age ngl bruv");
      break;
      
     
   }
   
  numInCon((float)age);
}

//Functions Area
void numInCon(float floatText) {
  println(floatText);
}
  
void StringInConsole(String stringText) {
  println(stringText);
}  

void powerMethod(float value) {
  holder = value * value;
}
