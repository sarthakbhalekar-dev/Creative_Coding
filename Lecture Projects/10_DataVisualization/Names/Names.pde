String[] names;

void setup()
{
  size(800, 500);
  fill(64);
  textSize(16);

  names = loadStrings("NameData.txt");
}

void draw()
{
  background(255);

  for (int lineNum=0; lineNum<names.length; lineNum++) {

    String []toks = split(names[lineNum],",");
    float len = float(toks[3]);

    // 1. Draw rectangle on the right (X = 200)
    fill(255, 128, 64, 128);
    rect(200, 20 + lineNum * 22, map(len, 0, 3000, 0, width/2), 18);

    // 2. Draw text on the left (X = 20) with aligned baseline
    fill(32);
    textAlign(LEFT, TOP); // Aligns text to top edge so it matches rect()
    text(toks[0], 20, 20 + lineNum * 22);
  }

  noLoop();
}