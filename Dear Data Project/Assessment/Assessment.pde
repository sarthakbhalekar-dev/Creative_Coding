// My Balcony Diary
// Music Credit : "Soft Piano" by AtlasMusic

import processing.sound.*; // Import the Sound library

PFont myFont;
SoundFile bgMusic;

Table logTable;
int currentRow = 0;

boolean isNight = false;
float cloudX = 130; // Starting X position for the primary cloud segment
float cloudSpeed = 0.5; // Controls how fast the cloud moves

void setup() {
  size(600, 400);
  myFont = createFont("Zapfino", 16);

  // Load and play background music loop
  bgMusic = new SoundFile(this, "SoftPiano.mp3");
  bgMusic.loop();
  bgMusic.amp(0.6); // Set volume (0.0 to 1.0)

  // Logging the observations from the CSV file
  logTable = loadTable("Observations.csv", "header");
}

void draw() {

  TableRow row = logTable.getRow(currentRow);
  String sky = row.getString("Sky");
  String lights = row.getString("Lights");
  int day = row.getInt("Day");
  int timeMin = row.getInt("Time_Min");

  if (sky.contains("Night")) {
    background(20, 25, 60);
  } else if (sky.contains("Dawn") || sky.contains("Dusk")) {
    background(210, 120, 90);
  } else if (sky.equals("Sunny") || sky.equals("Clear")) {
    background(135, 190, 230);
  } else {
    background(160, 175, 185);
  }

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
  fill(isNight ? 220 : 30); // Adjust text color for contrast at night
  textSize(18);
  textFont(myFont);
  text("London Through My Window.", 20, 35);
}

// Custom function to draw the combined cloud relative to (x, y)
void drawCloud(float x, float y) {
  noStroke();
  fill(isNight ? 180 : 245); // Darken cloud slightly at night
  ellipse(x, y, 100, 45);
  ellipse(x + 45, y - 10, 90, 55);
  ellipse(x + 85, y + 5, 100, 40);
}

void mousePressed() {
  isNight = !isNight; // Toggle between day and night
}
