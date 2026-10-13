// -- declare global variables:
float x, y;            // -- Position of the Robot
float wide, high;      // -- Width and height of Robot's head


// -- Declare the Mark4 robots as globals at the top of the script:
RobotMk4 r2d1, r2d2, r2d3;

// -- assign values to the globals once in setup() :

void setup () {

  // -- set the canvas size:
  size(800, 800);
  // -- Instantiate the Mark4 robots - passing 4 arguments that fill their fields:
  r2d1 = new RobotMk4(x, y, wide, high);
  r2d2 = new RobotMk4(200, 40, wide, high);
  r2d3 = new RobotMk4(280, 60, wide, high);

  // -- Robot characteristics:
  x = width/2;
  y = height/2;
  wide = 140;
  high = 60;

  // -- Make sure that any rectangles are centred on the first two arguments we give to rect();
  rectMode(CENTER);
}

// -- This is the draw() loop of the main sketch:
void draw() {
  background(250);
  // -- Call the draw() and move() methods of each of the robot objects to show and move them:
  r2d1.draw();
  r2d1.move();
  r2d2.draw();
  r2d2.move();
  r2d3.draw();
  r2d3.move();
}
