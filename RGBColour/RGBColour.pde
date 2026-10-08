void setup() {
  // Setting Canvas Size
  size(256, 256);
  noStroke();
}

void draw() {
  // Use mouse positions directly as RGB values (0 to 255)
  color rectColor = color(mouseX, mouseY, 150);
  
  background(220);
  fill(rectColor);
  
  // Draw a rectangle in the center of the canvas
  rect(50, 50, 156, 156);
}
