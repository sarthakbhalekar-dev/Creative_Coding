// -- Bike Station Map Sketch
String[]  stations;
int[]     capacities;
PVector[] locations;     // <-- use a PVector to store station coordinates
 
float NORTH = 184600;    // Geographic coordinates defining the boundaries
float SOUTH = 177280;    //  of the area we are studying.
float EAST  = 539250;    // We will use map() to convert from the source range of
float WEST  = 523000;    //  geographic coordinates, to the target - our canvas
 
void setup()
{
  size(600, 405);
 
  String[] textLines = loadStrings("BikeShare.txt");
 
  // Create arrays for the data (ignoring header line).
  stations   = new String[textLines.length-1];
  capacities = new int[textLines.length-1];
  locations  = new PVector[textLines.length-1];
 
  // Iterate and store name, location and capacity for each station.
  for (int i=1; i<textLines.length; i=i+1)
  {
    // Split the line into values separated by a comma
    String[] values = split(textLines[i], ",");
 
    stations[i-1]   = values[1];
    capacities[i-1] = int(values[4]);
    locations[i-1]  = new PVector(int(values[2]),int(values[3])); // <-- coordinates are in cols 2 and 3.
  }
}
 
void draw()
{
  background(255);
  noStroke();
  fill(0,0,180, 70);
 
  for (int i=0; i<stations.length; i=i+1)
  {
    PVector location = locations[i];
    int capacity     = capacities[i];
    // Scale the locations (coordinates) to the canvas with map()
    float xPos = map(location.x, WEST, EAST, 10, width-10);
    float yPos = map(location.y, NORTH, SOUTH, 10, height-10);
 
    ellipse(xPos,yPos,capacity,capacity);
  }
}