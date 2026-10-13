// -- Very Basic Robot class that holds data and has a method to draw itself.
// -- Unsatisfactory!

class RobotMk2 {

  // -- fields, or instance variables that each instance of this class will hold:
  float x, y;

  // -- constructor can act on fields when an instance is instantiated:
  RobotMk2 () {
    x = random(50,width-50); // -- or try : x = random(50,width-50);
    y = random(50,height-50); // -- or try : y = random(50,height-50);
  }

  // -- method that can be called by instances of this class
  void draw() {
    fill(200);
    strokeWeight(1);
    rect(x, y, 30, 20);
  }
}
