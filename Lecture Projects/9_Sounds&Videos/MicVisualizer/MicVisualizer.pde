import processing.sound.*;
 
FFT fft;                                 // Fourier transform of the sound signal
int NUM_BANDS = 256;
float baseLine;                          // Position of the baseline.
 
void setup()
{
  size(532, 250);
  background(4, 60, 5);
  baseLine = 20;

 
// Link to the computer's mic
AudioIn sound;
sound = new AudioIn(this, 0);
sound.start();
 
  // Tell the Fast Fourier Transformer to process the song file.
  fft = new FFT(this, NUM_BANDS);
  fft.input(sound);
}
 
void draw()
{
  // Draw a dark green slightly transparent background
  noStroke();
  fill(4, 60, 5, 5);
  rect(0, 0, width, height);
 
  // Draw bright green lines to represent volume
  stroke(142, 187, 82);
  strokeWeight(2);
 
  fft.analyze();    // Analyse the current sound being played.
 
  // Loop through each item in the FFT spectrum to create a line that shows its profile:
  beginShape();
  for (int i=0; i<fft.spectrum.length*0.4; i=i+1)
  {
    float xPos = map(i, 0, fft.spectrum.length*0.4, 10, width-10);
    float yPos = map(sqrt(fft.spectrum[i]), 0, 1, baseLine, baseLine-height*0.7);
    vertex(xPos, yPos);
  }
  endShape();
 
  // Move the baseline down the screen every frame until it gets to bottom.
  baseLine++;
  if (baseLine > height-10)
  {
    baseLine = 20;
  }
}