import org.openkinect.freenect.*;
import org.openkinect.freenect2.*;
import org.openkinect.processing.*;
import org.openkinect.tests.*;

/**
 * Sequential
 * by James Patterson.  
 * 
 * Displaying a sequence of images creates the illusion of motion. 
 * Twelve images are loaded and each is displayed individually in a loop. 
 */

int numFrames = 6;  // The number of frames in the animation
int frame = 0;

PImage[] images = new PImage[numFrames];

//ParticleSystem ps;

void setup() {
  size(800, 713);
  background(0);

  images[0]  = loadImage("P:/Boston/153002.000-Billerica_High_School/DESIGN/PRESENTATION/17_0407 Bay Studies/East Corner Study/0.png");
  images[1]  = loadImage("P:/Boston/153002.000-Billerica_High_School/DESIGN/PRESENTATION/17_0407 Bay Studies/East Corner Study/1.png");
  images[2]  = loadImage("P:/Boston/153002.000-Billerica_High_School/DESIGN/PRESENTATION/17_0407 Bay Studies/East Corner Study/2.png"); 
  images[3]  = loadImage("P:/Boston/153002.000-Billerica_High_School/DESIGN/PRESENTATION/17_0407 Bay Studies/East Corner Study/3.png");
  images[4]  = loadImage("P:/Boston/153002.000-Billerica_High_School/DESIGN/PRESENTATION/17_0407 Bay Studies/East Corner Study/4.png"); 
  images[5]  = loadImage("P:/Boston/153002.000-Billerica_High_School/DESIGN/PRESENTATION/17_0407 Bay Studies/East Corner Study/5.png");



  // If you don't want to load each image separately
  // and you know how many frames you have, you
  // can create the filenames as the program runs.
  // The nf() command does number formatting, which will
  // ensure that the number is (in this case) 4 digits.
  //for(int i=0; i<numFrames; i++) {
  //  String imageName = "PT_anim" + nf(i, 4) + ".gif";
  //  images[i] = loadImage(imageName);
  //}

  //  ps = new ParticleSystem(new PVect
} 

void draw() 
{ 
  frame = (frame) % numFrames;  // Use % to cycle through frames
  imageMode(CORNERS);
  image(images[frame], 0, 0, 800, 713);
}

void mousePressed() {
  changeImage();
}

void changeImage() {
  if (frame<6)
  { 
    frame++;
  } else frame = 0;
}