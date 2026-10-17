PVector[] clickedPoints; // -- An array to store all clicked positions.
int next;                // -- An integer to store the index of the next free (empty) position in the clickedPoints array
 
void setup()
{
  size(400,400);
  stroke(150,74,50);
  fill(150,74,50);
  strokeWeight(6);
 
  // -- Initialise the array with room for 5 points:
  clickedPoints = new PVector[5];
  // -- Add the sketch centre as first point - we are initialising the first element (index 0):
  clickedPoints[0] = new PVector(width/2,height/2);
  // -- Increment the position of the next free element by one:
  next = 1; 
}
 
void draw()
{
  background(243,142,45);
 
  // -- Loop through the elements of the array that contain values:
  for (int i = 0; i < next; ++i)
  {
    PVector p = clickedPoints[i];   // -- Store the PVector at the current index in a new local PVector.
    circle(p.x,p.y,12);             // -- Use the fields in this PVector as the centre of a circle.
    line(p.x,p.y,mouseX,mouseY);  // -- Use the fields in this PVector as the start of a line (that ends at the cursor).
  }
}
 
// -- When the mouse is pressed ...
void mousePressed()
{
  // -- If we have still got room left in our 'clickedPoints' array ...
  if (next < clickedPoints.length) {
    // -- Add a new PVector to the array at the 'next' free position:
    clickedPoints[next] = new PVector(mouseX,mouseY);  
 
    // -- Increment the next free position by one:
    next = next + 1; 
  }
}