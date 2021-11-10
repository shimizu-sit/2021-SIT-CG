int NUM = 100; // 描画する円の数を宣言して初期化
float[] x = new float[NUM]; // x座標の配列宣言
float[] y = new float[NUM]; // y座標の配列宣言
float[] ringSize = new float[NUM]; // righSizeの配列宣言
int clickNum = 0; // クリック数を管理する変数の宣言と初期化
color col = #000000; // 初期の色を黒に設定

void setup() {
  size(600, 600); // キャンバスサイズを(600,600)に設定
  frameRate(60); // フレームレートを60に設定
  noFill(); // 塗りつぶしをしない設定
  smooth(); // 円を滑らかに描画する設定
  strokeWeight(3); // 枠線の太さを3に設定
  for (int i = 0; i < NUM; i++) { // 種々の配列を初期化
    x[i] = 0;
    y[i] = 0;
    ringSize[i] = 0;
  }
}

void draw() {
  background(255); // 背景色を白に設定
  // for文をNUM回繰り返す
  for (int i = 0; i < NUM; i++) {
    // ringSizeのi番目の値が0より大きい場合
    if (ringSize[i] > 0) {
      stroke(col);
      ringSize[i] += 4; // ringSizeに4を足す
    }
    // 円の描画
    ellipse(x[i], y[i], ringSize[i], ringSize[i]);
  }
}

void mousePressed() { // マウスが押されたら実行
  // ringSize配列のclickNum番目に1を代入
  ringSize[clickNum] = 1;
  x[clickNum] = mouseX; // x配列のclickNum番目にmouseX代入
  y[clickNum] = mouseY; // y配列のclickNum番目にmouseY代入

  clickNum++; // clickNumに1つ足す
  if (clickNum >= NUM) { // clickNumがNUM以上の場合
    clickNum = 0; // clickNumを0にする
  }
}

void keyPressed() {
  if (key == 'r') col = #FF0000;
  if (key == 'g') col = #00FF00;
  if (key == 'b') col = #0000FF;
}
