float[] screenPos(float eX, float eY, float xOBJ, float yOBJ){
  float[] a = {(eX-xOBJ)+xCenter,(eY-yOBJ)+yCenter};
  return a;
}

float[] worldPos(float eX, float eY, float xOBJ, float yOBJ){
  float[] a = {(eX-xCenter)+xOBJ,(eY-yCenter)+yOBJ};
  return a;
}
