import processing.video.*;
Movie myMovie;

Movie [] mov = new Movie [3];

void setup() {
  fullScreen();
  mov[0] = new Movie (this, "Goofy.mp4");
  println(mov[0]);
  mov[0].play();

}

void draw() {
  image(mov[0], 0, 0, width, height);
}

void movieEvent(Movie m) {
  m.read();
}
