PFont myFont;

void setup(){
    size(600,600);
}



void draw(){

    background(255);

    float centreX = width/2;
    float centreY = height/2;
    
    stroke(220,36,31);
    strokeWeight(50);
    fill (255);
    circle(centreX, centreY,350);

    noStroke();
    fill(0,25,168);
    rectMode (CENTER);
    rect(centreX, centreY, 480, 90);

    myFont = createFont("Johnston", 32);
    textFont(myFont);
    fill (255);
    textSize(60);
    textAlign(CENTER,CENTER);
    text("UNDERGROUND", centreX, centreY);

}