float angle = 0.0; // 回転角angleをfloat型で宣言と初期化
int lightFlag = 0; // 指向光の管理用変数lightFlagの宣言と初期化
float nx = 0.0, ny = 0.0, nz = -1.0; // 指向光の照射方向を管理するnx,ny,nzの宣言と初期化

void setup() {
  size(800, 800, P3D); // キャンバスサイズ(800,800)，レンダラーP3Dに設定
  frameRate(30); // フレームレートを30に設定
  noStroke(); // 枠線を描画しない
  textSize(32); // フォントサイズを32に設定
}

void draw() {
  background(204); //背景色を設定
  
  // キャンバス内にnxとnyの値をテキストとして描画
  // nf(nx, 1, 1)について
  // 第一引数：表示する値もしくは変数
  // 第二引数：整数部分の表示桁数
  // 第三引数：小数部分の表示桁数
  // この場合，nxの値を整数1桁，小数1桁で表示するという意味
  text("nx = " + nf(nx, 1, 1), 10, 80);
  text("ny = " + nf(ny, 1, 1), 10, 120);
  
  if(lightFlag == 1) { // lightFlagが1の場合
    text("light color = Red", 10, 40); // キャンバス内にテキストを描画
    directionalLight(255, 0, 0, nx, ny, nz); // 指向光の色を赤に設定
  }
  else if (lightFlag == 2) { // lightFlagが2の場合
    text("light color = Green", 10, 40); // キャンバス内にテキストを描画
    directionalLight(0, 255, 0, nx, ny, nz); // 指向光の色を緑に設定
  }
  else if (lightFlag == 3) { // lightFlagが3の場合
    text("light color = Blue", 10, 40); // キャンバス何にテキストを描画
    directionalLight(0, 0, 255, nx, ny, nz); // 指向光の色を青に設定
  }
  else { // それ以外
    text("light color = Black", 10, 40);
    directionalLight(0, 0, 0, nx, ny, nz);
  }
  

  
  translate(width/2, height/2);
  rotateX(angle);
  rotateY(angle * 0.8);
  box(width/3);
  
  angle += 0.05;
}

void keyPressed() {
  switch(key) {
    case 'r':
    lightFlag = 1;
    break;
    
    case 'g':
    lightFlag = 2;
    break;
    
    case 'b':
    lightFlag = 3;
    break;
    
    case '0':
    lightFlag = 0;
    break;
  }
  
  if( keyCode == UP){
    ny -= 0.1;
  } else if( keyCode == DOWN) {
    ny += 0.1;
  } else if( keyCode == LEFT) {
    nx -= 0.1;
  } else if( keyCode == RIGHT) {
    nx += 0.1;
  }
}
