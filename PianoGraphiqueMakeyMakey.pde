// Gauthier Le Rouzic pour La Fabulerie.
// Open Source

import processing.video.*;
PImage bg;

Movie movieW, movieA, movieS, movieD, movieF, movieG, movieFG, movieFD, movieFH, movieFB;

void settings(){
  size(640, 480);
  fullScreen();
  //fullScreen(P3D, 2);
  
}
void setup() {
  bg = loadImage("fond.jpg");
  bg.resize(width,height);
  background(bg);
  noCursor();
 // frameRate(30);
  
  movieW = new Movie(this, "W.mp4");
  movieA = new Movie(this, "A.mp4");
  movieS = new Movie(this, "S.mp4");
  movieD = new Movie(this, "D.mp4");
  movieF = new Movie(this, "F.mp4");
  movieG = new Movie(this, "G.mp4");
  movieFG = new Movie(this, "FG.mp4");
  movieFD = new Movie(this, "FD.mp4");
  movieFH = new Movie(this, "FH.mp4");
  movieFB = new Movie(this, "FB.mp4");
  
  
}

void draw() {
   background(bg);
   
//LETTRES !!!!!!!
// Lettre W
  if (key == 'w') {
      image(movieW, 0, 0, width, height);
      movieW.play();
    }else{
      movieW.stop();
  }
  
//Lettre A
  if (key == 'a') {
      image(movieA, 0, 0, width, height);  
      movieA.play();
     }else{
       movieA.stop();
     }
  
//Lettre S
  if (key == 's') {
      image(movieS, 0, 0, width, height);  
      movieS.play();
     }else{
       movieS.stop();
     }
     
//Lettre D
  if (key == 'd') {
      image(movieD, 0, 0, width, height);  
      movieD.play();
     }else{
       movieD.stop();
     }
     
//Lettre F
  if (key == 'f') {
    image(movieF, 0, 0, width, height);
    movieF.play();
  }else{
    movieF.stop();
  }
  
//Lettre G
  if (key == 'g') {
    image(movieG, 0, 0, width, height);
    movieG.play();
  }else{
    movieG.stop();
  }

//FLECHES !!!!!!
//Fleche Haut
   if (keyCode == UP) {
   image(movieFH, 0, 0, width, height);
   movieFH.play();
   }else{
     movieFH.stop();
   }
   
// Fleche Bas
  if (keyCode == DOWN) {
    image(movieFB, 0, 0, width, height);
    movieFB.play();
  }else{
    movieFB.stop();
  }
  
//Fleche droite
  if (keyCode == RIGHT) {
    image(movieFD, 0, 0, width, height);
    movieFD.play();
  }else{
    movieFD.stop();
  }
  
//Fleche gauche
  if (keyCode == LEFT) {
    image(movieFG, 0, 0, width, height);
    movieFG.play();
  }else{
    movieFG.stop();
  }
 
  
  }

void movieEvent(Movie m) {
  if (m == movieW) {
    movieW.read();
  } else if (m == movieA) {
    movieA.read();
  } else if (m == movieS) {
    movieS.read();
  } else if (m == movieD) {
    movieD.read();
  } else if (m == movieF) {
    movieF.read();
  } else if (m == movieG) {
    movieG.read();
  } else if (m == movieFG) {
    movieFG.read();
  } else if (m == movieFD) {
    movieFD.read();
  } else if (m == movieFH) {
    movieFH.read();
  } else if (m == movieFB) {
    movieFB.read();
  }
}