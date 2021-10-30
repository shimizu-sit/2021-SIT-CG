void setup() {
  size(400, 400); // キャンバスサイズを(400, 400)に設定
  background(255); // 背景を白(255)に設定
  noStroke(); // 枠線の描画をしない
}

// draw関数には何も書かないがアニメーションを実行する上で必要
void draw() {
}

// マウスボタンが押された場合にこの関数が実行される
void mousePressed() {
  fill(129, 247, 243, 80); // 塗りつぶし色を指定
  rect(mouseX, mouseY, 80, 80); // マウスの座標に描画
}

// マウスボタンが離れた場合にこの関数が実行される
void mouseReleased() {
  fill(0, 64, 255, 80); // 塗りつぶし色を指定
  rect(mouseX, mouseY, 80, 80); // マウスの座標に描画
}
