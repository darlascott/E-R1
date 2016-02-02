void setup(){
  size(200,200);
}
void draw(){
  background(100);
  stroke(250);
  //line(0,0,mouseX,mouseY);
  //print("you pressed" + keyCode);
  fill(0);
  rectMode(CENTER); 
  rect(width/2,height/2,mouseX,mouseY);
}

void mousepressed(){
  println(mouseX + "," +mouseY);
}