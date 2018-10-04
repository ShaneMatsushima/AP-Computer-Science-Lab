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
float initHeight; // Initial height of OBJ (Y Position)
float distance; // distance the OBJ travelled (X Position)
float time; // time variable 
float gravity = -9.8; // acceleration of gravity

void setup(){
size(500, 500);
background(random(255));
}

void Draw(){
  findTime();
  findDistance();
  findInitXVel();
  findFinalXVel();
  findFinalYVel();
  
  println("Initial velocity in the X direction is: " + initXVel);
  println("Initial velocity in the y direction is: " + initYVel);
  println("Final velocity in the x direction is: " + finalXVel);
  println("Final velocity in the y direction is: " + finalYVel);
  println("Initial height is: " + initHeight);
  println("Distance the object travelled is: " + distance);
  println("Time travelled is: " + time);
  println("Gravity is equal to: " + gravity);
}

void findTime(){
  time = sqrt(initHeight*gravity*2);
}

void findDistance(){
  distance = initXVel*time;
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
