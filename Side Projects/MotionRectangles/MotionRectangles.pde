// Motion Rectangles
                     
float mouseXDiv = 1;           // <-- change number that mouseY is divided by
float mouseYDiv = 1;           // <-- change number that mouseX is divided by
float rectRatio  = 0.5;        // <-- change the aspect ratio of the rectangle
float widthFactor = 5;         // <-- change the speed at which the rectangle changes size
float framesPerSecond = 60;    // <-- change frameRate from 1-60
                     
                     
void setup() {
  size(400, 300);
  background(255, 236, 149);  // <-- change each of the colour components between 0 and 255
  fill(203, 118, 122);        // <-- change each of the colour components between 0 and 255
}
                     
                     
void draw() {
  frameRate(framesPerSecond);  // -- sets number of frames per second.
                     
  // -- calculate position and dimensions of rectangle depending on global variables:
  float x = mouseX / mouseXDiv;
  float y = mouseY / mouseYDiv;
  float rectWidth = frameCount / widthFactor;
  float rectHeight = rectWidth * rectRatio;
                     
  // -- draw a rectangle at x,y with the specified height and width:
  rectMode(CENTER);
  rect(x, y, rectWidth, rectHeight);
}