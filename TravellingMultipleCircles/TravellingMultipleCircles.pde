float x1,x2,x3,x4,y1,y2,y3,y4;
color redCircle,blueCircle,greenCircle,yellowCircle;

void setup(){
    size(400,400);
    redCircle = color(255,0,0);
    blueCircle = color(0,0,255);
    greenCircle = color(0,255,0);
    yellowCircle = color(255,255,0);

    x1 = x2 = x3 = x4 = width/2;
    y1 = y2 = y3 = y4 = height/2;
}

void draw(){

    background(255);
    fill(redCircle);
    ellipse(x1,y1,30,30);
    fill(blueCircle);
    ellipse(x2,y2,30,30);
    fill(greenCircle);
    ellipse(x3,y3,30,30);
    fill(yellowCircle);
    ellipse(x4,y4,30,30);

    x1 = x1-1;
    y1 = y1-1;

    x2 = x2+1;
    y2 = y2-1;

    x3 = x3-1;
    y3 = y3+1;

    x4 = x4+1;
    y4 = y4+1;
}