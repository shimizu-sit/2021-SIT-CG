void setup() {
  size(400, 400); // キャンバスサイズを(400, 400)に設定
  noStroke(); // 枠線を描画しない
  frameRate(10); // フレームレートを10に設定
  textSize(80); // テキストサイズを80pxに設定
}

void draw() {
  background(204);
  textAlign(CENTER); // 文字を中央(CENTER)揃いに設定
  // キーボードの何かキーが押された場合
  if (keyPressed == true) {
    // 文字の色をランダムに設定
    fill(random(128,255), 80, 255, 90);
    // ランダムな位置にkeyの文字を描画
    text(key, random(width), random(height));
  }
}
