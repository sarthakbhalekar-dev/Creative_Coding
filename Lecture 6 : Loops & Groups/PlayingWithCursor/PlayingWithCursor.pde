//Playing with Cursor

float x, y, r;                                     // <-- variables define the shape
boolean isYellow, isRed, isInside, showMousePos;   // <-- variables capture the state

void setup () {
  size(600, 600);
  x = random(width*0.1, width*0.9); // <-- position in x is random, not at edge
  y = random(width*0.1, width*0.9); // <-- position in y is random, not at edge
  r = random(40, 80);                // <-- radius is random, not tiny, not huge
}

void draw () {
  background(250);
  // -- if inside : circle isOrange :
  if (dist(mouseX, mouseY, x, y)<r/2) {
    fill(255, 128, 32);
  } else {
    fill(240);
  }
  ellipse (x, y, r, r);
}

void mouseClicked() {
  // -- move ellipse - to mouseY,mouseX
  x = mouseX;
  y = mouseY;
  // -- if inside : isRed
  if (isInside) {
    isRed = true;
  }
}

void mousePressed() {
  // -- background isYellow
}

void mouseReleased() {
}

void mouseMoved() {
  // -- showMousePos
  println(mouseX, mouseY, millis());
  if (dist(mouseX, mouseY, x, y)<r/2) {
    isInside = true;
  } else {
    isInside = false;
  }
  // -- isInside?
}

void mouseDragged() {
  // -- move ellipse : to mouseX,mouseY
  x = mouseX;
  y = mouseY;
}
