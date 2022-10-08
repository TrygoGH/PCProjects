boolean[] eFLength(String eFunctions, float index){
boolean a[] = new boolean[2]; 
a[0] = eFunctions.length() > index - 1;
if(a[0] == true){
a[1] = eFunctions.charAt(int(index - 1)) == '1';
}else {a[1] = false;}
return a;
}
