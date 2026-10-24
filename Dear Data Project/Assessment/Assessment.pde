// My Balcony Diary
PFont myFont;

boolean isNight = false;

void setup() {
  size(600, 400);
  noLoop();

  myFont = createFont("Zapfino", 16);
  
}

void draw() {

  if (isNight) {
    background(0, 0, 128); // Night Sky
  } else {
    background(135, 190, 230); // Day Sky
  }

  // Clouds
  noStroke();
  fill(245);
  ellipse(130, 100, 100, 45);
  ellipse(175, 90, 90, 55);
  ellipse(215, 105, 100, 40);

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

void mousePressed(){
  isNight = !isNight; // Toggle between day and night
  redraw(); // Redraw the scene with the new background
}