PImage img; // 画像を格納するPImageのインスタンスを用意

void setup() {
  size(640, 480, P2D); // キャンバスサイズ，レンダラーの設定
  img = loadImage("cat-1.jpg"); // 画像の読み込み
  textureMode(NORMAL); // テクスチャマッピングの座標空間をNORMALに設定
}

void draw() {
  beginShape(QUADS); // 図形の種類を四角形(QUADS)の設定
  texture(img); // マッピングする画像を指定
  vertex(0, 0, 1, 0);
  vertex(0, 300, 1, 1);
  vertex(300, 300, 0, 1);
  vertex(300, 0, 0, 0);
  endShape(); // ここでおしまい
}
