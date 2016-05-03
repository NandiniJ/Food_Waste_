PImage fwbackground;
PImage Box;
PImage img1;
Box veggies;
Box proteins;
Box fruits;
Box grains;
Box desserts;
Vegetable bakedpotato;
Vegetable carrot;
Vegetable salad;
Vegetable corn;
void setup()
{
  fullScreen();
  fwbackground=loadImage("fwbackground.jpg");
  image(fwbackground,0,-200);
  veggies = new Box("veggies.png", "Veggies");
  proteins = new Box("proteins.png", "Proteins");
  fruits = new Box ("fruits.png", "Fruits");
  grains = new Box ("grains.png", "Grains");
  desserts = new Box ("desserts.png", "Desserts");
  bakedpotato = new Vegetable ("bakedpotato.png");
  carrot = new Vegetable ("carrot.png");
  salad = new Vegetable ("salad.png");
  corn = new Vegetable ("corn.png");
}
void draw()
{
  
  veggies._x=25;
  veggies._y=560;
  veggies.Draw();
  text("Veggies",80,690);
  textSize(32);

  proteins._x=275;
  proteins._y=560;  
  proteins.Draw();
  text("Proteins",328,690);
  textSize(32);
  
  fruits._x=525;
  fruits._y=560;  
  fruits.Draw();
  text("Fruits",594,690);
  textSize(32);
  
  grains._x=775;
  grains._y=560;  
  grains.Draw();
  text("Grains",840,690);
  textSize(32);
  
  desserts._x=1025;
  desserts._y=560;  
  desserts.Draw();
  text("Desserts",1072,690);
  textSize(32);
  
  bakedpotato._x=100;
  bakedpotato._y=100 ;
  bakedpotato.Draw();

  carrot._x=700;
  carrot._y=700 ;
  carrot.Draw();
  
  salad._x=300;
  salad._y=300 ;
  salad.Draw();
  
  corn._x=400;
  corn._y=400 ;
  corn.Draw();
}