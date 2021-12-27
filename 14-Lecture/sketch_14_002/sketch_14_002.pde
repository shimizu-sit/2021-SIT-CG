int NUM = 100; // 生成するボールの数
BallMove[] ballmove = new BallMove[NUM]; // NUM個のオブジェクトの準備

void setup() {
  size(600, 400, P2D); // キャンバスサイズとレンダラを指定
  frameRate(60); // フレームレートを60に設定
  noStroke(); // 枠線を描画しない設定
  
  for(int i = 0; i < NUM; i++) {
    ballmove[i] = new BallMove(); // インスタンスを生成
    ballmove[i].location.set(width/2.0, height/2.0); // 位置の初期化
    float angle = random(PI * 2.0); // 角度を乱数で初期化
    float length = random(20); // 長さを乱数で初期化
    ballmove[i].acceleration.set(cos(angle) * length, sin(angle) * length); // 加速度の初期化
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
    float angle = random(PI * 2.0); // 角度を乱数で初期化
    float length = random(20); // 長さを乱数で初期化
    PVector force = new PVector(cos(angle) * length, sin(angle) * length); // 力をangleとlenthで設定
    ballmove[i].addForce(force); // addForce関数を呼び出す
  }
}
