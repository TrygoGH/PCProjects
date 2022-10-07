void keyPressed() {
  if(uInput[keyCode] == "0"){keyCount++;}
  uInput[keyCode] = str(keyCount);
  if(keyCode == 10){if(testLoad == 0){ thread("initLoad");} testLoad = 1;}

}

void keyReleased() {
 if(uInput[keyCode] != "0"){keyCount--;}
 uInput[keyCode] = "0";

 
}
