// Create a variable to store the current background color
color bgColor;
// Create a variable to store the font
PFont myFont; 

void setup() {
  size(400, 400);
  frameRate(5);
  
  // Set up the custom font (Size 48 to make it nice and visible)
  myFont = createFont("MarkerFelt-Wide", 48);
  textFont(myFont);
  
  // Set the text color to black
  fill(0);
  
  // Start with a default white background
  bgColor = color(255); 
}

void draw() {
  // Use our variable to set the background
  background(bgColor);
  
  // Draw the key character in a random spot
  text(key, random(30, width-30), random(40, height-30));
}

void keyPressed() {
  // Check which key was pressed and update the bgColor variable
  if (key == 'r' || key == 'R') {
    bgColor = color(255, 0, 0);       // Red
  } else if (key == 'g' || key == 'G') {
    bgColor = color(0, 200, 0);       // Green
  } else if (key == 'b' || key == 'B') {
    bgColor = color(0, 0, 255);       // Blue
  } else if (key == 'y' || key == 'Y') {
    bgColor = color(255, 255, 32);    // Yellow
  } else {
    bgColor = color(255);             // Default white for any other key
  }
}