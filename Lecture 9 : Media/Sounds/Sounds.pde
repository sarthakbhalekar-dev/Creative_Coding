import processing.sound.*;   // Import the library that does the sound handling.
 
SoundFile mySample;
 
void setup()
{
  size(300, 200);
  mySample  = new SoundFile(this,"c01.wav");
}
 
void draw()
{
  background(255);
  fill(0);
  textAlign(CENTER,CENTER);
  textSize(18);
  text("Press space to test", width/2, height/2);
}
 
void keyPressed()
{
  if (key == ' ')
  {
    mySample.play();
  }
}
