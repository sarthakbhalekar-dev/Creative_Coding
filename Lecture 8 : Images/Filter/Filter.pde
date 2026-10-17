PImage img;
 
void setup() {
  size(640, 480);
  img = loadImage("Holiday.png");
}
 
void draw() {
  image(img, 0, 0);    // <-- image changes dynamically during the sketch and so must be drawn in the draw() method
  filter(BLUR, mouseX / 100);
}
