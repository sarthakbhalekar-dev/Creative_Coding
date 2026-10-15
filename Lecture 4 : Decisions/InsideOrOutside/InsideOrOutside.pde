//Inside or Outside

float x, y;


void setup() {
  size(200, 300);
  x= random(0, width);
  y= random(0, height);
}

void draw() {
  fill (255);
  circle(x, y, 50);

  rectMode(CENTER);
  fill(255);
  rect(x, y, 130, 20);
}
