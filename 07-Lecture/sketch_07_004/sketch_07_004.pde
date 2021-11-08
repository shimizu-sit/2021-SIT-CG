float[] x = new float[5]; // x座標を格納する配列宣言
float[] y = new float[5]; // y座標の配列宣言
float[] rectWidth = new float[5]; // rectWidthの配列宣言
float[] rectHeight = new float[5]; // rectHeightの配列宣言
float[] xSpeed = new float[5]; // xSpeedの配列宣言
float[] ySpeed = new float[5]; // ySpeedの配列宣言

void setup() {
  size(400, 400); // キャンバスサイズを(400, 400)に設定
  frameRate(30); // フレームレートを30に設定
  noStroke(); // 枠線を描画しない設定
  rectMode(CENTER); // 長方形の描画方法をCENTERに設定
  fill(65, 105, 255,  80); // 塗りつぶし色をroyalblueに設定
  
  for (int i = 0; i < 5; i++) {
    x[i] = random(width); // x座標配列に乱数値を代入
    y[i] = random(height); // y座標配列に乱数値を代入
    rectWidth[i] = random(10, 100); // rectWidth配列に乱数値を代入
    rectHeight[i] = random(10, 100); // rectHeight配列に乱数値を代入
    xSpeed[i] = random(-10, 10); // xSpeed配列に乱数値を代入
    ySpeed[i] = random(-10, 10); // ySpeed配列に乱数値を代入
  }
}

void draw() {
  background(205); // 背景色を設定
  for (int i = 0; i < 5; i++) {
    rect(x[i], y[i], rectWidth[i], rectHeight[i]); // 長方形を描画
    x[i] += xSpeed[i]; // x軸方向の移動量
    y[i] += ySpeed[i]; // y軸方向の移動量
    
    // 壁に当たったら反射する処理
    if (x[i] > width || x[i] < 0) {
      xSpeed[i] *= -1;
    }
    if (y[i] > height || y[i] < 0) {
      ySpeed[i] *= -1;
    }
  }
}
