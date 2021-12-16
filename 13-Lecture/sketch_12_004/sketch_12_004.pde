// オブジェクトmyCircleの準備
DrawEllipse myCircle1; // 1つ目の円
DrawEllipse myCircle2; // 2つ目の円

void setup() {
  size(800, 800);

  // 2つのオブジェクトについてコンストラクタでプロパティを指定
  myCircle1 = new DrawEllipse(200, new PVector(width/4, height/2));
  myCircle2 = new DrawEllipse(200, new PVector(3*width/4, height/2));
}

void draw() {
  // myCircle クラスのellipseDraw()を呼び出し円を描画
  myCircle1.ellipseDraw();
  myCircle2.ellipseDraw();
}

class DrawEllipse {
  float diameter; // 直径（プロパティ）
  PVector location; // 位置（プロパティ）

  // コンストラクタ
  DrawEllipse(float _diameter, PVector _location) {
    diameter = _diameter; // コンストラクタの引数で受け取ったものを設定
    location = _location; // コンストラクタの引数で受け取ったものを設定
  }

  // 描画する関数
  void ellipseDraw() {
    ellipse(location.x, location.y, diameter, diameter);
  }
}
