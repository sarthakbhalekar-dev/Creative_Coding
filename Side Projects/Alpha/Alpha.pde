void setup() {
  size(320, 240);
}
 
void draw() {
    int alpha = round(mouseX*255 / width);    // <-- alpha is dependent on mouseX
 
    background(255);
    noStroke();
    fill(255, 0, 0);
    rect(50, 30, 140, 100);
    fill(0, 0, 255, alpha);   // <-- set the opacity of the fill colour to 'alpha'   
    rect(120, 80, 140, 100);  //      before the second rectangle is drawn
 
    fill(0);
    textSize(16);
    text("Alpha = " + alpha, 120, 210);
    text("RGBA(0,0,255," + alpha +")", 130, 230);
}