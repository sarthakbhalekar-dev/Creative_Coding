import processing.video.*;    // Needed to display video.
 
Movie myVideo;                // Stores the video object.
 
void setup()
{
  size(800, 510);
  myVideo = new Movie(this, "MountainRange.mp4");
  myVideo.play();
}
 
void draw()
{
  background(0);
 
  for (int row=0; row<5; row=row+1)
  {
    for (int col=0; col<5; col=col+1)
    {
      image(myVideo, 10 + col*160, 10 + row*100,140, 90);
    }
  }
}
 
// This is needed to read in the movie while it is playing.
void movieEvent(Movie videoBuffer)
{
  videoBuffer.read();
}

