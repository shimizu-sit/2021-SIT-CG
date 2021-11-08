float x1, x2, x3, x4, x5;
float y1, y2, y3, y4, y5;
float width1, width2, width3, width4, width5;
float height1, height2, height3, height4, height5;
float xSpeed1, xSpeed2, xSpeed3, xSpeed4, xSpeed5;
float ySpeed1, ySpeed2, ySpeed3, ySpeed4, ySpeed5;

void setup() {
  size(400, 400);
  rectMode(CENTER);
  x1 = random(width);
  x2 = random(width);
  x3 = random(width);
  x4 = random(width);
  x5 = random(width);

  y1 = random(height);
  y2 = random(height);
  y3 = random(height);
  y4 = random(height);
  y5 = random(height);

  width1 = random(10, 100);
  width2 = random(10, 100);
  width3 = random(10, 100);
  width4 = random(10, 100);
  width5 = random(10, 100);

  height1 = random(10, 100);
  height2 = random(10, 100);
  height3 = random(10, 100);
  height4 = random(10, 100);
  height5 = random(10, 100);

  xSpeed1 = random(-10, 10);
  xSpeed2 = random(-10, 10);
  xSpeed3 = random(-10, 10);
  xSpeed4 = random(-10, 10);
  xSpeed5 = random(-10, 10);

  ySpeed1 = random(-10, 10);
  ySpeed2 = random(-10, 10);
  ySpeed3 = random(-10, 10);
  ySpeed4 = random(-10, 10);
  ySpeed5 = random(-10, 10);
}

void draw() {
  background(0);
  rect(x1, y1, width1, height1);
  x1 += xSpeed1;
  y1 += ySpeed1;

  rect(x2, y2, width2, height2);
  x2 += xSpeed2;
  y2 += ySpeed2;

  rect(x3, y3, width3, height3);
  x3 += xSpeed3;
  y3 += ySpeed3;

  rect(x4, y4, width4, height4);
  x4 += xSpeed4;
  y4 += ySpeed4;

  rect(x5, y5, width5, height5);
  x5 += xSpeed5;
  y5 += ySpeed5;

  if (x1 < 0 || x1 > width) xSpeed1 *= -1;
  if (y1 < 0 || y1 > height) ySpeed1 *= -1;
  if (x2 < 0 || x2 > width) xSpeed2 *= -1;
  if (y2 < 0 || y2 > height) ySpeed2 *= -1;
  if (x3 < 0 || x3 > width) xSpeed3 *= -1;
  if (y3 < 0 || y3 > height) ySpeed3 *= -1;
  if (x4 < 0 || x4 > width) xSpeed4 *= -1;
  if (y4 < 0 || y4 > height) ySpeed4 *= -1;
  if (x5 < 0 || x5 > width) xSpeed5 *= -1;
  if (y5 < 0 || y5 > height) ySpeed5 *= -1;
}
