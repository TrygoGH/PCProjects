int keyCount = 0;
int counter = 0;
String[] uInput = new String[222];

void settings() {
  size(1080, 720);
}

void setup() {
for(int i = 0; i < 222; i++){ uInput[i] = "0";}
}

void draw(){
  if(uInput[32] != "0"){counter++;}
  println(counter);
}
