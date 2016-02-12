void setup(){//action loops once
  size(600,650);//size of image
}

void draw(){//action loops forever
  background(225);//color of image
  
  //black rectangle
  fill(0);//color
  rectMode(CORNER);//upper left corner
  noStroke();//cant draw the outline
  rect(20,20,560,330);//width and hight
  
  //quad
  stroke(255,0,0);// lines and boreders around shapes
  noFill();//cant fill
  strokeWeight(1);//default
  quad(300,150,100,350,300,550,500,350);//quadrilateral
  
  //top circle
  fill(255);//white
  noStroke();//cant draw the outline
  ellipse(300,150,80,80);//oval
  
  //left circle
  fill(0,255,0,150);//color
  noStroke();//cant draw the outline
  ellipse(100,350,80,80);//oval
  
  //right circle
  noFill();//cant fill
  strokeWeight(10);//beastly
  stroke(0,0,255);//set color and use to draw lines
  ellipse(500,350,80,80);//oval
  strokeWeight(1);//default
  
  //triangle
  fill(240,200);//color in shape
  triangle(300,440,140,600,460,600);// shape made with three points
  
  //rectangle on the bottom of the triangle
  fill(255);//color in shape
  stroke(0,0,255);//set color and use to draw lines
  rectMode(CENTER);//upper left corner
  rect(300,600,10,10);//width and hight
  
  //line between two points
  stroke(238,23,250);//set color and use to draw lines
  strokeWeight(3);//thicker
  line(300,150,300,600);//2d line
  
  //arc
  stroke(0);//set color and use to draw lines
  noFill();//cant fill
  strokeWeight(1);//default
  arc(500,550,400,400,PI,PI+HALF_PI);//outer edge of ellipse
 
  //point
  stroke(255,0,0);//set color and use to draw lines
  strokeWeight(3);//thicker
  point(500,550);//draws a point
  
}