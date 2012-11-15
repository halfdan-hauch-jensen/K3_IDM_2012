/*
This example shows how to do basic interactions with the mouse and keyboard
Halfdan@h-h-j.dk
*/

void setup(){
  size(400, 300);
}

void draw(){
  noCursor();
  line(0, 0, mouseX, mouseY);
}

// OVERIDING
// mouse and key interactions
void keyPressed(){
  println(key);
  if (key == 'r') background(255, 0, 0);
  if (key == 'b') background(0, 0, 255);
}
