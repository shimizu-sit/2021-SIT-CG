float angle = 0.0; // float型で回転角度(angle)変数の宣言と初期化

void setup() {
  size(400, 400, P3D); // 3Dを描画するために"P3D"を設定
  frameRate(60); // フレームレートを60に設定
  noStroke(); // 枠線の描画をしない
  rectMode(CENTER); // 長方形の描画方法をCENTERに設定
}
void draw() {
  background(0); // 背景を黒に設定
  translate(width/2, height/2); // 原点をキャンバスの中心に移動
  rotateX(angle); // X軸を中心にangleの値で回転
  rotateY(angle * 1.2); // Y軸を中心にangle x 1.2の値で回転
  rotateZ(angle * 0.8); // Z軸を中心にangle x 0.8の値で回転
  rect(0, 0, width/2, height/2); // 長方形を描画
  angle += 0.05; // 回転させるためangleに0.05を足す
}
