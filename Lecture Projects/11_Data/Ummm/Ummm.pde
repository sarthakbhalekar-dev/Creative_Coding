// -- An array of strings into which we will load our data file:
String [] dataFileRows;

// -- an empty ArrayList that will contain our Ummmm objects:
ArrayList<Ummmm> ummmms = new ArrayList<Ummmm>();

// -- colours for each of the lecturers:
color colJD, colGT, colGB;


void setup () {
  size(400, 500);
  rectMode(CENTER);
  textAlign(CENTER, BOTTOM);

  // -- specify the colours for JD, GT and GB:
  colJD = color(255, 128, 64, 200);
  colGT = color(64, 128, 255, 200);
  colGB = color(255, 128, 255, 200);

  // -- Read the data and create the objects:
  int thisRow = 0;

  dataFileRows = loadStrings("UmmmData.csv"); // <-- load the data from file

  for (String row : dataFileRows) {
    if (thisRow >0) {  // <-- ignore the first row - column headers, not data

      // -- Split the row at each comma and store the output in a new 'tokens' array:
      String [] tokens = split(row, ",");

      // -- use tokens array to grab data from the row to populate object:
      String name = tokens[0];
      String next = tokens[3];
      int day = int(tokens[1]);
      int min = int(tokens[2]);
      int bad = int(tokens[4]);
      int len = int(tokens[5]);
      // -- you need to know which column each data item is in in your inout file to do this!

      // -- create a new object of type Ummmm - one for each row
      // -- using the data from the row to initialise the object:
      Ummmm u = new Ummmm(name, next, day, min, bad, len);

      // -- calculate the position at which to place the mark and store this in the object:
      float y = map(thisRow, 1, dataFileRows.length-1, height*0.05, height*0.95);
      float x = map(min, 0, 120, width*0.05, width*0.95);

      // -- update the coordinates with the new PVector:
      u.coords = new PVector(x, y);

      // -- add the object it to the ArrayList of Ummmm objects
      ummmms.add(u);
    }
    thisRow++; // <-- keep a count of which row we are on
  }
}
void draw() {
  background(250);

  // -- loop through the Ummmms in the ArrayList and draw them by calling the draw() method!
  for (Ummmm u : ummmms) {
    u.draw();
  }
}

void mouseClicked () {
  int r = int(random(11111, 99999));
  save("canvas"+r+".png");
}
