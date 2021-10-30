// ブール型でdrawkeyを宣言，falseで初期化
boolean drawKey = false;
char ch; // char型（文字型）でchを宣言

void setup() {
  size(400, 400); // キャンバスサイズを(400, 400)に設定
  noStroke(); // 枠線を描画しない
  frameRate(10); // フレームレートを10に設定
  textSize(80); // テキストサイズを80pxに設定
}

void draw() {
  background(204); // 背景色を設定
  textAlign(CENTER); // 文字を中央(CENTER)揃いに設定
  if (drawKey == true) { // drawkeyがtrueの場合
    // 文字の塗りつぶし色をランダムに設定
    fill(random(128,255), 80, 255, 90);
    // ランダムな位置にchの文字を描画
    text(ch, random(width), random(height));
  }
}

// キーボードのキーが押されたら以下の関数が実行
void keyPressed() {
  drawKey = true; // drawKeyをtrueに設定
  ch = key; // 文字型chに入力されたキーを代入
}

// キーボードの押されたキーが離されたら以下の関数が実行
void keyReleased() {
  drawKey = false; // drawKeyをfalseに設定
}
