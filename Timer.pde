int actualSecs; //actual seconds elapsed since start
int actualMins; //actual minutes elapsed since start
int startSec = 0; //used to reset seconds shown on screen to 0
int startMin = 0; //used to reset minutes shown on screen to 0
int scrnSecs; //seconds displayed on screen (will be 0-60)
int scrnMins=0; //minutes displayed on screen (will be infinite)
int restartSecs=0; //number of seconds elapsed at last click or 60 sec interval
int restartMins=0; //number of seconds ellapsed at most recent minute or click 

void setup()
{
  size(300,300);
}

void draw(){
background(0);
   
//////////////////////////////////// 
/*this section is the "mathy" part*/
////////////////////////////////////

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
     
  println(scrnSecs); //print timer to console (secs)
  println(scrnMins);//print timer to console (mins)
   

//this section controls the visual elements

//displays time on screen
textAlign(CENTER);
fill(255);
text(nf(scrnMins, 2) + " : " + nf(scrnSecs, 2), width/2, height/2);
 

 
}