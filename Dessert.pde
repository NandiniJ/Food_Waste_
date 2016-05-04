class Dessert

{
  float x;
  float y;
  float w;
  float h;
  PImage img5;
  int iNum; 
  
  Dessert()
  // Constructor 
  {
    x = 0;
    y = 0;
    w = 0;
    h = 0;
   iNum = (int) random(1,4);
  }
  
  Dessert(float _x, float _y, float _w, float _h)
  {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    int iNum = (int)random(1,4);
    if (iNum==1)
   {
    img5 = loadImage("banana.png");
    img5.resize(500,500);
   }
   if (iNum==2)
   {
    img5 = loadImage("apple.png");
    img5.resize(500,500);
   }
   if (iNum==3)
   {
    img5 = loadImage("mango.png");
    img5.resize(500,500);
   }
   if (iNum==4)
   {
    img5 = loadImage("strawberry.png");
    img5.resize(500,500);
   }
  }
  
  void Draw()
  {
   image(img5,x,y,w,h);
  }
  
}