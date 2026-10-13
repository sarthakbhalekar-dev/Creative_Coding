PImage img;                 // -- Declare a new PImage called 'img', which is a better name for the PImage object
 
void setup() {
  size(660, 370);
  img = loadImage("Smithsonian.png");    // -- You'll need to add the image to load here - something in your sketch folder ...
  image(img, 0, 0);        // -- draws the content of the image on the canvas
  strokeWeight(5);         // --   at a position given by the 2nd and 3rd arguments
  stroke(255,128);         // --   (0, 0) in this case
}
 
void draw() {
  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX,mouseY);
  }
}
 
void keyPressed () {
  save("myImage.jpg");   // -- Save an image of the current canvas
                          // -- to the sketch folder in a file called myImage.jpg ...
}
