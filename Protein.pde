class Protein

{
  float x;
  float y;
  float w;
  float h;
  PImage img2;
  int iNum; 
  
  Protein()
  // Constructor 
  {
    x = 0;
    y = 0;
    w = 0;
    h = 0;
   iNum = (int) random(1,4);
  }
  
  Protein(float _x, float _y, float _w, float _h)
  {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    int iNum = (int)random(1,4);
    if (iNum==1)
   {
    img2 = loadImage("beans.png");
    img2.resize(500,500);
   }
   if (iNum==2)
   {
    img2 = loadImage("egg.png");
    img2.resize(500,500);
   }
   if (iNum==3)
   {
    img2 = loadImage("fish.png");
    img2.resize(500,500);
   }
   if (iNum==4)
   {
    img2 = loadImage("chicken.png");
    img2.resize(500,500);
   }
  }
  
  void Draw()
  {
   image(img2,x,y,w,h);
  }
  
}