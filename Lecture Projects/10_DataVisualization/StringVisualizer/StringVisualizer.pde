String s = "A quiet astronomer meticulously observed an extraordinarily bright star. ";

char splitter = 's';

void setup() {
  size (1000, 1000);
  printArray(split(s, " "));
}

void draw() {
  background(64);
  int y = 50;
  for (String t : split(s, " ")) {
    text(t, 20, y);
    println(t.length());
    float len = t.length();
    fill(200, 160);

    len = map(len, 0, 10, 0, width-40);
    rect(20, y-20, len+20, 32);
    y+= 40;
  }
}

void keyPressed() {
  splitter = key;
}
