void keyPressed() {
  if(keyHold[keyCode] == "0"){keyCount++;}
  if(keyHold[keyCode] == "0"){keyPress[keyCode] = str(keyCount);}
   keyHold[keyCode] = str(keyCount);
  if(keyCode == 10){if(testLoad == 0){ thread("initLoad");} testLoad = 1;}
}

void keyReleased() {
 if(keyHold[keyCode] != "0"){keyCount--;}
 keyHold[keyCode] = "0";
 keyPress[keyCode] = "0";
}
