//Random Circles

float[] diameters;


void setup() {
  size(400, 200);
  fill(180, 50, 50, 100);
  noStroke();

  diameters= new float[5];
  diameters[0]=20;
  diameters[1]=40;
  diameters[2]=60;
  diameters[3]=40;
  diameters[4]=20;

  printArray(diameters);
  printArray(diameters.length);
}

void draw() {
  background(255);

  float xPos = 50;

  for (int i=0; i<diameters.length; i=i+1) {
    circle(50 + i*70, 100, diameters[i]);
    //xPos = xPos+70;
  }
}
