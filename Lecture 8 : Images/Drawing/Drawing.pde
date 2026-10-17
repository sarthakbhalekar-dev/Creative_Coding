PImage img;                 // -- Declare a new PImage called 'img'

void setup() {
  size(500, 600);
  imageMode(CENTER);
  img = loadImage("Bomb.png");    // -- Make sure Bomb.png is in your sketch's data folder
  
  // Center the image on the canvas
  image(img, width/2, height/2);  
  
  strokeWeight(5);         
  stroke(255, 128);         
}

void draw() {
  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void keyPressed() {
  save("myImage.jpg");   // -- Save an image of the current canvas to the sketch folder
}