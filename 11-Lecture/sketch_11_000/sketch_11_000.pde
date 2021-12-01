float rx = 0.0; // X軸を中心に回転する回転角を管理する変数宣言と初期化
float ry = 0.0; // Y軸を中心に回転する回転角を管理する変数宣言と初期化
float rz = 0.0; // Z軸を中心に回転する回転角を管理する変数宣言と初期化

PImage dice1; // サイコロの1の目を入れるためにdice1を宣言
PImage dice2; // サイコロの2の目を入れるためにdice2を宣言
PImage dice3; // サイコロの3の目を入れるためにdice3を宣言
PImage dice4; // サイコロの4の目を入れるためにdice4を宣言
PImage dice5; // サイコロの5の目を入れるためにdice5を宣言
PImage dice6; // サイコロの6の目を入れるためにdice6を宣言

void setup() {
  size(800, 800, P3D); // キャンバスサイズとレンダラーの設定
  noStroke(); // 枠線を描画しなし
  dice1 = loadImage("dice1.png"); // dice1にdice1.pngを読み込む
  dice2 = loadImage("dice2.png"); // dice2にdice2.pngを読み込む
  dice3 = loadImage("dice3.png"); // dice3にdice3.pngを読み込む
  dice4 = loadImage("dice4.png"); // dice4にdice4.pngを読み込む
  dice5 = loadImage("dice5.png"); // dice5にdice5.pngを読み込む
  dice6 = loadImage("dice6.png"); // dice6にdice6.pngを読み込む
  textureMode(NORMAL); // テクスチャの貼り付け方法をNORMALに設定
}

void draw() {
  background(204); // 背景色の設定
  translate(width/2, height/2, 0); // 原点をキャンバスの中心に移動
  rotateX(rx); // X軸を中心に回転角rxの値で回転
  rotateY(ry); // Y軸を中心に回転角ryの値で回転
  rotateZ(rz); // Z軸を中心に回転角rzの値で回転
  scale(160); // 160倍に拡大

  makeCube(); // キューブを描画する関数を呼び出す

  rx += 0.01; // rxに0.01を追加
  ry += 0.02; // ryに0.02を追加
  rz += 0.05; // rzに0.05を追加
}

void makeCube() {
  beginShape(QUADS); // 図形の種類を四角形(QUADS)に設定
  texture(dice1); // 貼り付ける画像を指定
  vertex(-1,  1, 1, 0, 0); // 第4,5変数にUV座標を追加
  vertex( 1,  1, 1, 0, 1);
  vertex( 1, -1, 1, 1, 1);
  vertex(-1, -1, 1, 1, 0);
  endShape(); // ここで終わらせる

  beginShape(QUADS);
  texture(dice2);
  vertex( 1,  1,  1);
  vertex( 1,  1, -1);
  vertex( 1, -1, -1);
  vertex( 1, -1,  1);

  fill(0, 0, 255);
  vertex( 1, 1, -1);
  vertex(-1, 1, -1);
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);

  fill(255, 255, 0);
  vertex(-1, 1, -1);
  vertex(-1, 1, 1);
  vertex(-1, -1, 1);
  vertex(-1, -1, -1);

  fill(0, 255, 255);
  vertex(-1, 1, -1);
  vertex( 1, 1, -1);
  vertex( 1, 1, 1);
  vertex(-1, 1, 1);

  fill(255, 0, 255);
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);
  vertex( 1, -1, 1);
  vertex(-1, -1, 1);

  endShape();
}
