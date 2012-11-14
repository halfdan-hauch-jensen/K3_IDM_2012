/*
Examples of digital clock using custom images named "0.jpg" - "9.jpg" 
and the computers internal clock
Halfdan@h-h-j.dk
*/

PImage img [] = new PImage [10];
int date[] = new int[10];
int img_W_H = 70;
int x = 50;
int y = 5;


void setup(){
  background(0);
  for(int i = 0; i < img.length; i++){
    img[i] = loadImage(i+".jpg");  // Load the image into the program  
  }
  size(600, 3*img[0].height);
  fill(100, 0, 0);
  textSize(80);
}

void draw(){
  date_time();
  printlnDate();    
}

void date_time(){
  // split date into array
  date[0] = day()/10;
  date[1] = day()%10;
  date[2] = month()/10;
  date[3] = month()%10;
  date[4] = hour()/10;
  date[5] = hour()%10;
  date[6] = minute()/10;
  date[7] = minute()%10;
  date[8] = second()/10;
  date[9] = second()%10;
  // draw date
  image(img[date[0]], x+10, y+20, img_W_H, img_W_H);
  image(img[date[1]], x+img_W_H+10, y+20, img_W_H, img_W_H);
  image(img[date[2]], x+2*img_W_H + 40, y+20, img_W_H, img_W_H);
  image(img[date[3]], x+3*img_W_H + 40, y+20, img_W_H, img_W_H);
  text("/", x+145, y+80);
  // draw time a day
  image(img[date[4]], x+10, y+120, img_W_H, img_W_H);
  image(img[date[5]], x+img_W_H + 10, y+120, img_W_H, img_W_H);
  text(":", x+150, y+180);
  image(img[date[6]], x+2*img_W_H + 40, y+120, img_W_H, img_W_H);
  image(img[date[7]], x+3*img_W_H + 40, y+120, img_W_H, img_W_H);
  image(img[date[8]], x+4*img_W_H + 70, y+120, img_W_H, img_W_H);
  image(img[date[9]], x+5*img_W_H + 70, y+120, img_W_H, img_W_H);
  text(":", x+320, y+180);
}

void printlnDate(){
  print(day()/10);
  print(day()%10 + "/");
  
  print(month()/10);
  println(month()%10 + " - ");
  
  print(hour()/10);
  print(hour()%10 + ":");
  
  print(minute()/10);
  print(minute()%10 + ":");

  print(second()/10);
  println(second()%10);

  println();
}
