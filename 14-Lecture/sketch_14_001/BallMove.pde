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
