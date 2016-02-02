int y = height;

void setup(){
  size(640, 360);
  frameRate(30);
}
void draw(){
  background(0);
  stroke(255);
  line(0,y,width,y);
  y = y - 1;
  if (y < 0){
    y = height;
}

}