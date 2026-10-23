boolean shake = false;  // -- Do we want the rectangles to jitter?
 
void setup()
{
  size(860, 200);
}
 
void draw()
{
  background(255);
  noStroke();
  fill(0, 0, 200, 100); // -- Semi-transparent blue
   
  if (!shake) {
    randomSeed(224846);  // -- The number here is not important
  }
 
  float xPos   = 40;
  float yPos   = 50;
  float sSize  = 90;
  // -- Make random range dependent upon x position of mouse
  float rnd    = map(mouseX, 0, width, 0,sSize);
 
  for (int i=0; i<8; i=i+1)
  {
    quad(xPos         + random(-rnd, rnd), yPos         + random(-rnd, rnd),
         xPos + sSize + random(-rnd, rnd), yPos         + random(-rnd, rnd),
         xPos + sSize + random(-rnd, rnd), yPos + sSize + random(-rnd, rnd),
         xPos         + random(-rnd, rnd), yPos + sSize + random(-rnd, rnd));
 
    xPos = xPos + 100;
  }
}
 
void mouseClicked () {
  shake = !shake;  // <-- change the boolean value to the inverse on a mouse click 
}