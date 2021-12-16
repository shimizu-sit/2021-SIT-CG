PVector force; // 力（ベクトル）
PVector acceleration; // 加速度（ベクトル）
PVector velocity; // 速度（ベクトル）
PVector location; // 位置（ベクトル）
PVector gravity; // 重力（ベクトル）
float mass; // 質量（スカラー）
float friction; // 摩擦力（スカラー）

void setup() {
  size(800, 600, P2D); // キャンバスサイズとレンダラの設定
  frameRate(60); // フレームレートの設定
  noStroke(); // 枠線を描画しない設定
  location = new PVector(0.0, 0.0); // 位置の初期化
  velocity = new PVector(0.0, 0.0); // 速度の初期化
  gravity = new PVector(0.0, 0.0); // 重力の初期化
  acceleration = new PVector(0.0, 0.0); // 加速度の初期化
  force = new PVector(4.0, 3.0); // 力を(4, 3)に設定
  mass = 1.0; // 質量を1.0に設定
  friction = 0.0; // 摩擦力を0.0に設定
}

void draw() {
  background(0); // 背景色を設定
  fill(255);
  acceleration.add(gravity); // 加速度に重力を加える
  velocity.add(acceleration); // 速度の計算
  velocity.mult(1.0 - friction); // 摩擦力から速度を計算
  location.add(velocity); // 位置の計算
  acceleration.set(0.0, 0.0); // 加速度を(0, 0)に設定
  ellipse(location.x, location.y, 20, 20);
  
  // 左右方向の当たり判定と処理
  if (location.x > width || location.x < 0) {
    velocity.x *= -1; // 方向を反転
  }
  
  // 上方向の当たり判定と処理
  if (location.y < 0) {
    velocity.y *= -1; // 方向を判定
  }
  
  // 下方向の当たり判定と処理
  if (location.y > height) {
    velocity.y *= -1; // 方向を判定
    location.y = height; // はみ出さないための処理
    /*
    重量が働く場合下方向に+1.0pxが追加されるため速度の方向を上方向にしても
    位置はheightより大きい値なる．
    その繰り返しで下の沈んでします．
    */
  }
}

void mousePressed() {
  // マウスボタンが押された加速度を計算
  acceleration = force.div(mass); // 加速度の計算
}

void keyPressed() {
  // fキーが入力されたらfrictionに0.02を代入
  if (key == 'f') {
    friction = 0.02;
  }
  // gキーが入力されたらgravityに(0, 1)を設定
  if (key == 'g') {
    gravity.set(0.0, 1.0);
  }
}
