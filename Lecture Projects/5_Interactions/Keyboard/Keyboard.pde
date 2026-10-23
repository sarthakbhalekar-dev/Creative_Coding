//Keyboard

// Create a variable to store the font
PFont myFont;

// -- set up the things that don't change ...
void setup() {
  size(400, 400);
  fill(0);

  // Set up the custom font at size 200
  myFont = createFont("MarkerFelt-Wide", 200);
  textFont(myFont);

  textAlign(CENTER, CENTER);  // (Pro-tip: adding a second CENTER perfectly centers it vertically too!)
}

// -- do these things 60 times per second ...
void draw() {

  // -- clear the canvas:
  background(255);              // Pure white background

  // -- show the value of the key variable in the middle of the canvas:
  text(key, width/2, height/2);
}
