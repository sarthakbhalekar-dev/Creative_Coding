// -- Global variables to hold our color values
int r = 255; // Start with red
int g = 0;
int b = 0;

void setup() {
  size(400, 400);
  rectMode(CENTER); // Draws the rectangle from the center
}

void draw() {
  // A light yellow background to match the screenshot
  background(255, 255, 200);
  
  // Set the fill using our global variables
  fill(r, g, b);
  
  // Draw the rectangle in the middle of the screen
  rect(width/2, height/2, 200, 200);
}

void keyPressed() {
  // Check which key is pressed and change r, g, b accordingly
  if (key == 'r' || key == 'R') {
    r = 255;
    g = 0;
    b = 0;
  } 
  else if (key == 'g' || key == 'G') {
    r = 0;
    g = 255;
    b = 0;
  } 
  else if (key == 'b' || key == 'B') {
    r = 0;
    g = 0;
    b = 255;
  }
}