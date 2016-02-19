void setup(){
  size(500,500);
  background(255);
}

void draw(){
  ellipseMode(CENTER);
  rectMode(CENTER);
 
 translate(mouseX,mouseY);
 
 //body
 stroke(0);
 fill(150);
 rect(0,0,20,100);

//head
fill(255);
ellipse(0,-30,60,60);

//eyes
fill(0);
ellipse(-19,-30,16,32);
ellipse(19,-30,16,30);

//legs
stroke(0);
line(-10,50,-20,60);
line(10,50,20,60);
}