int ures = 5;
int vres = 5;

void setup() {
  size(400, 400, P3D);
  noFill();
}

void draw() {
  background(204);

  translate(width/2, height/2, 0);

  sphereDetail(ures, vres);
  sphere(width/3);
}

void keyPressed() {
  if (keyCode == UP) ures += 1;
  if (keyCode == DOWN) ures -= 1;
  if (keyCode == LEFT) vres += 1;
  if (keyCode == RIGHT) vres -= 1;
}
