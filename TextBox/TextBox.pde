ArrayList<TEXTBOX> textboxes = new ArrayList<TEXTBOX>();

void setup(){
  size(400, 250);
  InitLayout();
}

void draw(){
  background(255);
  for (TEXTBOX t : textboxes){
   t.DRAW(); 
  }
}

void InitLayout(){
  TEXTBOX heightOfObj = new TEXTBOX();
  heightOfObj.W = 200;
  heightOfObj.H = 35;
  heightOfObj.X = (width - heightOfObj.W) /2;
  heightOfObj.Y = 50;
  textboxes.add(heightOfObj);
  TEXTBOX gravity = new TEXTBOX((width - 300 / 2), 100, 300, 35);
  textboxes.add(gravity);
}

void mousePressed(){
  for(TEXTBOX t : textboxes){
    t.PRESSED(mouseX, mouseY);
  }
}
  
void keyPressed(){
 for(TEXTBOX t : textboxes){
 t.KEYPRESSED(key, keyCode);
 }
}
  
