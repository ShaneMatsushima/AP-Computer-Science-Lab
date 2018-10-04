/* 

This Program is to help calculate different velocities and acceleration
based on givens such as initial velocities, heights, and gravity.

Equations used:
Y - Axis:
Y = Voy(t)+(1/2)ay(t)^2
Vy = Voy+ay(t)
Vy^2 = Voy^2+2a(Y)

X - Axis:
X = Vox(t)
Vx = Vox
Vx^2 = Vox^2

*/

float initXVel; // Initial Velocity in the X 
float initYVel = 0; // Initial velocity in the Y 
float finalXVel; // Final Velocity in the X
float finalYVel; // Final Velocity in the Y
float initHeight = -0.813; // Initial height of OBJ (Y Position)
float distance = 0.20475; // distance the OBJ travelled (X Position)
float time; // time variable 
float gravity = -9.8; // acceleration of gravity

void setup(){
size(500, 500);
background(0);
}

void draw(){
  findTime();
  textSize(20);
  text("Time travelled is:", 10, 30);
  text(time, 400, 30);
  text("Distance the object travelled is: ", 10, 50); 
  text(distance, 400, 50);
  findInitXVel();
  text("Initial velocity in the x direction is: ", 10, 70);
  text(initXVel, 400, 70);
  text("Initial velocity in the y direction is: ", 10, 90);
  text(initYVel, 400, 90);
  findFinalXVel();
  text("Final velocity in the x direction is: ", 10, 110);
  text(finalXVel, 400, 110);
  findFinalYVel();
  text("Final velocity in the y direction is: ", 10, 130);
  text(finalYVel, 400, 130);
  text("Initial height is: ", 10, 150);
  text(initHeight, 400, 150);
  text("Gravity is equal to: ", 10, 170);
  text(gravity, 400, 170);
}

void findTime(){
  time = sqrt((initHeight*2)/gravity);
}

void findInitXVel(){
  initXVel = distance/time;
}

void findFinalXVel(){
  finalXVel = initXVel*time;
}

void findFinalYVel(){
  finalYVel = gravity*time;
}
