PImage img;
int s = 5;
 
void setup() {
  size(640, 480);
  img = loadImage("Holiday.png");
  rectMode(CENTER);
  background(127);
  noStroke();
}
 
void draw() {                           // -- Adds a bit of randomness!
  int rX = int(random(-25, 25));       // -- integer from -25 to 25 : x offset
  int rY = int(random(-25, 25));       // -- integer from -25 to 25 : y offset
  int mX = mouseX+rX;                   // -- Add some randomness around mouse X position.
  int mY = mouseY+rY;                   // -- Add some randomness around mouse Y position.
  color c = img.get(mX, mY);            // -- Get colour from 'img' at cell mX, mY.
  fill(c);                              // -- Set fill to this colour.
  rect(mX, mY, s, s);                   // -- Then draw coloured rect at mX,mY.
}