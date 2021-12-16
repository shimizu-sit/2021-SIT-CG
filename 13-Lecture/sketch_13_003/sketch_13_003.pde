// オブジェクトmyCircleの準備
DrawEllipse myCircle;

void setup() {
  size(800, 800);

  // DrawEllipseクラスをインスタンス化して
  // myCircle オブジェクトを生成する
  // コンストラクタにdiameterとlocationを指定
  myCircle = new DrawEllipse(400, new PVector(width/2, height/2));
}

void draw() {
  // myCircle クラスのellipseDraw()を呼び出し円を描画
  myCircle.ellipseDraw();
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
