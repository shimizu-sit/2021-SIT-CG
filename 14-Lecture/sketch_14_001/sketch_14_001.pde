int NUM = 100; // 生成するボールの数
BallMove[] ballmove = new BallMove[NUM]; // NUM個のオブジェクトの準備

void setup() {
  size(600, 400, P2D); // キャンバスサイズとレンダラを指定
  frameRate(60); // フレームレートを60に設定
  noStroke(); // 枠線を描画しない設定
  
  for(int i = 0; i < NUM; i++) {
    ballmove[i] = new BallMove(); // インスタンスを生成
    ballmove[i].location.set(width/2.0, height/2.0); // 位置の初期化
    ballmove[i].acceleration.set(random(-20, 20), random(-20, 20)); // 加速度の初期化
    ballmove[i].friction = 0.01; // 摩擦力の初期化
    ballmove[i].mass = random(1.0, 5.0); // 質量の初期化
  }
}

void draw() {
  background(0); // 背景色の設定
  fill(255); // 塗りつぶし色の設定
  for (int i = 0; i < NUM; i++) {
    ballmove[i].BallMoveUpdate(); // ボールの移動処理をする関数を呼び出す
    ballmove[i].BallMoveDraw(); // ボールを描画する関数を呼び出す
    ballmove[i].bounceOffWalls(); // 壁の跳ね返り処理をする関数を呼び出す
  }
}

void mousePressed() { // マウスボタンが押されたら処理を実行
  for (int i = 0; i < NUM; i++) {
    ballmove[i].gravity.add(0.0, 1.0); // 重力を追加
  }
}
