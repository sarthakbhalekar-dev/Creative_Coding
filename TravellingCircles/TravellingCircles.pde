float centreX,centreY;

void setup(){

    centreX = width/2;
    centreY = height/2;

}

void draw(){
    background(255);
    ellipse (centreX,centreY,30,30);

    centreX = centreX-1;
    centreY = centreY-1;
}