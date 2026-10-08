boolean isYellow = false;

// -- set up the things that don't change ...
void setup() {
  size(400, 400);
  background(220);
  textSize(18);
  fill(64);
  frameRate(5);
}

// -- nothing in here for now - an empty draw loop ...
void draw() {
  // -- this still runs 60 times per second!
  if (isYellow) {
    background(255, 255, 32);
  } else {
    background(220);
  }
  text(key, random(20, width-20), random(20, height-20));
}

// -- Processing calls this method whenever a key is pressed:
void keyPressed() {
  // -- put the value of 'key' in a random position on the canvas (but not near the edge):
  if (key == 'y'|| key == 'Y') {
    isYellow = true;
  } else {
    isYellow = false;
  }
}
