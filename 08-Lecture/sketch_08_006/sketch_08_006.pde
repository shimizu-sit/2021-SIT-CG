int ures = 5; // 縦方向の分割数を格納するuresの宣言と初期化
int vres = 5; // 横方向の分割数を格納するvresの宣言と初期化

void setup() {
  size(400, 400, P3D); // キャンバスサイズとレンダラーをP3Dに設定
  noFill(); // 塗りつぶしをしない設定
}

void draw() {
  background(204); // 背景色を設定
  
  // 原点をキャンバスの中心に設定
  // ここで注意点として，３次元を扱っているので引数が3つになっています
  // tanslate(x座標, y座標, z座標);
  translate(width/2, height/2, 0);

  sphereDetail(ures, vres); // 球の縦方向と横方向の分割数を設定
  sphere(width/3); // 球(sphere)を描画
}

void keyPressed() { // キーボード入力があった場合実行
  if (keyCode == UP) ures += 1; // 上キーが入力されたらuresに1を追加
  if (keyCode == DOWN) ures -= 1; // 下キーが入力されたらuresから1を引く
  if (keyCode == LEFT) vres += 1; // 左キーが入力されたらvresに1を追加
  if (keyCode == RIGHT) vres -= 1; // 右キーが入力されたらvresから1を引く
}
