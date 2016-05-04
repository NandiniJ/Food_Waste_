class Box
{
  int _x;
  int _y;
  int _w;
  int _h;
  
  PImage _image;
  String _label;
  
  Box()
  // Constructor, box not loaded or drawn yet
  {
    _x = 0;
    _y = 0;
    _w = 0;
    _h = 0;
    
    _image = null;
    _label = "Unlabled";
  }
  
  Box(String label)
  {
    _x = 0;
    _y = 0;
    
    _image = loadImage("Box.png");
    _image.resize(230,230);
    // loads Image, doesn't draw
    _w = _image.width;
    _h = _image.height;
    _label = label;
  }
  
  void Draw()
  {
    image(_image, _x, _y);
    //Create the label here
fill(255,255,255);
rect(_x+15,735,200,40);
  }
  
}