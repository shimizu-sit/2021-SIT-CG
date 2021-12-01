PVector location; // 位置を保存する変数を宣言
PVector velocity; // 速度を保存する変数を宣言

void setup() {
  size(800, 800, P2D); // キャンバスサイズとレンダラを設定
  frameRate(60); // フレームレートを設定
  noStroke(); // 枠線を描画しない設定
  fill(0, 142, 204, 80); // 塗りつぶし色を設定
  // 初期位置を設定
  location = new PVector(random(width), random(height));
  // 移動量を設定
  velocity = new PVector(random(-10, 10), random(-10, 10));
}

void draw() {
  background(255); // 背景色を設定
  ellipse(location.x, location.y, 50, 50); // ボールを描画
  // 位置ベクトルと速度ベクトルを加算して次の位置を決める
  location.add(velocity);
  
  // 壁の当たり判定処理
  if (location.x > width || location.x < 0) {
    velocity.x *= -1;
  }
  if (location.y > height || location.y < 0) {
    velocity.y *= -1;
  }
}
