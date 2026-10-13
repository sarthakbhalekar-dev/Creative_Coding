
// -- In bigger sketches I keep interactions in a separate tab:

void keyPressed () {

  if (key == 's') {

    // -- save an image of the current canvas in an image file with a randomised name:

    int fiveDigitInt = int(random(11111, 99999)); // <-- a random 5 digit integer
    String fileName = "robotSketch."+fiveDigitInt+".png"; // <-- make a filename
    save(fileName); // <-- see the Processing documentation on 'save()' for details!
  }
}
