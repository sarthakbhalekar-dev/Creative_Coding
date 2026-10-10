float d;

void setup(){

    size(400,400);

}

void draw(){
    background(255);

    float cx = width/2;
    float cy = height/2;

    fill (255,0,0);
    circle(cx -d,cy-d,30);  

    fill (0,0,255);
    circle(cx +d,cy-d,30);

    fill (0,255,0);
    circle(cx -d,cy+d,30);

    fill (255,255,0);
    circle(cx +d,cy+d,30);

   d=d+1;
}