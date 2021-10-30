int tileCount = 20;
int actRandomSeed = 0;
int actStrokeCap;

void setup() {
  size(400, 400);
  actStrokeCap = ROUND;
}

void draw() {
  background(255);
  strokeCap(actStrokeCap);
  randomSeed(actRandomSeed);
  
  for (int gridY = 0; gridY < tileCount; gridY++) {
    for (int gridX = 0; gridX < tileCount; gridX++) {
      float posX = width / tileCount * gridX;
      float posY = height / tileCount * gridY;
      int toggle = int (random(0, 2));
      
      if (toggle == 0) {
        strokeWeight(mouseX / 20);
        line(posX, posY, posX + width/tileCount, posY + height/tileCount);
      }
      if (toggle == 1) {
        strokeWeight(mouseY / 20);
        line(posX, posY + width/tileCount, posX + height/tileCount, posY);
      }
    }
  }
}

void mousePressed() {
  actRandomSeed = int(random(1000000));
}

void keyReleased() {
  if (key == '1') actStrokeCap = ROUND;
  if (key == '2') actStrokeCap = SQUARE;
  if (key == '3') actStrokeCap = PROJECT;
}
