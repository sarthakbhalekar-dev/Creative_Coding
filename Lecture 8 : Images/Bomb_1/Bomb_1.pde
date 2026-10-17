PImage img;
ArrayList<PVector> clicks;

boolean needsSaving;

void setup() {
  size(600, 600);                     // Reduced canvas size from 1000x1000 to 600x600
  imageMode(CENTER);                  
  img = loadImage("Bomb.png");       

  clicks = new ArrayList<PVector>();
  needsSaving = false;
}

void draw() {
  background(255);
  
  // Scale down target size to 380px to fit proportionally inside the 600x600 canvas
  float targetSize = 380;
  float drawW, drawH;
  
  if (img.width > img.height) {
    drawW = targetSize;
    drawH = targetSize * ((float) img.height / img.width);
  } else {
    drawH = targetSize;
    drawW = targetSize * ((float) img.width / img.height);
  }

  // Draw centered without distortion
  image(img, width/2, height/2, drawW, drawH);

  for (int i = 0; i < clicks.size(); i++) {
    PVector click = clicks.get(i);
    
    fill(255);
    noStroke();
    circle(click.x, click.y, 22);

    drawSparkles(click.x, click.y, 18);
  }

  if (needsSaving) {
    String filename = "bomb_" + (clicks.size() - 1) + ".png";
    save(filename);
    println("Saved frame: " + filename);
    needsSaving = false;
  }
}

void mousePressed() {
  PVector click = new PVector(mouseX, mouseY);
  clicks.add(click);
  needsSaving = true;
}

void drawSparkles(float x, float y, float size) {
  noStroke();

  for (int i = 0; i < 30; i++) {
    float sx = x + random(-size/2, size/2);
    float sy = y + random(-size/2, size/2);
    fill(255, random(120, 220), 0, random(180, 255));
    circle(sx, sy, random(1.5, 4));
  }
  
  fill(255, 200, 50);
  circle(x, y, 6);
  fill(255, 255, 200);
  circle(x, y, 3);
}

void keyPressed() {
  if (key == 'z' || key == 'Z') {
    if (clicks.size() > 0) {
      clicks.remove(clicks.size() - 1);
    }
  } else if (key == 'c' || key == 'C') {
    clicks.clear();
  }
}