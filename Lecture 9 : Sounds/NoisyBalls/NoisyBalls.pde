import processing.sound.*;

SoundFile blop;

Ball ball;

void setup()
{
  size(400, 300);
  ball = new Ball();
  blop = new SoundFile(this, "blop.wav");
}

void draw()
{
  background(254, 244, 232);
  ball.draw();
  ball.move();
  if (ball.rebound)
    blop.play();
}
