boolean spin = false;
float angle = .1;
int x = 50;
int y = 50;

void setup(){
 size(400,400); 
}

void draw(){
  background(55);
  fill(#D36713);
  noStroke();

  if(spin == false){
    rect(x,y,30,30);
    ellipse(200,200,50,50);
    
  }
  if(mousePressed){
  if(mouseX > x && mouseX < 80 && mouseY > y && mouseY < 150){
    pushMatrix();
       translate(65,65);
       rotate(angle);
       rect(0,0,30,30);
    popMatrix();//end isolation
  angle += .05;
  ellipse(200,200,x,y);
  spin = true;
  }}
  else spin = false;
  delay(10);
  }