// -- Global variables are declared first

// ball position
float xPos;
float yPos;

// peg positions
float peg1X, peg1Y;
float peg2X, peg2Y;
float peg3X, peg3Y;

// ball velocity
float vx;
float vy;

// ball size
float radius;

// peg size
float pegRadius;

void setup() {
  size(500, 400);
  textSize(48);

  radius = 15;
  pegRadius = 10;

  peg1X = 250;
  peg1Y = 200;

  peg2X = 70;
  peg2Y = height - 24;

  peg3X = width - 24;
  peg3Y = 70;

  xPos = 60;            
  yPos = 60;

  vx = 3;             
  vy = 1.5;
}

void draw() {
  background(255);

  fill(255, 0, 0);
  stroke(0);

  // -- Draw the pegs
  circle(peg1X, peg1Y, 2 * pegRadius);
  circle(peg2X, peg2Y, 2 * pegRadius);
  circle(peg3X, peg3Y, 2 * pegRadius);

  // -- Move the ball
  xPos = xPos + vx;
  yPos = yPos + vy;

  // -- Draw ball
  noStroke();
  fill(0, 0, 255);
  circle(xPos, yPos, 2 * radius);

  bounceOffWalls();

  // -- Check collisions with pegs using your new method!
  checkForPegCollision(peg1X, peg1Y);
  checkForPegCollision(peg2X, peg2Y);
  checkForPegCollision(peg3X, peg3Y);
}

void bounceOffWalls() {
  // -- Check rebounds against left and right walls
  if (xPos - radius < 0 || xPos + radius > width) {
    vx = -vx;
  }

  // -- Check rebounds against top and bottom walls
  if (yPos - radius < 0 || yPos + radius > height) {
    vy = -vy;
  }
}

void gameOver() {
  fill(0);
  textAlign(CENTER, CENTER);
  text("GAME OVER!", width/2, height/2);
  frameRate(0);
}

void checkForPegCollision(float x, float y) {
  if (dist(xPos, yPos, x, y) < radius + pegRadius) {
    gameOver();
  }
}