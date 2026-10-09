float[] diameters;        // -- Declare the array of floats
 
void setup()
{
  size(1000,200);
  fill(180,50,50,20);    // <-- optional 4th parameter to a colour is the opacity (0 transparent, 255 opaque) - change this!
  noStroke();
 
  diameters = new float[500];
  for (int i=0; i<diameters.length; i=i+1)
  {
    diameters[i] = random(i);    // < -- Each diameter is a random number between 1 and 50 - change this!
  }
}
 
void draw()
{
  background(255);
  float xPos = 0;
  
  diameters = new float[500];
  for (int i=0; i<diameters.length; i=i+1)
  {
    diameters[i] = random(i);    // < -- Each diameter is a random number between 1 and 50 - change this!
  }
 
  for (int i=0; i<diameters.length; i = i+1)
  {
    circle(xPos,100,diameters[i]);
    xPos = xPos + 2;
  }
}
