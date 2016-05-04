class Fruit

{
  float x;
  float y;
  float w;
  float h;
  PImage img4;
  int iNum; 
  
  Fruit()
  // Constructor 
  {
    x = 0;
    y = 0;
    w = 0;
    h = 0;
   iNum = (int) random(1,4);
  }
  
  Fruit(float _x, float _y, float _w, float _h)
  {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    int iNum = (int)random(1,4);
    if (iNum==1)
   {
    img4 = loadImage("banana.png");
    img4.resize(500,500);
   }
   if (iNum==2)
   {
    img4 = loadImage("apple.png");
    img4.resize(500,500);
   }
   if (iNum==3)
   {
    img4 = loadImage("mango.png");
    img4.resize(500,500);
   }
   if (iNum==4)
   {
    img4 = loadImage("strawberry.png");
    img4.resize(500,500);
   }
  }
  
  void Draw()
  {
   image(img4,x,y,w,h);
  }
  
}