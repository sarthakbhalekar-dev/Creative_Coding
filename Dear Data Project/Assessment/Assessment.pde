// My Balcony Diary - London Through My Window
// Music Credit : "Soft Piano" by AtlasMusic

//Imported the Sound Library
import processing.sound.*;
SoundFile bgMusic;

// Font Variable
PFont myFont;

// Table (Observations.csv)
Table logTable;
int currentRow = 0;
boolean draggingSlider = false;
float sliderLeft = 40;
float sliderRight = 560;

// Cloud variables - Starting Position and Speed
float cloudX = 130;
float cloudSpeed = 0.5;


void setup() {
  size(600, 450);

  // Load & Play Music (Loop)
  bgMusic = new SoundFile(this, "SoftPiano.mp3");
  bgMusic.loop();
  // Set Volume to 60% of the Original Audio
  bgMusic.amp(0.6);

  // Created Font
  myFont = createFont("Zapfino", 16);

  // Load the CSV File
  logTable = loadTable("Observations.csv", "header");
}

void draw() {


  // Read Row Values from CSV File

  TableRow row = logTable.getRow(currentRow);
  // Adding Sky
  String sky = row.getString("Sky");
  //Adding Lights
  String lights = row.getString("Lights");
  //Adding Day
  int day = row.getInt("Day");
  //Adding Time_Min
  int timeMin = row.getInt("Time_Min");


  // 1. Dynamic Background Color According to Data (Needs More Modficiation)
  if (sky.contains("Night")) {
    background(20, 25, 60); // Dark Blue (Needs Some Stars!)
  } else if (sky.contains("Dawn") || sky.contains("Dusk")) {
    background(210, 120, 90); // Warm Orange (Needs Some...Dynamic Colors?)
  } else if (sky.equals("Sunny") || sky.equals("Clear")) {
    background(135, 190, 230); // Daylight Blue
  } else {
    background(160, 175, 185); // Overcast Gray
  }

  // 2. Draw & Move the Cloud (Needs More Clouds?)
  drawCloud(cloudX, 100, sky);
  cloudX += cloudSpeed;

  // Reset Cloud Position (Similar to Next Station is Angel..)
  if (cloudX > width + 100) {
    cloudX = -150;
  }

  // 3. Building (Needs More Structure?)
  fill(65, 70, 80);
  rect(230, 150, 140, 250);

  // 4. Window Lights (Need More Windows!)
  if (lights.equals("On")) {
    fill(255, 220, 100); // Bright Yellow
  } else {
    fill(80, 85, 95);    // Dark Grey
  }

  // Only 4 Windows...
  rect(250, 180, 30, 40);
  rect(320, 180, 30, 40);
  rect(250, 250, 30, 40);
  rect(320, 250, 30, 40);

  // 5. Data Display Text
  // Heading
  fill(sky.contains("Night") ? 220 : 30); // Contrast Text Based on Background
  textSize(18);
  textFont(myFont);
  text("My Balcony Diary", 20, 35);

  // Observation Date (Bottom)
  textSize(14);
  text("Day: " + day + " | Time: " + formatTime(timeMin) + " | Sky: " + sky, 20, 380);

  // 6. Slider to Navigate Through The Observations
  float sliderY = 415;

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
  fill(sky.contains("Night") ? 220 : 30);
  textSize(12);
  text("Observation " + (currentRow + 1) + " / " + logTable.getRowCount(),
    40, 440);
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
  if (mouseY >= 400 && mouseY <= 430) {
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
