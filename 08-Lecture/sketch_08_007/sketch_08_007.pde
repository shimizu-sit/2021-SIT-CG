float rx = 0.0; // x軸方向の回転を格納するrxの宣言と初期化
float ry = 0.0; // y軸方向の回転を格納するryの宣言と初期化

void setup() {
  size(400, 300, P3D); // キャンバスサイズとレンダラーをP3Dに設定
  noFill(); // 塗りつぶしをしない設定
}

void draw() {
  background(204); // 背景色の設定
  // 原点をキャンバスの中心に設定
  // ここで注意点として，３次元を扱っているので引数が3つになっています
  // tanslate(x座標, y座標, z座標);
  translate(width/2, height/2, 0);
  rotateX(rx); // X軸を中心にrx分回転
  rotateY(ry); // Y軸を中心にry分回転

  pushMatrix(); // 現在の座標を保存
  translate(-100, 0, 0); // 原点を移動
  box(40, 120, 60); // 直方体の描画
  popMatrix(); // 保存した座標を戻す

  pushMatrix(); // 現在の座標を保存
  translate(100, 0, 0); // 原点を移動
  sphere(60); // 球を描画
  popMatrix(); // 保存した座標を戻す
}

void keyPressed() { // キーボード入力があった場合実行
  if (keyCode == UP) rx += 0.1; // 上キーが入力されたらrxに0.1を追加
  if (keyCode == DOWN) rx -= 0.1; // 下キーが入力されたらrxから0.1を引く
  if (keyCode == LEFT) ry -= 0.1; // 左キーが入力されたらryから0.1を引く
  if (keyCode == RIGHT) ry += 0.1; // 右キーが入力されたらryに0.1を追加
}
