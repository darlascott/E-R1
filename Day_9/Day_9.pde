size(640,360);
background(255);

int y = 80; //Vertical location of each line
int spacing = 10;
int len = 20; //length of each line

for (int x = 50; x <= 150; x += spacing){
  line(x,y,x,y + len);
}