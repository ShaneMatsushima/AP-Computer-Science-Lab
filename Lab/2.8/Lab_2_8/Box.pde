// Class created for the object Box which is used for making the squares
class Box{
  
  float boxX;
  float boxY;
  float boxW;
  
  float fade;
  
  Box(float x_, float y_, float w_){
   boxX = x_;
   boxY = y_;
   boxW = w_;
    
  }
  
  void display(){
    // checks to see of the mouse is in the object or not 
    if(((mouseX >= boxX)&&(mouseX <= boxX+boxW))&&((mouseY >= boxY)&&(mouseY<=boxW+boxY))){
      //makes square white
      fade = 255;
    }
    else{
      //fades from white to black 
      fade = fade - 5;
    }
    fill(fade);
    stroke(0);
    rect(boxX, boxY, boxW, boxW);
  }
  
}
