// -- Exploring Methods and Classes with Robots

//-- Add code fom the 'notes' tab depending on which class of Robot you are trying!

// -- global variables
float x, y;
float wide, high;
float eyeD, eyeR, mLong, mDown;


void setup () {

  size(400, 400);
  rectMode(CENTER);  // <-- look this up to see what the rectMode() method does

  // -- variable values set here to pass to drawRobot();
  x = 120;
  y = 200;

  wide = 50;
  high = 40;
  eyeD = 60;
  eyeR = 15;
  mLong = 95;
  mDown = 30;


}

// -- This is the draw() loop of the main sketch:
void draw() {
  background(250);

}


// -- drawRobot method:
void drawRobot (float x, float y, float headWide, float headHigh,
  float eyeDist, float eyeRad, float mouthLong, float mouthDown) {

  // -- draw the head with the rect() method:
  noStroke();
  fill(220);
  rect(x, y, headWide, headHigh);

  // -- draw the eyes with the circle() method:
  fill(32);
  circle(x-eyeDist/2, y, eyeRad);
  circle(x+eyeDist/2, y, eyeRad);

  // -- draw the mouth with the line() method():
  stroke(32);
  strokeWeight(3);
  line(x-mouthLong/2, y+mouthDown, x+mouthLong/2, y+mouthDown);
}
