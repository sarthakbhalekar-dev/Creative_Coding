void setup() {
  size(600, 600);
}

void draw() {

  // Setting White Background
  background(255);

  // Centre Variables
  float centreX = width/2;
  float centreY = height/2;

  // 1. White Circle with Red Outline
  stroke (220, 36, 31); // Red Colour
  strokeWeight(50);   // Thick Outline
  circle(centreX, centreY, 350);

  // 2. Blue Bar
  noStroke();
  fill(0, 25, 168);  // Blue Colour
  rectMode (CENTER); // Align Rectangle to Center
  rect(centreX, centreY, 480, 90);

  // 3. Text
  String sign = "UNDERGROUND";
  fill (255);
  textAlign (CENTER, CENTER);
  textSize(50);
  text(sign, centreX, centreY);
}
