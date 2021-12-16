// オブジェクトmyCircleの準備
DrawEllipse myCircle;

void setup() {
  size(800, 800);

  // DrawEllipseクラスをインスタンス化して
  // myCircle オブジェクトを生成する
  myCircle = new DrawEllipse();

  // myCircleクラスのellipseSetup()を呼び出して初期化
  myCircle.ellipseSetup();
}

void draw() {
  // myCircle クラスのellipseDraw()を呼び出し円を描画
  myCircle.ellipseDraw();
}

class DrawEllipse {
  float diameter; // 直径（プロパティ）
  PVector location; // 位置（プロパティ）

  // 初期化関数
  void ellipseSetup() {
    diameter = 400; // 直径を400に設定
    location = new PVector(width/2, height/2); // 位置をキャンバスの中心に設定
  }

  // 描画する関数
  void ellipseDraw() {
    ellipse(location.x, location.y, diameter, diameter);
  }
}
