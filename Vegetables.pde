class Vegetable
{
  int _x;
  int _y;
  int _w;
  int _h;
  PImage _image;
  
  Vegetable()
  // Constructor 
  {
    _x = 0;
    _y = 0;
    _w = 0;
    _h = 0;
    _image = null;   
  }
  
  Vegetable (String Vegetable)
  {
    _x = 0;
    _y = 0;
    _image = loadImage("bakedpotato.png");
    _image = loadImage("carrot.png");
    _image = loadImage("salad.png");
    _image = loadImage("corn.png");
    _image.resize(100,100);
    _w = _image.width;
    _h = _image.height;
  }
  
  void Draw()
  {
    image(_image, _x, _y);
  }
  
}