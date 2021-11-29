void setup(){
  size (500,500, P3D);
  background (255,195,80);
}  

void draw(){
  camera(mouseX, mouseY, 500, width/2, height/2, 0, 0, 1, 0);
  
  background (255,195,80);
  lights();
  noStroke();
  pushMatrix();
  translate(width/2, height/2);
  fill(255,235,117);
  sphere(200);
  popMatrix();
  
  //Left Eye
  pushMatrix();
  translate(width/2, height/2);
  translate(-50,0);
  translate(0,0,200);
  fill(255);
  sphere(50);
  //Left Pupil
  translate(0,0,30);
  fill(0);
  sphere(25);
  popMatrix();
  
  
  //Right Eye
  pushMatrix();
  translate(width/2, height/2);
  translate(50,0);
  translate(0,0,200);
  fill(255);
  sphere(50);
  //Right Pupil
  translate(0,0,30);
  fill(0);
  sphere(25);
  popMatrix();
  
  //Mouth
  pushMatrix();
  translate(width/2,height/2);
  translate(0,100,200);
  fill(87,46,36);
  rotateZ(mouseX *0.01);
  box(100,10,10);
  
}
