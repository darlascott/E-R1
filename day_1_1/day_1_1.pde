
int circleX = 0;
int circleY = 100;
void setup(){
  size(200,200);
}
void draw(){
  stroke(0);
  fill(175);
  ellipse(circleX,circleY,75,69);
circleX = circleX + 1;
}