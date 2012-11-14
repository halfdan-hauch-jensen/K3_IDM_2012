//color c = new color(int(random(0, 255)), 0, 0);
color c = color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));

void setup() {
  size(800, 300);
  println("executed setup ...");
  fill(random(0, 255), 0, 0);
}

void draw() {
  myName();
}


void myName() {
  rect(10,10, 10, height-20);
}

void mouseDragged() {
  noStroke();
  //fill(255, 0, 0);
  ellipse(mouseX, mouseY, 5, 5);
  println("X " + mouseX +" : Y " + mouseY);
}

void mouseReleased(){
  c = color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
  fill(c);
  println("changed color");
}

void keyPressed(){
  if(key == 'r') background(200);
}

