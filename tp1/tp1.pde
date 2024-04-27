void setup (){
  size(800,400);
  background(255);
  PImage Piña;
  Piña=loadImage("Piña.png");
  image(Piña,0,0,400,400);
}
void mouseClicked(){
    ellipse(mouseX,mouseY,240,210);
    println(mouseX,mouseY);
}
void draw(){
  
  ellipse(600,250,240,210);
  
}
