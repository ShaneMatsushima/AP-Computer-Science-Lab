class Platform {
  
  float x,y;
  float w,h;
  // stores refrence for box2d body
  Body b;
  
  //constuctor for platform obj 
  Platform(float x_,float y_, float w_, float h_){
    
    x = x_;
    y = y_;
    w = w_;
    h = h_;    
    
    // Create Body
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    b = box2d.createBody(bd);
    
    // Define Body
    PolygonShape ps = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    ps.setAsBox(box2dW, box2dH);
    
    // Attatch fixture to body 
    b.createFixture(ps,1);
  }
  
  // Displays platform object 
  void display() {
   fill(0);
   stroke(0);
   rectMode(CENTER);
   rect(x,y,w,h);
  }
  
}
