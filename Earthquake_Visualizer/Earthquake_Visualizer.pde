
String[] lines;
int index = 0;
PImage w_map;
int maxX = 0;
boolean text = false;
boolean magnitude = false;
boolean refresh = true;
int fr = 10;

void setup() {
  w_map = loadImage("map8.jpg");
  size(w_map.width, w_map.height);
  image(w_map, 0, 0);
  smooth();
  noStroke();
  lines = loadStrings("EQ_data.txt");
  textSize(17);
  rectMode(CENTER);
}

void draw() {
  frameRate(fr);
  earthQuakeMap(refresh, magnitude, text);
}

void earthQuakeMap(boolean r, boolean m, boolean t) {
  int e_diam = 10;
  if (r == true) image(w_map, 0, 0);
  if (index < lines.length) {
    String[] pieces = split(lines[index], ',');
    if (pieces.length >=8) {
      float x = map(float(pieces[7]), -180, 180, 0, width);
      float y = map(float(pieces[6]), 90, -90, 0, height);  
      if (m == true) e_diam = e_diam*int(pieces[8]); 
      fill(255);
      ellipse(x, y, e_diam, e_diam);
      if (pieces.length == 12) {
        //println(pieces[11] + x + " " + y);
        fill(255, 0, 0);
        if (t == true) text(pieces[11], x, y);
        fill(255);
      }
    }
    index = index + 1;
    if (index >= lines.length) index = 0;
  }
  buttons();
}

void keyPressed() {
  if (key == '+') fr++;
  if (key == '-') fr--;
  if (fr < 1) fr = 1;
}

void mouseReleased() {
  if (dist(mouseX, mouseY, 20, height-60)<10) {
    text=!text;
    println("text " + text);
  }
  if (dist(mouseX, mouseY, 20, height-90)<10) {
    magnitude=!magnitude;
    println("magnitude " + magnitude);
  }
  if (dist(mouseX, mouseY, 20, height-120)<10) {
    refresh=!refresh;
    println("refresh " + refresh);
  }
}

void buttons() {
  if (text == false) fill(30*0.3, 200*0.3, 50*0.3);
  else fill(30, 200, 50);
  rect(20, height-60, 20, 20);

  if (magnitude == false) fill(0*0.3, 100*0.3, 200*0.3); 
  else fill(0, 100, 200);
  rect(20, height-90, 20, 20);
  
  if (refresh == false) fill(200*0.3, 255*0.3, 10*0.3); 
  else fill(200, 255, 10);
  rect(20, height-120, 20, 20);
  
  fill(255);
  text("text", 35, height-53);
  text("magnitude", 35, height-83);
  text("refresh", 35, height-113);
}

