PImage fwbackground;
Box veggies;
Box proteins;
Box fruits;
Box grains;
int x;
Box desserts;

int numFood = 3;

Vegetable Vegetable;
Vegetable[] vegetables = new Vegetable[2];

Protein Protein;
Protein[] proteinz = new Protein[2];

Grain Grain;
Grain[] grainz = new Grain[2];

Fruit Fruit;
Fruit[] fruitz = new Fruit[2];

Dessert Dessert;
Dessert[] dessertz = new Dessert[2];

void setup()
{
  fullScreen();
  fwbackground=loadImage("fwbackground.jpg");
  image(fwbackground,0,-200);
  veggies = new Box("Veggies");
  proteins = new Box("Proteins");
  fruits = new Box ("Fruits");
  grains = new Box ("Grains");
  desserts = new Box ("Desserts");
  for(int i=0; i<2; i++)
  {
    vegetables[i]=new Vegetable(numFood * 200, height/2 ,200,100);
    numFood++;
  }
  
  for(int i=0; i<2; i++)
  {
    proteinz[i]=new Protein(numFood * 200, height/2 ,200,100);
    numFood++;
  }
  
  for(int i=0; i<2; i++)
  {
    grainz[i]=new Grain(random(0,1000),random(0,400),200,100);
  }
  
   for(int i=0; i<2; i++)
  {
    fruitz[i]=new Fruit(random(0,1000),random(0,400),200,100);
  }
  
  for(int i=0; i<2; i++)
  {
    dessertz[i]=new Dessert(random(0,1000),random(0,400),200,100);
  //dessertz[i]=new Dessert(x+xspeed,random(0,400),200,100);
  }
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
  
  for (int i=0; i<2; i++)
  {
    vegetables[i].Draw();
  }
  for (int i=0; i<2; i++)
  {
    proteinz[i].Draw();
  }
  for (int i=0; i<2; i++)
  {
    grainz[i].Draw();
  }
  
  for (int i=0; i<2; i++)
  {
    fruitz[i].Draw();
  }
  
  for (int i=0; i<2; i++)
  {
    dessertz[i].Draw();
    dessertz[i].Move();
  }
}

void DrawBoxes()
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
}