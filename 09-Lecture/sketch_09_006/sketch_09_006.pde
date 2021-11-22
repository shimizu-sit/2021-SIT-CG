boolean flag = false; // 反射強度のオンオフを切り替えるフラグ
float angle = 0.0; // 回転角angleの宣言と初期化

void setup() {
  size(400, 400, P3D); // キャンバスサイズの設定とレンダラーの設定
  frameRate(30); // フレームレートの設定
  noStroke(); // 枠線を描画しない設定
}

void draw() {
  background(204); // 背景色を設定
  ambientLight(10, 10, 10); // 環境光の設定
  
  translate(width/2, height/2, 0); // 原点をキャンバスの中心に移動
  lightSpecular(255, 255, 255); // 光源反射強度の設定
  directionalLight(255, 255, 255, -1, 1, -1); // 指向光の設定
  
  if(flag == true) { // flagの値がtrueの場合
    specular(255, 255, 255); // 物体反射強度を最大に設定
  } else { // それ以外（falseの場合）
    specular(10, 10, 10); // 物体反射強度を小さく設定
  }
  
  rotateX(angle); // X軸を中心に回転角angleの値で回転
  rotateY(angle * 0.8); // Y軸を中心に回転角angle x 0.8で回転
  box(width/4); // 直方体を描画
  
  angle += 0.05; // 回転角に0.05を追加
}

void mousePressed() { // マウスが押されたら実行
  if(flag == true) { // flagの値がtrueの場合
    flag = false; // flagにfalseを代入
  } else { // それ以外（falseの場合）
    flag = true; // flagにtrueを代入
  }
}
