void setup()
{
  size(400, 300);
}
 
void draw()
{
  background(18, 48, 193);
 
  if (mouseY < height/2)
  {
    if (mouseX < width/2)
    {
      fill(255,0,0); 
    } 
    else
    {
      fill(0,255,0); 
    }
    ellipse(mouseX, mouseY, 80, 80);
  } 
  else{
  if (mouseX > width/2){
    fill(0,0,255);  
    rectMode(CENTER);
    rect(mouseX, mouseY, 80, 80);
  }
  else{
    fill(255,255,0); 
    rectMode(CENTER);
    rect(mouseX, mouseY, 80, 80);

  }
}
}
