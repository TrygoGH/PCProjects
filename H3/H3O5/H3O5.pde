//640 xcenter 320 ycenter 4:3 aspect ratio

size(1280,720);
background(0,0,0);

int xcenter = 640;
int ycenter = 720 / 2;

ellipse(xcenter,ycenter+0,200,200);
arc(xcenter-50,ycenter-75+50,50,50,PI,2*PI);
arc(xcenter+50,ycenter-75+50,50,50,PI,2*PI);
arc(xcenter,ycenter-60+50,80,80,0,PI*1);
