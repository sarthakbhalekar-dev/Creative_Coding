
  // -- Comments and options for use in lecture!
  
  // -- Method approach to drawing:
  //drawRobot(x,y, wide,high, eyeD, eyeR, mLong, mDown);
  //drawRobot(x+150,y, wide,high, eyeD, eyeR, mLong, mDown);
  //drawRobot(x,y+120, wide/2,high/2, eyeD/3, eyeR, mLong/2, mDown/1.5);
  //drawRobot(x+150,y+120, wide/2,high/2, eyeD/2, eyeR/3, mLong/3, mDown/2.5);
  //for (int i=100; i<width; i+=100) {
  //  drawRobot(i,y-120, wide/2,high/2, i/100*eyeD/3, eyeR/4, mLong/3, mDown/2.5);
  //}
  
  // -- Nothing class: Mark 1 Robot
  //RobotMk1 r = new RobotMk1();

  // -- Something class: Mark 2 Robot
  // -- Make a RobotMk2 called 'r':
  //RobotMk2 r = new RobotMk2();
  // -- Call the draw() method of the 'r' object:
  //r.draw();
  // -- Make some more robot instances - we could make an array of robots.
  // -- Declare global array at the top of the sketch outswide any methods:
  //RobotMk2 [] robotArray = new RobotMk2[10];
  // -- Instantiate array elements in the setup() method:
  //for (int i=0; i<10; i++) {
  //  robotArray[i] = new RobotMk2 ();
  //}
  // -- Draw the robots in the draw() method:
  //for (RobotMk2 r : robotArray) {
  //  r.draw();
  //}

  // -- Something more class: Mark3 Robot
// -- Declare and instantiate the Robots as globals before the draw() and setup() methods in the sketch.
// -- The names here are just robot names - the numbers don't mean anything.
// -- But notice that we are passing arguments into the constructor that will be used to fill the fields in each object.
//RobotMk3 r2d1 = new RobotMk3(150, 150);
//RobotMk3 r2d2 = new RobotMk3(150, 250);
//RobotMk3 r2d3 = new RobotMk3(250, 250);
//RobotMk3 r2d4 = new RobotMk3(250, 150);

  // -- This is the draw() loop of the main sketch:
//void draw() {
//  background(250);
//  // -- Call the draw() methods of the robot objects to show them on the canvas:
//  r2d1.draw();
//  r2d2.draw();
//  r2d3.draw();
//  r2d4.draw();
//}

  //// -- Something better class: Mark4 Robot
  // -- Declare the Mark4 robots as globals at the top of the script: 
  //RobotMk4 r2d1, r2d2, r2d3;
  
  // -- In setup() ...
  // -- Instantiate the Mark4 robots - passing 4 arguments that fill their fields:
  //r2d1 = new RobotMk4(x,y,wide,high);
  //r2d2 = new RobotMk4(200,40,wide,high);
  //r2d3 = new RobotMk4(280,60,wide,high);

  // -- In draw() ...
  // -- Call the draw() and move() methods of each of the robot objects to show and move them:
  //r2d1.draw();
  //r2d1.move();
  //r2d2.draw();
  //r2d2.move();
  //r2d3.draw();
  //r2d3.move();
