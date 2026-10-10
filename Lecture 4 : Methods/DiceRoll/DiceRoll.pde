float randomDiceRoll;
PFont myFont;
 
void setup()
{
    size(200, 200);
    fill(0);
    textSize(48);
    textAlign(CENTER);
 
    randomDiceRoll = random(6);
    myFont = createFont("Optima-Bold",48);
}
 
void draw()
{
    background(255);
    String message="";
 
if (randomDiceRoll < 1)
{
    message = "ONE";
}
else if (randomDiceRoll < 2)
{
    message = "TWO";
}
else if (randomDiceRoll < 3)
{
    message = "THREE";
}
else if (randomDiceRoll < 4)
{
    message = "FOUR";
}
else if (randomDiceRoll < 5)
{
    message = "FIVE";
}
else
{
    message = "SIX";
}

    textFont(myFont);
    text(message, width/2, height/2);
    
}