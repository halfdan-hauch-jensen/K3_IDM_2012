// initials drawing program


// variables
color c = color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
int x = 0;
int saveCount = 0; 


void setup() {
  background(255);
  size(800, 300);
  println("executed setup ...");
  fill(random(0, 255), 0, 0);
}

void draw() {
  myName();
}


void myName() {
  //x += 5;
  translate(x, 0);
  rect(10,10, 10, height-20);  
}

void mouseDragged() {
  noStroke();
  ellipse(mouseX, mouseY, 5, 5);
  //println("X " + mouseX +" : Y " + mouseY);
}

void mouseReleased(){
  c = color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
  fill(c);
  //println("changed color");
}

void keyPressed(){
  if(key == 'r') background(255);
  if (key == 's') {
      save(saveCount+"");
      saveCount++;
  }
}

