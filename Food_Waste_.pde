import processing.sound.*;
SoundFile file;
int actualSecs; //actual seconds elapsed since start
int actualMins; //actual minutes elapsed since start
int startSec = 0; //used to reset seconds shown on screen to 0
int startMin = 0; //used to reset minutes shown on screen to 0
int scrnSecs; //seconds displayed on screen (will be 0-60)
int scrnMins=0; //minutes displayed on screen (will be infinite)
int restartSecs=0; //number of seconds elapsed at last click or 60 sec interval
int restartMins=0; //number of seconds ellapsed at most recent minute or click 

PImage startscreen;
int screenSizeX, screenSizeY, stage;
PFont title;
String a;
String b;
String c;
String d;
String e;
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
 file = new SoundFile(this, "Can.mp3");
  file.loop();
  stage =1; 
  screenSizeX = (width);
  screenSizeY = (height);
  startscreen=loadImage("Home.jpg");
  image(startscreen, 0, 0, screenSizeX, screenSizeY);
  title= createFont ("font", 20, true);
  textFont(title);
  if (stage==1)
  {
    textAlign(CENTER);
    text("Instructions: Sort the food into categories, to prepare for an efficient and nutritious food distribution", width/2, height/1.9);
    text("Press a key to start", width/2, height/1.75);
    textSize(25);
    String a = "A child dies from hunger every 10 seconds.";
    text(a, 30, 30, 200, 200);
    textSize(35);
    fill(0,252,109);
    String b = "All facts from www.robinhoodarmy.com contact for donation information";
    text(b, 1, 750, 1300, 200);
    textSize(25); 
    fill(255,255,255);
    String c = "One in every eight people sleeps hungry each night";
    text(c, 480, 40, 300, 200);
    textSize(50);
    fill(0,252,109);
    String d = "DONATE EDIBLE LEFTOVER FOOD";
    text(d, 300,210, 700, 200);
    textSize(25);
    fill(255,255,255);
    String e = "One third of the food produced around the world is never consumed";
    text(e,930,40,300,200);
  }
}
void draw()
{
   if (keyPressed==true)
   {
   stage = 2;
   }
  if (stage==2)
  {
    fwbackground=loadImage("fwbackground.jpg");
    veggies = new Box("Veggies");
    proteins = new Box("Proteins");
    fruits = new Box ("Fruits");
    grains = new Box ("Grains");
    desserts = new Box ("Desserts");
    for (int i=0; i<2; i++)
    {
      vegetables[i]=new Vegetable(numFood * -200, random(0, height-400), 200, 100);
      numFood++;
    }

    for (int i=0; i<2; i++)
    {
      proteinz[i]=new Protein(numFood * -200, random(0, height-200), 200, 100);
      numFood++;
    }

    for (int i=0; i<2; i++)
    {
      grainz[i]=new Grain(numFood * -200, random(0, height-400), 200, 100);
      numFood++;
    }

    for (int i=0; i<2; i++)
    {
      fruitz[i]=new Fruit(numFood * -200, random(0, height-400), 200, 100);
      numFood++;
    }

    for (int i=0; i<2; i++)
    {
      dessertz[i]=new Dessert(numFood * -200, random(0, height-400), 200, 100);
      numFood++;
      //dessertz[i]=new Dessert(x+xspeed,random(0,400),200,100);
    }
    image(fwbackground, 0, -200);

    veggies._x=25;
    veggies._y=560;
    veggies.Draw();
    fill(0,0,0);
    textSize(32);
    text("Veggies",140, 765);
   
    proteins._x=275;
    proteins._y=560;  
    proteins.Draw();
    fill(0,0,0);
    textSize(32);
    text("Proteins", 390, 765);

    fruits._x=525;
    fruits._y=560;  
    fruits.Draw();
    fill(0,0,0);
    textSize(32);
    text("Fruits", 640, 765);

    grains._x=775;
    grains._y=560;  
    grains.Draw();
    fill(0,0,0);
    textSize(32);
    text("Grains", 890, 765);
    
    desserts._x=1025;
    desserts._y=560;  
    desserts.Draw();
    fill(0,0,0);
    textSize(32);
    text("Desserts", 1141, 765);
    

    for (int i=0; i<2; i++)
    {
      vegetables[i].Move();
      vegetables[i].Draw();
    }
    for (int i=0; i<2; i++)
    {
      proteinz[i].Move();
      proteinz[i].Draw();
    }
    for (int i=0; i<2; i++)
    {
      grainz[i].Move();
      grainz[i].Draw();
    }

    for (int i=0; i<2; i++)
    {
      fruitz[i].Move();
      fruitz[i].Draw();
    }

    for (int i=0; i<2; i++)
    {
      dessertz[i].Move();
      dessertz[i].Draw();
      redraw();
    }
    DrawTimer();
  }
}

void DrawBoxes()
{
  veggies._x=25;
  veggies._y=560;
  veggies.Draw();
  text("Veggies", 80, 690);
  textSize(32);

  proteins._x=275;
  proteins._y=560;  
  proteins.Draw();
  text("Proteins", 328, 690);
  textSize(32);

  fruits._x=525;
  fruits._y=560;  
  fruits.Draw();
  text("Fruits", 594, 690);
  textSize(32);

  grains._x=775;
  grains._y=560;  
  grains.Draw();
  text("Grains", 840, 690);
  textSize(32);

  desserts._x=1025;
  desserts._y=560;  
  desserts.Draw();
  text("Desserts", 1072, 690);
  textSize(32);
}
void DrawTimer()
{
  actualSecs = millis()/1000; //convert milliseconds to seconds, store values.
  actualMins = millis() /1000 / 60; //convert milliseconds to minutes, store values.
  scrnSecs = actualSecs - restartSecs; //seconds to be shown on screen
  scrnMins = actualMins - restartMins; //minutes to be shown on screen

  if (mousePressed) { //if mouse is pressed, restart timer
    restartSecs = actualSecs; //stores elapsed SECONDS
    scrnSecs = startSec; //restart screen timer 
    restartMins = actualMins; //stores elapsed MINUTES
    scrnMins = startMin; //restart screen timer
  }

  if (actualSecs % 60 == 0) { //after 60 secs, restart second timer 
    restartSecs = actualSecs;   //placeholder for this second in time
    scrnSecs = startSec; //reset to zero
  }
  if (actualSecs==120)
  {
  }

  println(scrnSecs); //print timer to console (secs)
  println(scrnMins);//print timer to console (mins)

  textAlign(CENTER);
  textSize(40);
  fill(0);
  text(nf(scrnMins, 2) + " : " + nf(scrnSecs, 2), width/1.15, height/9.7);
}