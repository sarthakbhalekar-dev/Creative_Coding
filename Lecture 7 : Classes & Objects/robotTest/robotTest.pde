// Global robot instances
RobotMk4 r2d1, r2d2, r2d3;

void setup() {
  size(800, 800);
  rectMode(CENTER);

  // Global properties initialized before instantiation
  float wide = 140;
  float high = 60;
  float x = width / 2;
  float y = height / 2;

  // Instantiate Mark 4 robots with initial positions and sizes
  r2d1 = new RobotMk4(x, y, wide, high);
  r2d2 = new RobotMk4(200, 100, wide, high);
  r2d3 = new RobotMk4(580, 100, wide, high);
}

void draw() {
  background(250);

  // Update and render robots
  r2d1.draw();
  r2d1.move();

  r2d2.draw();
  r2d2.move();

  r2d3.draw();
  r2d3.move();
}

void keyPressed() {
  // Press 's' to save a screenshot with a unique 5-digit filename
  if (key == 's' || key == 'S') {
    int fiveDigitInt = int(random(11111, 99999));
    String fileName = "robotSketch." + fiveDigitInt + ".png";
    save(fileName);
    println("Saved canvas to: " + fileName);
  }
}