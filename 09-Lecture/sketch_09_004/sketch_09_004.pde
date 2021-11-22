int object = 0; // 描画するものを管理する変数（0=box, 1=sphere)
float angle = 0.0; // 回転角angleをfloat型で宣言と初期化
int lightFlag = 0; // 点光源の管理用変数lightFlagの宣言と初期化
float x = width/2, y = height/2, z = 10; // 点光源の位置を管理するx,y,zの宣言と初期化

void setup() {
  size(800, 800, P3D); // キャンバスサイズ(800,800)，レンダラーP3Dに設定
  frameRate(30); // フレームレートを30に設定
  noStroke(); // 枠線を描画しない
  textSize(32); // フォントサイズを32に設定
}

void draw() {
  background(204); //背景色を設定
  
  // 点光源の位置を表示（予定）
  
  if(lightFlag == 1) { // lightFlagが1の場合
    text("light color = Red", 10, 40); // キャンバス内にテキストを描画
    pointLight(255, 0, 0, x, y, z); // 指向光の色を赤に設定
  }
  else if (lightFlag == 2) { // lightFlagが2の場合
    text("light color = Green", 10, 40); // キャンバス内にテキストを描画
    pointLight(0, 255, 0, x, y, z); // 指向光の色を緑に設定
  }
  else if (lightFlag == 3) { // lightFlagが3の場合
    text("light color = Blue", 10, 40); // キャンバス内にテキストを描画
    pointLight(0, 0, 255, x, y, z); // 指向光の色を青に設定
  }
  else { // それ以外
    text("light color = Black", 10, 40); // キャンバス内にテキストを描画
    pointLight(0, 0, 0, x, y, z); // 指向光の色を黒に設定
  }
  
  translate(width/2, height/2); // 原点をキャンバスの中心へ移動
  rotateX(angle); // X軸を中心に回転角angleの値で回転
  rotateY(angle * 0.8); // Y軸を中心に回転角angle x 0.8の値で回転
  if(object == 0) box(width/3); // Bが入力されたら立方体を描画
  if(object == 1) sphere(150); // Sが入力されたら球体を描画
  angle += 0.05; // 回転角angleに0.05を追加
}

void keyPressed() { // キー入力されたら実行
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
    
   case '0' : // 0が入力された場合
   lightFlag = 0; // lightFlagに0を代入
   break; // switch文から抜ける
  }
 
  if( key == 'o') { // oキーが入力された場合
    if (object == 0) { // objectの値が0の場合
      object = 1; // objectに1を代入
    } else if (object == 1) { // objectの値が1の場合
      object = 0; // objectに0を代入
    }
  }
  
  if( keyCode == UP){ // 上キーが入力された場合
    x = width/2; y = 0; // 点光源の位置を上に設定
  } else if( keyCode == DOWN) { // 下キーが入力された場合
    x = width/2; y = height; // 点光源の位置を下に設定
  } else if( keyCode == LEFT) { // 左キーが入力された場合
    x = 0; y = height/2; // 点光源の位置を左に設定
  } else if( keyCode == RIGHT) { // 右キーが入力された場合
    x = width; y = height/2; // 点光源の位置を右に設定
  }
}
