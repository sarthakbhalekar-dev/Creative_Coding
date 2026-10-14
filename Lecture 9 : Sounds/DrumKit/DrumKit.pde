// Import the library that does the sound handling:
import processing.sound.*;   
 
// Each sample has its own SoundFile object:
SoundFile kick, snare, hiHat;  
 
void setup()
{
  size(300, 200);
 
  // Initialise SoundFile objects to contain valid sound files (WAV):
  kick  = new SoundFile(this,"kickDrum.wav");
  snare = new SoundFile(this,"snareDrum.wav");
  hiHat = new SoundFile(this,"hiHat.wav");
}
 
void draw()
{
  noLoop();     // Stops Processing from redrawing at 60 fps.
}
 
// Add interactions to play sound on key presses:
void keyPressed()
{
  if (key == ' ')
  {
    kick.play();
  }
  else if (key == 's')
  {
    snare.play();
  }
  else if (key == 'h')
  {
    hiHat.play();
  }
  else if (key == 'r')
  {
    kick.play();
    snare.play();
  }
  else if (key == 'q')
  {
    exit();   // Quit the program if 'q' is pressed.
  }
}
