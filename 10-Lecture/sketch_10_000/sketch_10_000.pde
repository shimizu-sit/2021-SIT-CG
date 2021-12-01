boolean shininessFlag = false; // shininessのオンオフ
float angle = 0.0; // 回転角angleの宣言と初期化

void setup() {
  size(400, 400, P3D); // キャンバスサイズとレンダラーを設定
  frameRate(30);  // フレームレートの設定
  noStroke(); // 枠線を描画しない設定
}

void draw() {
  background(0); // 背景色の設定
  ambientLight(10, 10, 10); // 環境光の設定

  translate(width/2, height/2, 0); // 原点を移動
  lightSpecular(255, 255, 255); // 光源反射強度の設定
  directionalLight(255, 255, 255, -1, 1, -1); // 指向光の設定
  specular(200, 200, 200); // 物体反射強度の設定

  if (shininessFlag == true) { // shininessFlagがtureの場合
    shininess(1.0); // 光沢の値を小さく設定
  } else { // それ以外（falaseの場合）
    shininess(100.0); // 光沢の値を大きく設定
  }

  rotateX(angle); // 回転角の値で回転
  rotateY(angle * 0.8); // 回転角の値で回転
  sphere(width/4); //  球体の描画

  angle += 0.05; // 回転角angleに0.05を足す
}

// マウスが押されたら実行
void mousePressed() {
  if (shininessFlag == true) { // trueの場合
    shininessFlag = false; // shininessFlagにfalseを代入
  } else { // それ以外（falseの場合）
    shininessFlag = true; // shininessFlagにtrueを代入
  }
}
