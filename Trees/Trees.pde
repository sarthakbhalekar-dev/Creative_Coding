void setup()
{
  size(400, 400);
  noStroke();
}
 
void draw()
{
  color skyColour    = color(220, 110, 230);
  color groundColour = color(215, 250, 50);
  color leafColour   = color(250, 150, 50);
  color trunkColour  = color(95, 57, 26);
 
  background(skyColour);
  fill(groundColour);
  rect(0, height/2, width, height/2);
 
  float treeX = 100;
  float treeY = 180;
 
  // Draw first tree
  fill(trunkColour);
  rect(treeX, treeY, 20, 70);
  fill(leafColour);
  circle(treeX+10, treeY-30, 90);
 
  // Draw second tree to the right and down a bit
  treeX = treeX + 100;
  treeY = treeY + 30;
  fill(trunkColour);
  rect(treeX, treeY, 20, 70);
  fill(leafColour);
  circle(treeX+10, treeY-30, 90);
 
  // Draw third tree to the right and up a bit
  treeX = treeX + 100;
  treeY = treeY - 30;
  fill(trunkColour);
  rect(treeX, treeY, 20, 70);
  fill(leafColour);
  circle(treeX+10, treeY-30, 90);
}
