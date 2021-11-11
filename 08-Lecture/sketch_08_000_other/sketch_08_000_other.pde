int NUM = 100; // 描画する円の数を宣言して初期化
float[] x = new float[NUM]; // x座標の配列宣言
float[] y = new float[NUM]; // y座標の配列宣言
float[] ringSize = new float[NUM]; // righSizeの配列宣言
int[] ringColor = new int[NUM]; // 色を保存する配列宣言
int clickNum = 0; // クリック数を管理する変数の宣言と初期化

void setup() {
  size(600, 600); // キャンバスサイズを(600,600)に設定
  frameRate(60); // フレームレートを60に設定
  noFill(); // 塗りつぶしをしない設定
  smooth(); // 円を滑らかに描画する設定
  strokeWeight(3); // 枠線の太さを3に設定
  stroke(#000000);
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
      ringSize[i] += 4; // ringSizeに4を足す
    }
    if (keyPressed) { // キー入力がされたら実行
      if (key == 'r') stroke(#FF0000); // rが押されたら赤に設定
      if (key == 'g') stroke(#00FF00); // gが押されたら緑に設定
      if (key == 'b') stroke(#0000FF); // bが押されたら青に設定
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
