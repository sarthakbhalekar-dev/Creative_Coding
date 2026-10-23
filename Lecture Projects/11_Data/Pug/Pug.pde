PImage pic;

void setup() {
  size(600, 600);
  pic = loadImage("Pug.jpg");


  println(pic.width);
  println(pic.height);
  imageMode(CENTER);
}


void draw() {
  image(pic, mouseX, mouseY, width, width*pic.height/pic.width);
}
