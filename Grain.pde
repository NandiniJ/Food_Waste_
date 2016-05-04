class Grain

{
  float x;
  float y;
  float w;
  float h;
  PImage img3;
  int iNum; 
  
  Grain()
  // Constructor 
  {
    x = 0;
    y = 0;
    w = 0;
    h = 0;
   iNum = (int) random(1,4);
  }
  
  Grain(float _x, float _y, float _w, float _h)
  {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    int iNum = (int)random(1,4);
    if (iNum==1)
   {
    img3 = loadImage("bread.png");
    img3.resize(500,500);
   }
   if (iNum==2)
   {
    img3 = loadImage("pasta.png");
    img3.resize(500,500);
   }
   if (iNum==3)
   {
    img3 = loadImage("rice.png");
    img3.resize(500,500);
   }
   if (iNum==4)
   {
    img3 = loadImage("roti.png");
    img3.resize(500,500);
   }
  }
  
  void Draw()
  {
   image(img3,x,y,w,h);
  }
  
}