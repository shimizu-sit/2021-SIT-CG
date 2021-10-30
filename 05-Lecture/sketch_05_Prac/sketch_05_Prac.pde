float angle = 0.0;

void setup() {
  size(600, 600);
  frameRate(60);
  noStroke();
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(0);

  pushMatrix();
  translate(width/2, height/2);
  rotate(angle);
  fill(60, 80, 100, 100);
  ellipse(0, 0, 400, 400);

  pushMatrix();
  translate(0, 100);
  rotate(angle);
  fill(90, 80, 100, 80);
  rect(0, 0, 80, 80);
  popMatrix();

  pushMatrix();
  translate(100, 0);
  rotate(angle);
  fill(180, 80, 100, 80);
  rect(0, 0, 80, 80);
  popMatrix();

  pushMatrix();
  translate(0, -100);
  rotate(angle);
  fill(270, 80, 100, 80);
  rect(0, 0, 80, 80);
  popMatrix();

  pushMatrix();
  translate(-100, 0);
  rotate(angle);
  fill(0, 80, 100, 80);
  rect(0, 0, 80, 80);
  popMatrix();
  popMatrix();

  angle += 0.1;
  saveFrame("frames/######.png");
}
