class Ghost{
  
  float ghostX;
  float ghostY;
  float ghostW;
  int r = 0;
  int g = 0;
  int b = 0;
  
  float ghostColor;
  
  Ghost(float x_, float y_, float w_, float color_ ){
   ghostX = x_;
   ghostY = y_;
   ghostW = w_;
   ghostColor = color_;
  }
  
  void display(){
    if(ghostColor == 1){
     r = 255;
    }
    if(ghostColor == 2){
     g = 255;
    }
    if(ghostColor == 3){
     b = 255;
    }
    fill(r, g, b);
    ellipse(ghostX, ghostY, ghostW, ghostW);
    noStroke();
  }
  
}
