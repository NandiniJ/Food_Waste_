PImage fwbackground;

Box veggies;
Box proteins;
Box fruits;

void setup()
{
  fullScreen();
  fwbackground=loadImage("fwbackground.jpg");
  image(fwbackground,0,-200);
  veggies = new Box("veggies.png", "Veggies");
  proteins = new Box("proteins.png", "Proteins");
  fruits = new Box ("fruits.png", "Fruits");
  fruits = new Box();
}

void draw()
{
    veggies.Draw();
}