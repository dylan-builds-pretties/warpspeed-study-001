//importing sound lib
import processing.sound.*;

//vars
SoundFile[] file;
Amplitude[] amp;

int numsounds = 4;

Star[] stars = new Star[500];

float speed;

void setup() {
  size(600, 600, P2D);
 /*
  //Analyzer
   file = new SoundFile[numsounds];
   amp = new Amplitude[numsounds];
 //Load files and analyze each
   for (int i = 0; i < numsounds; i++) {
     file[i] = new SoundFile(this, (i+1) + ".wav");
    // file[i].play();
     amp[i] = new Amplitude(this);
     //amp[i].input(file[i]);
   }
 */
  //stars
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  
}

void draw() {
  speed = map(mouseX, 0, width, 0, 50);
  
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}
