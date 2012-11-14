
int saveCount = 0; 
long lastMillis = 0;
int timer = 300;
int imgCount = 0;
int speed = 2;
int eRadius = 15; 
float x = 100;
float y = 100;
float angle = PI/7;
PImage img [] = new PImage [14];  // Declare variable "a" of type PImage

void setup() {
  for(int i = 0; i < img.length; i++){
    img[i] = loadImage((i)+".jpg");  // Load the image into the program  
  }
  size(img[0].width, img[0].height);
}

void draw() {
  imageAnimation();
  movingRect();
}

void imageAnimation(){
  if (millis() > lastMillis + timer){
    if (imgCount < img.length) image(img[imgCount], 0, 0);
    else imgCount = -1;
    lastMillis = millis();
    imgCount++;
  }
}

void movingRect(){
  //background(0);
  if (x + eRadius > width) {
    angle = PI - angle;
  }
  if (y + eRadius > height) {
    angle = 2 * PI - angle;
  }
  if (x < 0 + eRadius){
    angle = 3 * PI - angle;
  }
  if (y < 0 + eRadius){
    angle = 2* PI - angle;
  }
  x = x + speed * cos( angle );
  y = y + speed * sin( angle );
  ellipse(x, y, 2*eRadius, 2*eRadius);
}

void mouseReleased(){
  save(saveCount+"");
  saveCount++;
}

