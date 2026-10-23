//Moving Colour

void setup() {
  size(256, 256);
  noStroke();
}

void draw() {
  color rectColor = color(mouseX, mouseY, 150);

  background(220);
  fill(rectColor);

  rect(50, 50, 156, 156);
}
