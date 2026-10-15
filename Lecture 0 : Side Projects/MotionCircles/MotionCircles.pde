// Motion Circles
// Made by Sarthak Bhalekar
// Processing : Hour of Code


void setup() {
  size(500, 400);
  background(0);
}

void draw() {
  if (mousePressed) {
    background(0);
  }
  ellipse(mouseX, mouseY, 60, 60);
}
