PImage pic;

void setup() {
  size(600, 600);
  pic = loadImage("pug.jpg");


  println(pic.width);
  println(pic.height);
  imageMode(CENTER);
}


void draw() {
  image(pic, 0, 100, width, width*pic.height/pic.width);
}
