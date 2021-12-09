PVector force; // 力変数の宣言
PVector acceleration; // 加速度変数の宣言
PVector velocity; // 速度変数の宣言
PVector location; // 位置変数の宣言
float mass; // 質量変数の宣言

void setup() {
  size(800, 600, P2D); // キャンバスとレンダラの設定
  frameRate(60); // フレームレートの設定
  noStroke(); // 枠線を描画しない設定
  location = new PVector(0.0, 0.0); // 位置の初期化
  velocity = new PVector(0.0, 0.0); // 速度の初期化
  acceleration = new PVector(0.0, 0.0); // 加速度の初期化
  force = new PVector(4.0, 3.0); // 力を(4,3)で設定
  mass = 1.0; // 質量を1.0で設定
}

void draw() {
  background(204); // 背景色を設定
  fill(178, 34, 34, 80); // 塗りつぶし色を設定
  velocity.add(acceleration); // 速度を計算
  location.add(velocity); // 位置を計算
  acceleration.set(0.0, 0.0); //加速度を(0, 0)に設定
  ellipse(location.x, location.y, 20, 20); // ボールを描画

  // ボールが画面外にでたらスタートに戻る
  if ( location.x > width || location.y > height) {
    setup();
  }
}

void mousePressed() {
  // マウスボタンが押されたら力と質量で加速度を計算
  acceleration = force.div(mass);
}
