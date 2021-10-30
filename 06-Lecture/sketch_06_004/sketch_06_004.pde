// int型でdragX, dragY, moveX, moveYを宣言
int dragX, dragY, moveX, moveY;

void setup() {
  size(400, 400); // キャンバスサイズを(400, 400)に設定
  noStroke(); // 枠線を描画しない
  // 変数をキャンバスの中心に設定
  dragX = width/2;
  dragY = height/2;
  moveX = width/2;
  moveY = height/2;
}

void draw() {
  background(204); // 背景色を設定
  fill(129, 247, 243, 80); // 塗りつぶし色を設定
  ellipse(dragX, dragY, 100, 100); // 円を描画
  fill(0, 64, 255, 80); // 塗りつぶし色を設定
  ellipse(moveX, moveY, 100, 100); // 円を描画
}

// マウスが移動したらこの関数を実行
void mouseMoved() {
  moveX = mouseX; // moveXにマウスのx座標を代入
  moveY = mouseY; // moveYにマウスのy座標を代入
}

// マウスがドラッグしたらこの関数を実行
void mouseDragged() {
  dragX = mouseX; // dragXにマウスのx座標を代入
  dragY = mouseY; // dragYにマウスのy座標を代入
}
