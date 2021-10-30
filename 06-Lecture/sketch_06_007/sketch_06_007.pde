int stepX, stepY; // int型でstepX,stepYを宣言

void setup() {
  size(800, 400); // キャンバスサイズを(800, 400)に設定
  noStroke(); // 枠線を描画しない
  colorMode(HSB, width, height, 100); // 色空間を設定
}

void draw() {
  stepX = mouseX + 2; // stepXにマウスのX座標+2を代入
  stepY = mouseY + 2; // stepYにマウスのY座標+2を代入
  // キャンバスをstepXとstepYの値で分割する
  for (int gridY = 0; gridY < height; gridY += stepY) {
    for (int gridX = 0; gridX < width; gridX += stepX) {
      // 塗りつぶし色を設定
      // 色相はgridXの値，彩度はキャンバスサイズからgridYを引いた値
      fill(gridX, height - gridY, 80);
      // (gridX, gridY)から幅stepX,高さstepYの長方形を描画
      rect(gridX, gridY, stepX, stepY);
    }
  }
}
