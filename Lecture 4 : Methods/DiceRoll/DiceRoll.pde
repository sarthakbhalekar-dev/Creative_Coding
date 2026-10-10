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
 
    if (randomDiceRoll >= 0 && randomDiceRoll < 1)
    {
    message = "ONE";
    }
 
    if (randomDiceRoll >= 1 && randomDiceRoll < 2)
    {
    message = "TWO";
    }
 
    if (randomDiceRoll >= 2 && randomDiceRoll < 3)
    {
    message = "THREE";
    }

    if (randomDiceRoll >= 3 && randomDiceRoll < 4) 
    {
    message = "FOUR";
    }

    if (randomDiceRoll >= 4 && randomDiceRoll < 5) 
    {
    message = "FIVE";
    }

    if (randomDiceRoll >= 5 && randomDiceRoll < 6) 
    {
    message = "SIX";
    }

    textFont(myFont);
    text(message, width/2, height/2);
    
}