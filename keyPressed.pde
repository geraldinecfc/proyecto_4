void keyPressed()
{
  if (pantallas==1)
  {
    image (pantalla,0,0,width,height);
    if (key==CODED && keyCode==SHIFT)
    {
      pantallas=2;
    }
  }
  
  if (pantallas==2)
  {
  video.display();
     
  if (key=='a')
  {
    contador=1;
    println ("CAMBIO");
  }
  if (key=='b')
  {
    contador=2;
    println ("CAMBIO");
  }
  if (key=='c')
  {
    contador=3;
    println ("CAMBIO");
  }
  if (key=='d')
  {
    contador=4;
    println ("CAMBIO");
  }
  if (key=='s')
  {
    println ("ADIOS");
    exit();
  }
  }
}
