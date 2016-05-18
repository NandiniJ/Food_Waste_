class Vegetable

{
  float x;
  float y;
  float w;
  float h;
  PImage img1;
  int iNum; 
  boolean visible;
  Vegetable()
  // Constructor 
  {
    x = 0;
    y = 0;
    w = 0;
    h = 0;
    visible = true;
   iNum = (int) random(1,4);
  }
  
  Vegetable(float _x, float _y, float _w, float _h)
  {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    visible=true;
    int iNum = (int)random(1,4);
    if (iNum==1)
   {
    img1 = loadImage("bakedpotato.png");
    img1.resize(500,500);
   }
   if (iNum==2)
   {
    img1 = loadImage("carrot.png");
    img1.resize(500,500);
   }
   if (iNum==3)
   {
    img1 = loadImage("salad.png");
    img1.resize(500,500);
   }
   if (iNum==4)
   {
    img1 = loadImage("corn.png");
    img1.resize(500,500);
   }
  }
  
  void Draw()
  {
   if (visible==true)
   {
   image(img1,x,y,w,h);
   }
  }
  
   void Move ()
  {
    x+=10;
  }
}