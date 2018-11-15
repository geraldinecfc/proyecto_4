import processing.video.*;

Movie mov1,mov2,mov3,mov4;
video video,video2,video3,video4;
int contador=1, pantallas=1;
PImage pantalla;

void setup()
{
  size(640, 360);
  noStroke();
  
  mov1 = new Movie(this, "v1.mp4");
 
  mov2 = new Movie(this, "v2.mp4");
 
  mov3 = new Movie(this, "v3.mp4");
  
  mov4 = new Movie(this, "v4.mp4");
  
  
  video = new video (1,1,1);
  video2 = new video (1,1,2);
  video3 = new video (1,1,3);
  video4 = new video (1,1,4);
  
  pantalla = loadImage ("pantalla.jpg");
}

void draw()
{
  keyPressed();
 
}
