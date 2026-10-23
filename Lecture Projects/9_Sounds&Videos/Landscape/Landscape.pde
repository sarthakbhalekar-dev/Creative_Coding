
import processing.video.*;    // Needed to display video.

Movie myVideo;                // Stores the video object.

void setup()
{
  size(1200, 800);
  background(0);
  myVideo = new Movie(this, "MountainRange.mp4");  // Load the video file.
  myVideo.play();
}

void draw()
{
  // -- Use noise() to return positions in two dimensions
  // -- that vary slightly between draw loops
  float noiseX = noise(frameCount * 0.01, 1);
  float noiseY = noise(frameCount * 0.01, 2);

  // Set visual dimensions for the drawn video frame
  float videoWidth = 600;
  float videoHeight = 380;

  // -- Convert to screen coordinates (uses visual dimensions so video stays within window borders)
  float px = map(noiseX, 0, 1, 0, width - videoWidth);
  float py = map(noiseY, 0, 1, 0, height - videoHeight);

  // -- Draw transparent on screen
  tint(255, 4);      // Make the video very transparent.
  image(myVideo, px, py, videoWidth, videoHeight);
}

// This is needed to read in the movie while it is playing.
void movieEvent(Movie videoBuffer)
{
  videoBuffer.read();
}