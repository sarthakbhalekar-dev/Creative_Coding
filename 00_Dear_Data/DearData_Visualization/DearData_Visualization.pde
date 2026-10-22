// My Balcony Diary

void setup() {
  size(600, 400);
  noLoop();
}

void draw() {
  background(135, 190, 230); // Sky

  // Clouds
  noStroke();
  fill(245);
  ellipse(130, 90, 100, 45);
  ellipse(175, 80, 90, 55);
  ellipse(215, 95, 100, 40);

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
  text("My Balcony Diary — First Experiment", 20, 35);
}