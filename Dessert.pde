class Dessert

{
  float x;
  float y;
  float w;
  float h;
  float xspeed;
  PImage img5;
  boolean visible;
  int iNum; 
  int itemPosX;
  int itemPosY;
  Dessert()
    // Constructor 
  {
    x = 0;
    y = 0;
    w = 0;
    h = 0;
    visible = true;
    iNum = (int) random(1, 4);
  }

  Dessert(float _x, float _y, float _w, float _h)
  {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
     visible = true;
    int iNum = (int)random(1, 4);
    if (iNum==1)
    {
      img5 = loadImage("cake.png");
      img5.resize(500, 500);
    }
    if (iNum==2)
    {
      img5 = loadImage("cupcake.png");
      img5.resize(500, 500);
    }
    if (iNum==3)
    {
      img5 = loadImage("brownie.png");
      img5.resize(500, 500);
    }
    if (iNum==4)
    {
      img5 = loadImage("cookies.png");
      img5.resize(500, 500);
    }
  }

  void Draw()
  {
    if (visible==true)
    {
      image(img5, x, y, w, h);
    }
  }


  void Move ()
  {
    x+=10;
  }
}