float apples,oranges,bananas,total;

void setup(){
    size(400,400);
    textSize(20);

}

void draw(){
    background(255);
    
    float students = mouseX;
    float apples = 10*students;
    float bananas = 20*students;
    float oranges = 35*students;
    float total = apples+bananas+oranges;

    fill(0);
    text("Students: " + students, 50,70);
    text("Apples: " + apples, 50, 100);
    text("Bananas: " + bananas, 50, 130);
    text("Oranges: " + oranges, 50, 160);
    text("Total: " + total, 50, 190);
}