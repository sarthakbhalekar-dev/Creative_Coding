// -- Bike Station Bar Graph Sketch
String[] stations;
int[]    availableBikes;
int[]    capacities;
 
void setup()
{
  size(600, 405);
  textAlign(LEFT,TOP);
  strokeWeight(0.5);
 
  String[] textLines = loadStrings("BikeShare.txt");
 
  // Create arrays for the data sized according to number of lines (we will ignore the header line - textLines[0]).
  stations       = new String[textLines.length];
  availableBikes = new int[textLines.length];
  capacities     = new int[textLines.length];
 
  // Iterate and store station name, capacity and number of bikes for each station: ignores header line
  for (int i=1; i<textLines.length; i=i+1)
  {
    // Split the line into 'values' array separated by a comma
    String[] values = split(textLines[i], ",");
 
    stations[i]       = values[1];        // -- column no. 1  in each line of the data file is the station name
    availableBikes[i] = int(values[23]); // -- column no. 23 in each line of the data file is 9am
    capacities[i]     = int(values[4]);  // -- column no. 4  in each line of the data file is station capacity
  }
}
 
 
void draw()
{
  background(255);
  float yPos= 2;
 
  // Show the first 25 stations with number of bikes at 9:00am: ignores header line
  for (int i=1; i<=25; i=i+1)
  {
    fill(0);
    text(stations[i], 5, yPos);
 
    noStroke();
    fill(50,50,200,100);
    rect(220,yPos+1,availableBikes[i]*8,14); // <-- available rect
 
    noFill();
    stroke(0);
    rect(220,yPos+1,capacities[i]*8,14);     // <-- capacities rect
 
    yPos += 16;
  }
}