char r; // red
char g; //green
char b; // blue
Ghost red;
Ghost blue;
Ghost green;

Stage border;

void setup(){
  size(1000,1000); //Do not change
  background(0);
  red = new Ghost(100, 100, 50, 1);
  blue = new Ghost(900, 900, 50, 3);
  green = new Ghost(100, 900, 50, 2);
  border = new Stage();
}

void draw(){
  border.display();
  //red.display();
  //blue.display();
  //green.display();
}
