PImage img; // 画像を格納するPImageのインスタンスを用意

void setup() {
  size(800, 800); // キャンバスサイズの設定
  img = loadImage("cat-1.jpg"); // 画像の読み込み
}

void draw() {
  background(0); // 背景色を設定
  image(img, 0, 0); // 読み込んだ画像を(0, 0)に表示
}
