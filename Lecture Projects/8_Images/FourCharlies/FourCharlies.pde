PImage img;

void setup() {
  size(600, 600); // Adjust size to fit your canvas preferences
  
  // Load your image (ensure the file is in your sketch folder)
  img = loadImage("Charlie.jpg"); 
  
  noLoop(); // Only needs to render once since it's static
}

void draw() {
  background(255);
  
  int halfW = width / 2;
  int halfH = height / 2;
  
  // Define 4 distinct color tints (Red, Green, Blue, Yellow/Orange)
  color[] tints = {
    color(255, 100, 100), // Top-Left: Red tint
    color(100, 255, 100), // Top-Right: Green tint
    color(100, 100, 255), // Bottom-Left: Blue tint
    color(255, 200, 50)   // Bottom-Right: Yellow tint
  };
  
  // Loop through a 2x2 grid to position and tint each image
  for (int i = 0; i < 4; i++) {
    int x = (i % 2) * halfW;
    int y = (i / 2) * halfH;
    
    tint(tints[i]);
    image(img, x, y, halfW, halfH); // Uses optional 4th and 5th parameters for width and height
  }
}