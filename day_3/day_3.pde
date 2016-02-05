int stroke = 1;




void setup(){
 size(200,200);
 background(255);
}

void draw(){
  stroke(0);
  strokeWeight(stroke); 
  if(mousePressed) {
  line(pmouseX,pmouseY,mouseX,mouseY);
  //draw a line, last position to current pos.
  
}
}

void keyPressed(){
  if(keyCode == UP){
    stroke++;
if(keyCode == DOWN){
stroke--;
} 
if(keyCode == LEFT){
  background(random(225), random(204), random(5));
}

if(keyCode ==RIGHT){
  (random(674, random(782), random(982));
}
  }