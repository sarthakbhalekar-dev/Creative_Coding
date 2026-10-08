void setup()
{
  size(400, 300);
  fill(203, 118, 122);
}

void draw()
{
  background(255, 236, 149);

  if (mouseX<width/2) {
    circle (mouseX, mouseY, 60);
  } else {
    rectMode(CENTER);
    rect(mouseX, mouseY, 60, 60);
  }
}
