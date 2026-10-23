//Ordered Keyboard

// -- Create a variable to store the font
PFont myFont;

// -- global variable - used to count keypresses and position text
int p = 0;  // -- this is the horizontal position of the text along the canvas

void setup() {
  size(400, 400);
  background(255); // Changed to white background
  fill(0);         // Changed to black text

  // Set up the custom font
  myFont = createFont("MarkerFelt-Wide", 24);
  textFont(myFont);
}

// -- do nothing in the draw loop for now!
void draw() {
  // -- repeats 60 times per second and does nothing other than 'listen' for a keyPress
}

void keyPressed() {
  // Increased from 12 to 20 to give this wider font some breathing room!
  p += 20;

  // -- put the char held in 'key' at a screen position based on p
  // Increased line height multiplier from 24 to 30 to fit the new font size
  text(key, p % width, 100 + 30 * int(p / width));
}
