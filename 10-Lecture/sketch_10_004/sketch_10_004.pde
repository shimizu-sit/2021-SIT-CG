PImage img;

void setup() {
  size(640, 480, P2D);
  img = loadImage("cat-1.jpg");
  textureMode(NORMAL);
}

void draw() {
  beginShape(QUADS);
  texture(img);
  vertex(0, 0, 0, 0);
  vertex(0, 200, 0, 1);
  vertex(200, 200, 1, 1);
  vertex(200, 0, 1, 0);
  endShape();
}
