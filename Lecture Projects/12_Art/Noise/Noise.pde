void setup()
{
  size(400,400);
  fill(0,0,100);
  noStroke();
}
  
void draw()
{
  background(255);
  
  float smoothness = 0.05;   // Try changing this number between 0 and 1.
   
  // -- After you have run the sketch, try this interaction and move the cursor : 
  // -- frameCount is not changing here, just the extent to which each subsequent noise() value is related to the previous one:
  // smoothness = map(mouseX, 0,width, 0,0.05);
 
  float xPos = noise(frameCount*smoothness,0)*width;
  float yPos = noise(frameCount*smoothness,1)*height;
  circle(xPos,yPos,50);
}