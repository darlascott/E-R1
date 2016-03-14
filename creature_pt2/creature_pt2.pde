void setup(){
  size(200,200);
  background(255,100,100);


}

void draw(){
  float c1 = map(mouseX, 0, width, 20, 255);
  ellipseMode(CENTER);
  rectMode(CENTER);
 
 translate(100,100);
 
 //body
 stroke(c1);
 fill(c1, 255, 308);
 rect(0,0,40,100);

//head
fill(252,c1,155);
ellipse(0,-30,80,80);

//eyes
fill(c1);
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