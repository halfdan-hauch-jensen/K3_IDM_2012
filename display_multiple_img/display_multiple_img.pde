

PImage img [] = new PImage [10];

void setup(){
  //
  size(700, 100); 
  // for loop to load images into "img" array
  for(int i = 0; i < 10; i++){
    String imageName = new String(i + ".jpg");
    img[i] = loadImage(imageName);
    println(imageName + " loaded");
  }
}

void draw(){
  background(200);
  // display images
  for (int i = 0; i < 10; i ++){
    if (i != 0) translate(70, 0); // move the coordinate system when appropriate
    image(img[i], 0, 0); // draw image    
  }
}
