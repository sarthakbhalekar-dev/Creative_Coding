String textLine;
 
void setup()
{
    size(250,700);
    textSize(10);
    textLine = "The night came like the turning out of a lamp, and in another moment came tomorrow. The laboratory grew faint and hazy, then fainter and ever fainter. Tomorrow night came black, then day again, night again, day again, faster and faster still. An eddying murmur filled my ears, and a strange, dumb confusedness descended on my mind.";
}
 
void draw()
{
    background(255);
    float yPos = 18;
 
    String[] tokens = split(textLine," ");
 
    for (String token : tokens)
    {
        fill(random(50,200),random(50,200), random(50,200));
        text(token,10,yPos);
        yPos = yPos+12;
    }
 
    noLoop();    // Stops the draw() loop from repeating.
}