int NUM = 100; // ボールの数
PVector[] force = new PVector[NUM]; // 力（ベクトル）
PVector[] acceleration = new PVector[NUM]; // 加速度（ベクトル）
PVector[] velocity = new PVector[NUM]; // 速度（ベクトル）
PVector[] location = new PVector[NUM]; // 位置（ベクトル）
PVector gravity; // 重力（ベクトル）
float[] mass = new float[NUM]; // 質量（スカラー）
float[] friction = new float[NUM]; // 摩擦力（スカラー）

void setup() {
  size(800, 600, P2D); // キャンバスサイズとレンダラの設定
  frameRate(60); // フレームレートの設定
  noStroke(); // 枠線を描画しない設定
  gravity = new PVector(0.0, 0.0); // 重力の初期化

  // NUM個の配列を初期化
  for (int i = 0; i < NUM; i++) {
    location[i] = new PVector(0.0, 0.0); // 位置の初期化
    velocity[i] = new PVector(0.0, 0.0); // 速度の初期化
    acceleration[i] = new PVector(0.0, 0.0); // 加速度の初期化
    force[i] = new PVector(random(-10, 10), random(-10, 10)); // 力を(4, 3)に設定
    mass[i] = random(1, 5); // 質量を1.0に設定
    friction[i] = 0.0; // 摩擦力を0.0に設定
  }
}

void draw() {
  background(0); // 背景色を設定
  fill(255); // 塗り潰し色を設定
  translate(width/2, height/2); // 原点をキャンバスの中心に移動

  for (int i = 0; i < NUM; i++) {
    acceleration[i].add(gravity); // 加速度に重力を加える
    velocity[i].add(acceleration[i]); // 速度の計算
    velocity[i].mult(1.0 - friction[i]); // 摩擦力から速度を計算
    location[i].add(velocity[i]); // 位置の計算
    acceleration[i].set(0.0, 0.0); // 加速度を(0, 0)に設定
    ellipse(location[i].x, location[i].y, 20, 20);

    // 左方向の当たり判定と処理
    if (location[i].x < -width/2) {
      velocity[i].x *= -1; // 方向を反転
      location[i].x = -width/2;
    }
    // 右方向の当たり判定と処理
    if (location[i].x > width/2) {
      velocity[i].x *= -1; // 方向を反転
      location[i].x = width/2;
    }

    // 上方向の当たり判定と処理
    if (location[i].y < -height/2) {
      velocity[i].y *= -1; // 方向を判定
      location[i].y = -height/2;
    }

    // 下方向の当たり判定と処理
    if (location[i].y > height/2) {
      velocity[i].y *= -1; // 方向を判定
      location[i].y = height/2; // はみ出さないための処理
    }
  }
}

void mousePressed() {
  // マウスボタンが押された加速度を計算
  for (int i = 0; i < NUM; i++) {
    acceleration[i] = force[i].div(mass[i]); // 加速度の計算
  }
}

void keyPressed() {
  for (int i = 0; i < NUM; i++) {
    // fキーが入力されたらfrictionに0.02を代入
    if (key == 'f') {
      friction[i] = 0.02;
    }
    // gキーが入力されたらgravityに(0, 1)を設定
    if (key == 'g') {
      gravity.set(0.0, 1.0);
    }
  }
}
