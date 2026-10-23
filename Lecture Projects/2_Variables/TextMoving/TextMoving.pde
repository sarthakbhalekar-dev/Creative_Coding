//Text Moving

float xPosition;
float yPosition;

void setup()
{
  size(600, 500);
  fill(0);
  textSize(48);

  xPosition = width/2;
  yPosition = height/2;
}

void draw()
{
  background(255);
  String message = "Hello! c:";
  text(message, xPosition, yPosition);

  xPosition = xPosition - 2;
  yPosition = yPosition - 1;
}
