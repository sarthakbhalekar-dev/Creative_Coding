// Text Recurring

void setup()
{
  size(400, 500);
  background(255);
  fill(203, 118, 122);
  textSize(32);
}

void draw()
{
  fill(frameCount%255);
  text("Hello! c:", frameCount%width, frameCount);
}

