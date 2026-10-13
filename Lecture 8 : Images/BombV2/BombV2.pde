PImage bombFrames[];
int bombFrameCount;

PImage explosion;

void setup() {
  size(800, 400);
  frameRate(8);

  bombFrameCount = 11;
  bombFrames = new PImage[bombFrameCount];
  for (int i=0; i<bombFrameCount; i++)
    bombFrames[i] = loadImage("bomb_" + i + ".png");

  explosion = loadImage("explosion.png");
  imageMode(CENTER);
}

void draw() {
  background(255);
  if (frameCount< bombFrameCount)
    image (bombFrames[frameCount], width/2, height/2, 250, 250);
  else if (frameCount < bombFrameCount + 2)
    image (explosion, width/2,height/2, 250, 250);
}
