//Heads or Tails

float randomNumber;
PFont myFont;
void setup()
{
  size(200, 200);
  fill(0);
  textSize(48);
  textAlign(CENTER);

  // Initialise randomNumber between 0 and 2
  randomNumber = random(2);

  myFont = createFont("Optima-Bold", 48);
}

void draw()
{
  background(255);

  if (randomNumber < 1) {
    String message1 = "HEADS";
    textFont(myFont);
    text(message1, width/2, height/2);
  } else
  {
    String message2 = "TAILS";
    textFont(myFont);
    text(message2, width/2, height/2);
  }
}
