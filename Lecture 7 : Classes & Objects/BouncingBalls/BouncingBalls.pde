Ball[] balls = new Ball[20];

void setup() {
  size(400, 300);

  for (int i = 0; i < balls.length; i++) {
    PVector startPos = new PVector(width / 2, height / 2);
    PVector startVel = new PVector(random(-3, 3), random(-3, 3));
    float r = random(10, 20);
    color c = color(random(100, 255), random(100, 255), random(100, 255));

    balls[i] = new Ball(startPos, startVel, r, c);
  }
}

void draw() {
  background(254, 244, 232);

  for (Ball b : balls) {
    b.display();
    b.update();
    b.checkEdges();
  }
}