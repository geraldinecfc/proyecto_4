

class video
{
  int numPixelsWide, numPixelsHigh, video;
  color movColors[];
  int blockSize = 3;
 
  
 video (int numPixelsWide_, int numPixelsHigh_,int video_)
  {
    numPixelsWide = numPixelsWide_;
    numPixelsHigh = numPixelsHigh_;
    video = video_;
  }
  
  void display()
  {
  int count = 0;
  
  numPixelsWide = width / blockSize;
  numPixelsHigh = height / blockSize;
  println(numPixelsWide);
  movColors = new color[numPixelsWide * numPixelsHigh];
  
  if (contador==1)
  {
    blockSize = 1;
    mov1.loop();
    if (mov1.available() == true) {
    mov1.read();
    mov1.loadPixels();
    mov1.filter(GRAY);
    }
    
    for (int j = 0; j < numPixelsHigh; j++) {
      for (int i = 0; i < numPixelsWide; i++) {
        movColors[count] = mov1.get(i*blockSize, j*blockSize);
        count++;
      }
    }
  }
  
  else if (contador==2)
  {
    mov2.loop();
    if (mov2.available() == true) {   
    mov2.read();
    mov2.loadPixels();
    blockSize = 8;
    }
    
    for (int j = 0; j < numPixelsHigh; j++) {
      for (int i = 0; i < numPixelsWide; i++) {
        movColors[count] = mov2.get(i*blockSize, j*blockSize);
        count++;
      }
    }
  }
  
  else if (contador==3)
  {
    blockSize = 1;
    mov3.loop();
    if (mov3.available() == true) {
    mov3.read();
    mov3.loadPixels();
    mov3.filter(DILATE);
  }
    
    for (int j = 0; j < numPixelsHigh; j++) {
      for (int i = 0; i < numPixelsWide; i++) {
        movColors[count] = mov3.get(i*blockSize, j*blockSize);
        count++;
      }
    }
  }
  
  else if (contador==4)
  {
    blockSize = 1;
     mov4.loop();
    if (mov4.available() == true) {
    mov4.read();
    mov4.loadPixels();
    mov4.filter(INVERT);
    }
    
    for (int j = 0; j < numPixelsHigh; j++) {
      for (int i = 0; i < numPixelsWide; i++) {
        movColors[count] = mov4.get(i*blockSize, j*blockSize);
        count++;
      }
    }
    
  }
   background(255);
  
  for (int j = 0; j < numPixelsHigh; j++) {
    for (int i = 0; i < numPixelsWide; i++) {
      fill(movColors[j*numPixelsWide + i]);
      rect(i*blockSize, j*blockSize, blockSize, blockSize);
  
  }
    }
    
}
  }
  
  
