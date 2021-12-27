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

// コンストラクタ
class BallMove {
  PVector location; // 位置
  PVector velocity; // 速度
  PVector acceleration; // 加速度
  PVector gravity; // 重力
  float mass; // 質量
  float friction; // 摩擦力
  float radius; // 半径

  // コンストラクタ
  BallMove() {
    radius = 4.0; // 半径を4.0に設定
    mass = 1.0; // 質量を1.0に設定
    friction = 0.01; // 摩擦力を0.01に設定
    location = new PVector(0.0, 0.0); // 位置の初期化
    velocity = new PVector(0.0, 0.0); // 速度の初期化
    acceleration = new PVector(0.0, 0.0); // 加速度の初期化
    gravity = new PVector(0.0, 0.0); // 重力の初期化
  }

  // ボールのプロパティを更新する関数
  void BallMoveUpdate() {
    acceleration.add(gravity);
    velocity.add(acceleration);
    velocity.mult(1.0 - friction);
    location.add(velocity);
    acceleration.set(0, 0);
  }

  // ボールを描画する関数
  void BallMoveDraw() {
    ellipse(location.x, location.y, mass * radius * 2, mass * radius * 2);
  }

  // 壁の当たり判定をする関数
  void bounceOffWalls() {
    if ( location.x > width) {
      location.x = width;
      velocity.x *= -1;
    }

    if ( location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }

    if ( location.y > height) {
      location.y = height;
      velocity.y *= -1;
    }

    if ( location.y < 0) {
      location.y = 0;
      velocity.y *= -1;
    }
  }
}
