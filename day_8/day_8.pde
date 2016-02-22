void setup(){
  size(200,200);
  background(255,100,100);
}

void draw(){
  ellipseMode(CENTER);
  rectMode(CENTER);
 
 translate(100,100);
 
 //body
 stroke(0);
 fill(150, 255, 308);
 rect(0,0,40,100);

//head
fill(252, 199, 155);
ellipse(0,-30,80,80);

//eyes
fill(0);
ellipse(-19,-30,16,17);
ellipse(19,-30,16,17);

//mouth
arc(0,-7,20,20,0, PI+QUARTER_PI, CHORD);

//hands
stroke(0);
line(-20,30,-50,-20);

//legs
stroke(0);
line(-15,50,-30,60);
line(15,50,30,60);
}