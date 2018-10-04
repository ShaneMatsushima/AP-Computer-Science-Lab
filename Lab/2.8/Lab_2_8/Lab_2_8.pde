/*
* Lab 2.8
* Shane Matsushima
* September 27, 2018
*/
int numBox;
// sound library 
import processing.sound.*;
SoundFile Tetris;

//objects created for 2x2
Box TL;
Box TR;
Box BL;
Box BR;

//objects created for 3x3
Box TLL;
Box TM;
Box TRR;
Box ML;
Box MM;
Box MR;
Box BLL;
Box BM;
Box BRR;


void setup(){
  size(600, 600);
  //creates square objects for 2x2
   TL = new Box(0, 0, width/2);
   TR = new Box(width/2, 0, width/2);
   BL = new Box(0, width/2, width/2);
   BR = new Box(width/2, width/2, width/2);
   // creates sound file and loops it 
   Tetris = new SoundFile(this, "Tetris.mp3");
   Tetris.loop();
   //creates square objects for 3x3
   TLL = new Box(0,0,width/3);
   TM = new Box(width/3, 0, width/3);
   TRR = new Box(2*(width/3),0,width/3);
   ML = new Box(0,width/3,width/3);
   MM = new Box(width/3, width/3, width/3);
   MR = new Box(2*(width/3),width/3,width/3);
   BLL = new Box(0, 2*(width/3), width/3);
   BM = new Box(width/3,2*(width/3),width/3);
   BRR = new Box(2*(width/3),2*(width/3),width/3);

}

void draw(){
  background(0);
     textSize(20);
   text("Press 2 for a 2x2", 10, 30);
   text("Press 3 for a 3x3", 10, 50);
   fill(255);
  keyPressed();
  //displays the sqaure objects
  if(numBox == 2){
  TL.display();
  TR.display();
  BL.display();
  BR.display();
  }
  if(numBox == 3){
    TLL.display();
    TM.display();
    TRR.display();
    ML.display();
    MM.display();
    MR.display();
    BLL.display();
    BM.display();
    BRR.display();
  }
}

void keyPressed(){
  if(key == '2'){
    numBox = 2;
  }
  if(key == '3'){
    numBox = 3;
  }
}
