class Ball {
  PVector position;
  PVector velocity;
  float radius;
  color colour;

  Ball(PVector position, PVector velocity, float radius, color colour) {
    this.position = position.copy();
    this.velocity = velocity.copy();
    this.radius = radius;
    this.colour = colour;
  }

  void display() {
    noStroke();
    fill(colour);
    circle(position.x, position.y, 2 * radius);
  }

  void update() {
    position.add(velocity);
  }

  void checkEdges() {
    if (position.x - radius < 0 || position.x + radius > width) {
      velocity.x *= -1;
    }
    if (position.y - radius < 0 || position.y + radius > height) {
      velocity.y *= -1;
    }
  }
}