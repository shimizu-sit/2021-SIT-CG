float angle = 0.0; // cubeの回転角angleの変数宣言と初期化
int lightFlag = 0; // ambientLightのFlagの宣言と初期化

void setup() {
  size(800, 800, P3D); // キャンバスサイズを(800, 800)，レンダラーをP3Dに設定
  frameRate(30); // フレームレートを30に設定
  noStroke(); // 枠線を描画しない
  textSize(32); // フォントサイズを32に設定
}

void draw() {
  background(204); // 背景色を設定
  
  if(lightFlag == 1) { // lightFlagが1の場合
    text("light color = Red", 10, 40); // キャンバス内にテキストを描画
    ambientLight(255, 0, 0); // 環境光の色を赤に設定
  }
  else if (lightFlag == 2) { // lightFlagが2の場合
    text("light color = Green", 10, 40); // キャンバス内にテキストを描画
    ambientLight(0, 255, 0); // 環境光の色を緑に設定
  }
  else if (lightFlag == 3) { // lightFlagが3の場合
    text("light color = Blue", 10, 40); // キャンバス内にテキストを描画
    ambientLight(0, 0, 255); // 環境光の色を青に設定
  }
  else { // それ以外の場合
    text("light color = Black", 10, 40); // キャンバス内にテキストを描画
    ambientLight(0, 0, 0); // 環境光の色を黒に設定
  } 
  
  translate(width/2, height/2); // 原点をキャンバスの中心に移動
  rotateX(angle); // X軸を中心にangleの値で回転
  rotateY(angle * 0.8); // Y軸を中心にangle x 0.8の値で回転
  box(width/3); // 立方体の描画
  
  angle += 0.05; // 回転角angleに0.05を追加
}

void keyPressed() { // キー入力があったら実行
  switch(key) { // 入力されたキーによって処理を分岐させる
    case 'r': // rが入力された場合
    lightFlag = 1; // lightFlagに1を代入
    break; // switch文から抜ける
    
    case 'g': // gが入力された場合
    lightFlag = 2; // lightFlagに2を代入
    break; // switch文から抜ける
    
    case 'b': // bが入力された場合
    lightFlag = 3; // lightFlagに3を代入
    break; // switch文から抜ける
    
   default: // 入力されたキーがrでもgでもbでもない場合
   lightFlag = 0; // lightFlagに0を代入
   break; // switch文から抜ける
  }
}
