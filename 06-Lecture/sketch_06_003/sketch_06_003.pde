// float型で直径(diameter)を宣言，0.0で初期化
float diameter = 0.0;

void setup() {
  size(400, 400); // キャンバスサイズを(400, 400)に設定
  colorMode(HSB, 400, 100, 100, 100); // 色空間の設定
  background(204); // 背景色を設定
  frameRate(30); // フレームレートを30に設定
  noStroke(); // 枠線を描画しない
}

void draw() {
  if (mousePressed) { // マウスボタンが押されたら以下を実行
    // 塗りつぶし色をマウスのx座標を元に設定
    fill(mouseX, 80, 100, 80);
    // 直径を1フレーム前のマウスのx座標と現フレームのマウスのx座標の差の絶対に設定
    diameter = abs(pmouseX - mouseX);
    // マウスの座標に円を描画
    ellipse(mouseX, mouseY, diameter, diameter);
  }
}
