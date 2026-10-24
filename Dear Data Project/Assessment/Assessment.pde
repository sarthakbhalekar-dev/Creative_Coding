// My Balcony Diary
PFont myFont;

boolean isNight = false;
float cloudX = 130; // Starting X position for the primary cloud segment
float cloudSpeed = 0.5; // Controls how fast the cloud moves

void setup() {
  size(600, 400);
  // Removed noLoop() so draw() loops continuously
  myFont = createFont("Zapfino", 16);
}

void draw() {
  if (isNight) {
    background(0, 0, 128); // Night Sky
  } else {
    background(135, 190, 230); // Day Sky
  }

  // Draw and update moving cloud
  drawCloud(cloudX, 100);
  cloudX += cloudSpeed;

  // Reset cloud position when it moves completely off the right edge
  if (cloudX > width + 100) {
    cloudX = -150;
  }

  // Building
  fill(65, 70, 80);
  rect(230, 150, 140, 250);

  // Four illuminated windows
  fill(255, 220, 100);
  rect(250, 180, 30, 40);
  rect(320, 180, 30, 40);
  rect(250, 250, 30, 40);
  rect(320, 250, 30, 40);

  // Caption
  fill(30);
  textSize(18);
  textFont(myFont);
  text("London Through My Window.", 20, 35);
}

// Custom function to draw the combined cloud relative to (x, y)
void drawCloud(float x, float y) {
  noStroke();
  fill(245);
  ellipse(x, y, 100, 45);
  ellipse(x + 45, y - 10, 90, 55);
  ellipse(x + 85, y + 5, 100, 40);
}

void mousePressed() {
  isNight = !isNight; // Toggle between day and night
}