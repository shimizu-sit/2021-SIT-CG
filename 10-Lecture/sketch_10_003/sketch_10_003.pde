float rx = 0.0; // X軸を中心に回転する回転角を管理する変数宣言と初期化
float ry = 0.0; // Y軸を中心に回転する回転角を管理する変数宣言と初期化
float rz = 0.0; // Z軸を中心に回転する回転角を管理する変数宣言と初期化

void setup() {
  size(800, 800, P3D); // キャンバスサイズとレンダラーの設定
  noStroke(); // 枠線を描画しなし
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
  fill(255, 0, 0); // 塗りつぶしの色を設定
  vertex(-1,  1,  1);
  vertex( 1,  1,  1);
  vertex( 1, -1,  1);
  vertex(-1, -1,  1);

  fill(0, 255, 0);
  vertex( 1,  1,  1);
  vertex( 1,  1, -1);
  vertex( 1, -1, -1);
  vertex( 1, -1,  1);
  
  fill(0, 0, 255);
  vertex( 1,  1, -1);
  vertex(-1,  1, -1);
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);

  fill(255, 255, 0);
  vertex(-1,  1, -1);
  vertex(-1,  1,  1);
  vertex(-1, -1,  1);
  vertex(-1, -1, -1);

  fill(0, 255, 255);
  vertex(-1,  1, -1);
  vertex( 1,  1, -1);
  vertex( 1,  1,  1);
  vertex(-1,  1,  1);

  fill(255, 0, 255);
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);
  vertex( 1, -1,  1);
  vertex(-1, -1,  1);
  
  endShape();
}
