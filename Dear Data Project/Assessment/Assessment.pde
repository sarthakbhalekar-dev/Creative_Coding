// My Balcony Diary - London Through My Window
// Music Credit : "Soft Piano" by AtlasMusic

import processing.sound.*;

// Variables
SoundFile bgMusic;

PFont myFont;
PFont dataFont;

Table logTable;
int currentRow = 0;
boolean draggingSlider = false;
float sliderLeft = 40;
float sliderRight = 560;

float cloudX = 130;
float cloudSpeed = 0.5;

// Setup
void setup() {
  size(600, 450);
  bgMusic = new SoundFile(this, "SoftPiano.mp3");
  bgMusic.loop();
  bgMusic.amp(0.6);

  myFont = createFont("Zapfino", 16);
  dataFont = createFont("Avenir", 14);

  logTable = loadTable("Observations.csv", "header");
}

// Draw
void draw() {

  // Read Row Values from CSV File

  TableRow row = logTable.getRow(currentRow);
  String sky = row.getString("Sky");
  String lights = row.getString("Lights");
  int day = row.getInt("Day");
  int timeMin = row.getInt("Time_Min");
  String street = row.getString("Street");


  // 1. Dynamic Sky Gradient
  drawSky(sky);

  // 2. Draw & Move the Cloud
  drawCloud(cloudX, 190, sky);
  cloudX += cloudSpeed;
  // Reset Cloud Position When It Moves Off-Screen
  if (cloudX > width + 100) {
    cloudX = -150;
  }

  // 3. Building Structure
  noStroke();
  // Main Building
  fill(65, 70, 80);
  rect(230, 150, 140, height - 150);
  // Building Roof
  fill(50, 55, 65);
  rect(225, 140, 150, 15);

  // 4. Window Lights
  for (int floor = 0; floor < 5; floor++) {
    for (int column = 0; column < 3; column++) {

      int windowX = 245 + column * 40;
      int windowY = 170 + floor * 55;

      // Window Frame
      fill(35, 40, 50);
      rect(windowX - 2, windowY - 2, 29, 34);
      // Window Light
      if (lights.equals("On")) {
        fill(255, 220, 120);
      } else {
        fill(95, 110, 125);
      }
      rect(windowX, windowY, 25, 30);
      // Window Divider
      stroke(45, 50, 60);
      strokeWeight(2);
      line(windowX + 12, windowY,
        windowX + 12, windowY + 30);
      noStroke();
    }
  }

  // 5. Data Display Text

  // Title
  textFont(myFont);
  textSize(18);
  textAlign(LEFT);
  fill(sky.contains("Night") ? 235 : 30);
  text("My Balcony Diary", 20, 35);

  // Observation Details
  textFont(dataFont);
  textSize(12);
  textAlign(CENTER);
  fill(sky.contains("Night") ? 235 : 30);

  text("Day: " + day
    + "  |  Time: " + formatTime(timeMin)
    + "  |  Sky: " + sky
    + "  |  Street: " + street, width / 2, 68);

  // 6. Slider to Navigate Through The Observations
  float sliderY = 95;

  // Draw the Slider Track
  stroke(100);
  strokeWeight(4);
  line(sliderLeft, sliderY, sliderRight, sliderY);
  // Map Current Observation to the Slider's Position
  float sliderX = map(currentRow, 0, logTable.getRowCount() - 1,
    sliderLeft, sliderRight);
  // Draw the Slider's Handle
  noStroke();
  fill(255, 180, 70);
  ellipse(sliderX, sliderY, 18, 18);
  // Display Current Observation Number
  textFont(dataFont);
  textAlign(CENTER);
  textSize(12);
  fill(sky.contains("Night") ? 235 : 30);

  text("Observation " + (currentRow + 1)
    + " / " + logTable.getRowCount(), width / 2, 125);
}

//Custom Methods

// Convert the Mouse's Horizontal Position into a CSV row
void updateSlider() {
  float sliderPosition = constrain(mouseX, sliderLeft, sliderRight);

  currentRow = round(map(sliderPosition, sliderLeft, sliderRight,
    0, logTable.getRowCount() - 1)); // Zero Based Indexing
}

// Draw the Combined Cloud relative to (x, y)
void drawCloud(float x, float y, String sky) {
  noStroke();
  fill(sky.contains("Night") ? 180 : 245); // Darken Cloud at Night
  ellipse(x, y, 100, 45);
  ellipse(x + 45, y - 10, 90, 55);
  ellipse(x + 85, y + 5, 100, 40);
}

// Slider Interaction (By The User)
void mousePressed() {
  if (mouseY >= 80 && mouseY <= 110) {
    draggingSlider = true;
    updateSlider();
  } else {
    currentRow = (currentRow + 1) % logTable.getRowCount(); // Due to Zero Based Indexing
  }
}

// Update Observation while Dragging
void mouseDragged() {
  if (draggingSlider) {
    updateSlider();
  }
}

// Stop Dragging when Mouse is Released
void mouseReleased() {
  draggingSlider = false;
}

// Convert Minutes to Readable Time
String formatTime(int minutes) {
  int hours = minutes / 60;
  int mins = minutes % 60;

  return nf(hours, 2) + ":" + nf(mins, 2);
}


// Draw Sky Gradient Based on the Sky Condition
void drawSky(String sky) {
  color topColor;
  color bottomColor;

  if (sky.contains("Night")) {
    topColor = color(10, 15, 45);
    bottomColor = color(65, 70, 110);
  } else if (sky.equals("Dusk") || sky.equals("Dawn")) {
    topColor = color(75, 85, 155);
    bottomColor = color(255, 155, 95);
  } else if (sky.equals("Sunny") || sky.equals("Clear")) {
    topColor = color(65, 145, 220);
    bottomColor = color(195, 225, 250);
  } else {
    topColor = color(95, 110, 135);
    bottomColor = color(195, 200, 205);
  }

  // Draw Horizontal Lines to Create the Gradient
  for (int y = 0; y < height; y++) {
    float amount = map(y, 0, height - 1, 0, 1);
    color blended = lerpColor(topColor, bottomColor, amount);

    stroke(blended);
    line(0, y, width, y);
  }

  noStroke();
}