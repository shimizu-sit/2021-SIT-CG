int NUM = 100; //  ボールの数を設定
float[] radius = new float[NUM]; // ボールの半径を保存する配列を用意
PVector[] location = new PVector[NUM]; // 位置を保存する配列を用意
PVector[] velocity = new PVector[NUM]; // 移動量を保存する配列を用意

void setup() {
  size(800, 800); // キャンバスサイズを設定
  frameRate(60); // フレームレートを設定
  noStroke(); // 枠線を描画しない設定
  fill(0, 142, 204, 80); // 塗りつぶし色を設定
  for (int i = 0; i < NUM; i++) { // ボールの初期化
    radius[i] = random(10, 100); // 半径を乱数で設定
    // ボールの初期生成位置を乱数で設定
    location[i] =
      new PVector(
      random(radius[i] + 1, width - radius[i] + 1),
      random(radius[i] + 1, height - radius[i] + 1)
      );
    // 移動量を乱数で設定
    velocity[i] = new PVector(random(-10, 10), random(-10, 10));
  }
}

void draw() {
  background(255); // 背景色を設定

  // NUMの数だけボールの制御
  for (int i = 1; i < NUM; i++) {
    // ボールをlocationとradiusを使って描画
    ellipse(location[i].x, location[i].y, radius[i] * 2, radius[i] * 2);
    // locationベクトルに移動量を追加
    location[i].add(velocity[i]);

    // 壁の当たり判定の処理
    if (location[i].x > width - radius[i] + 1 || location[i].x < radius[i] + 1) {
      velocity[i].x *= -1;
    }

    if (location[i].y > height- radius[i] + 1 || location[i].y < radius[i] + 1) {
      velocity[i].y *= -1;
    }
  }
}
