Catcher catcher;
Drop[] drops;
Timer timer;
int totalDrops = 0;

boolean game0ver = false;

int score = 0;
int level = 1; 
int lives = 10;
int levelCounter = 0;

PFont f;

void setup() {
  size(640, 360);
  catcher = new Catcher(32);
  drops = new Drop[1000];
  timer = new Timer(300);
  timer.start();
  f = createFont("Arial", 12, true);
}

void draw() {
  background(255);

  if (game0ver) {
    textFont(f, 48);
    textAlign(CENTER);
    fill(0);
    text("GAME OVER", width/2, height/2);
  } else {
    catcher.setLocation(mouseX, mouseY);
    catcher.display();

    //check the timer
    if (timer.isFinished()) {
      //intit one drop
      drops[totalDrops] = new Drop();
      //increment drop below. .

      if (totalDrops < drops.length) {
        totalDrops = 0;
        totalDrops++;
        drops[totalDrops] = new Drop();
      }
      timer.start();
    }

    for (int i = 0; i < totalDrops; i++) {
      if (!drops[i].finished) {

        drops[i].move();
        drops[i].display();

        if (drops[i].reachedBottom()) {
          levelCounter++;
          lives--;
          if (lives <= 0) {
            game0ver = true;
          }
        }
        //if statement for intersection
        if (catcher.intersection(drops[i])) {
          drops[i].caught();
        }
        drops[i].finished();
        levelCounter++;
        score++;
      }
    }

    if (levelCounter >= drops.length) {
      level++;
      levelCounter = 0;
      lives = 10;
      timer.setTime(constrain(300-level*25, 0, 300));
      totalDrops = 0;
    }

    textFont(f, 14);
    fill(0);
    text("Lives left: " + lives, 10, 20);
    rect(10, 24, lives*10, 10);

    text("Level:" + level, 300, 20);
    text("Score:" + score, 300, 40);
  }
}