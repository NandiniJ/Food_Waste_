PImage startscreen;
int screenSizeX,screenSizeY, stage;
PFont title;

void setup()
{
  stage =1; 
  screenSizeX = (screen.width);
  screenSizeY = (screen.height);
  size(screenSizeX,screenSizeY);
  startscreen=loadImage("donate.png");
  image(startscreen,0,0,screenSizeX,screenSizeY);
  title= createFont ["font",1000,true]
}

void draw()
{
  if(stage==1)
  {
    textAlign(CENTER);
    text("Instructions: Sort the food into categories, to prepare a balanced meal ready for distribution",500,470);
    text("Press and key to start",500,500);
    if (keyPressed==true);
    stage = 2;
  }
  if(stage==2)
  {
    //Game information?
  }
}