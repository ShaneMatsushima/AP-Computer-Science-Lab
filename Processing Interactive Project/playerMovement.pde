float X = 500;
float Y = 500;
float speed = 10;


void setup(){
  size(1000, 1000);
  background(0);
}

void draw(){
  background(0);
  display();
}

void display(){
  background(0);
  fill(0, 255, 0);
  ellipse(X, Y, 50, 50);
  if ((key == 'a')&&(X >= 25)){
   X = X - speed; 
  }
  if((key == 'd')&&(X <= width-25)){
   X = X + speed; 
  }
  if((key == 'w')&&(Y >= 25)){
   Y = Y - speed;
  }
  if((key == 's')&&(Y <= height-25)){
   Y = Y + speed; 
  }

}
