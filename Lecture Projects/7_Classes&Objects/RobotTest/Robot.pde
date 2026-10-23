class RobotMk4 {
  float x, y;
  float wide, high;

  RobotMk4(float x, float y, float wide, float high) {
    this.x = x;
    this.y = y;
    this.wide = wide;
    this.high = high;
  }

  void draw() {
    // Draw robot head
    fill(200);
    stroke(0);
    strokeWeight(1);
    rect(x, y, wide, high);

    // Eye animation: Blinks every 60 frames
    fill(32);
    if (frameCount % 60 < 5) {
      line(x - 8, y - 2, x - 4, y - 2);
      line(x + 8, y - 2, x + 4, y - 2);
    } else {
      circle(x - 6, y - 2, 4);
      circle(x + 6, y - 2, 4);
    }

    // Draw mouth
    line(x - 10, y + 6, x + 10, y + 6);
  }

  void move() {
    // Stuttering jitter movement capped near the canvas bottom
    this.y += random(-1, 2);
    this.y = constrain(this.y, 0, height - high / 2 - 5);
  }
}