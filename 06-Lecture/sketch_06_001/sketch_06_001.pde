int gray = 0; // int型でgray変数を宣言，0で初期化

void setup() {
  size(200, 200); // サイズを(200, 200)に設定
}

void draw() {
  background(gray); // 背景色をgray変数の値で描画
  if ( gray > 255) { // grayの値が255より大きい場合
    gray = 0; // grayの値を0にする
  }
}

// マウスボタンが押されたらこの関数を実行
void mousePressed() {
  gray += 20; // マウスボタンが押されたらgrayの20加算する
}
