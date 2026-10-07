void setup()
{
  size(400,500);
  background(255,236,149);
  fill(203,118,122);
  textSize(32);
}
 
void draw()
{
  fill(frameCount%255);
  text("Hi",frameCount%width,frameCount);
}
