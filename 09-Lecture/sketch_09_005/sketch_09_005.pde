// 後で修正とコメントを入れる
float angle = 0.0;

void setup() {
  size(800, 800, P3D);
  frameRate(30);
  noStroke();
  textSize(32);
}

void draw() {
  background(204);
 
  spotLight(0, 255, 0,
            300, 0, 0,
            0, 1.0, 0,
            PI/4, 1);
  
  translate(width/2, height/2);
  rotateX(angle);
  rotateY(angle * 0.8);
  box(width/3);
  
  angle += 0.05;
}
