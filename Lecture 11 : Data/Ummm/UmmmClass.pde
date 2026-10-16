// -- a class for every observation of a lecturer saying "Ummm..." in a lecture
 
class Ummmm {
 
  // -- the fields that will be used to capture the observation, these will be filled with data
  String who, next;
  int day, min;
  int howBad, howLong;
  PVector coords = new PVector(0, 0);     // -- place to draw on the canvas - (0,0) initially
  PVector size = new PVector(100, 20);    // -- width and height - (100,20) initially
  color whoColour;
 
  // -- the Constructor has the same name as the class and is called whenever an object of this type is initialised:
  Ummmm (String person, String followed, int dayNum, int minNum, int badNum, int longNum) {
     
    who = person;
    next = followed;
    day = dayNum;
    min = minNum;
    howLong = longNum;
    howBad = badNum;
 
    float wi = map(howLong, 0, 5, 0, width/5.0);      // -- scale howLong data using map() to fit data onto the canvas
    float hi = map(howBad, 0, 6, 0, height/20.0);     // -- scale howBad  data using map() to fit data onto the canvas
    size =  new PVector(wi, hi);
 
    // -- store the colour dependent upon the value of the "who" field:
    if (who.equals("JD")) {
      whoColour = colJD;
    } else if (who.equals("GT")) {
      whoColour = colGT;
    } else if (who.equals("GB")) {
      whoColour = colGB;
    } else {
      whoColour = color(200, 128);  // -- default colour if it wasn't JD, GT or GB
    }
  }
 
  // -- draw method uses the coords and size PVectors to position, size and animate  
  //    the rectangle that represents the observation (and the data collected)
  void draw () {
    stroke(16, 200);
    fill(whoColour);
     
    // -- add random jitter in Y based on value (magnitude) of howBad:
    float randomY = random(-howBad,howBad);
    rect(coords.x, coords.y, size.x, size.y+randomY);
 
    // -- add text:
    fill(16, 200);
    text(next,coords.x, coords.y-size.y/2f-4);
  }
}
