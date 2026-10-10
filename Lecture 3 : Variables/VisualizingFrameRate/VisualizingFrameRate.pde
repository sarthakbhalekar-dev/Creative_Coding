void setup () {
    size(1000, 500);
}
 
void draw() {
    // -- set target frameRate to be based on vertical position of mouse - lower is faster:
    frameRate(mouseY);               
 
    // -- set x to be somewhere between 0 and width as the sketch progresses frame by frame:
    int x   = frameCount%width;    
 
    // -- set y to be the current frameRate achieved by the sketch:
    float y = frameRate;
 
    // -- draw a point at (x,frameRate) to show current frameRate:
    point(x, y);
     
    // -- output frameCount and frameRate to the console:
    println(frameCount, frameRate);
}