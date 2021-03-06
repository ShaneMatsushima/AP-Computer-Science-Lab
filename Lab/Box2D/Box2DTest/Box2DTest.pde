import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

float platX = 300;
float platWidth = 200;

// A list for all of our rectangles
ArrayList<Box> boxes;

// Object for static platforms 
Platform a;

// Adding box2d 
Box2DProcessing box2d;		

void setup() {
  size(600,500);
  smooth();
  
  // Initialize and create the Box2D world
  box2d = new Box2DProcessing(this);	
  box2d.createWorld();
  
  // Create ArrayLists
  boxes = new ArrayList<Box>();
  a = new Platform(platX,250,platWidth,3);
}

void draw() {
  background(0,0,255);
  
  //Updates the objects (step through time)
  box2d.step();  
  
  // Display platform 
  a.display();

  // When the mouse is clicked, add a new Box object
  if (mousePressed) {
    Box p = new Box(mouseX,mouseY);
    boxes.add(p);
  }

  // Display all the boxes
  for (Box b: boxes) {
    b.display();
  }
  
}
