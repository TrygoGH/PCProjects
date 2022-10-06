void keyPressed() {
  if(uInput[keyCode] == "0"){keyCount++;}
  uInput[keyCode] = str(keyCount);
}

void keyReleased() {
 if(uInput[keyCode] != "0"){keyCount--;}
 uInput[keyCode] = "0";
}
