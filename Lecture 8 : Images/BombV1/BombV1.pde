PImage img;
ArrayList<PVector>clicks;

boolean needsSaving;

void setup() {
  size (660, 370);
  img = loadImage("Bomb.jpg");

  clicks = new ArrayList<PVector>();
  
  needsSaving = false;
}

void draw() {
  background(255);
  image(img, 0, 0);


  for (int i=0; i<clicks.size(); i++) {
    PVector click = clicks.get(i);
    fill(255);
    noStroke();
    circle(click.x, click.y, 50);


    drawSparkles(click.x, click.y, 50);
  }
  
  if (needsSaving)
  save("bomb_"+(clicks.size()-1) + ".png");
}

void mousePressed() {
  PVector click = new PVector(mouseX, mouseY);
  clicks.add(click);
  needsSaving=true;
}

void drawSparkles(float x, float y, float size) {
  noStroke();

  for (int i = 0; i < 40; i++) {
    float sx = x + random(-size, size);
    float sy = y + random(-size, size);
    fill(255, random(100, 255), 0);
    circle(sx, sy, random(2, 8));
  }
}
