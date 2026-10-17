PImage bombFrames[];
int bombFrameCount;

PImage explosion;

void setup() {
  size(800, 400);
  frameRate(8);

  bombFrameCount = 11;
  bombFrames = new PImage[bombFrameCount];
  for (int i = 0; i < bombFrameCount; i++) {
    bombFrames[i] = loadImage("bomb_" + i + ".png");
  }

  explosion = loadImage("explosion.png");
  imageMode(CENTER);
}

void draw() {
  background(255);
  
  // Convert frameCount to a 0-based frame index
  int frame = frameCount - 1;
  int totalFrames = bombFrameCount + 2; // 11 bomb frames + 2 explosion frames
  
  // Use modulo (%) to continuously loop the animation
  int currentFrame = frame % totalFrames;

  if (currentFrame < bombFrameCount) {
    image(bombFrames[currentFrame], width/2, height/2, 250, 250);
  } else {
    image(explosion, width/2, height/2, 250, 250);
  }
}