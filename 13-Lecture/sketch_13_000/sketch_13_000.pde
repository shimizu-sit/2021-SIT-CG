PVector force; // 力（ベクトル）
PVector acceleration; // 加速度（ベクトル）
PVector velocity; // 速度（ベクトル）
PVector location; // 位置（ベクトル）
PVector gravity; // 重力（ベクトル）
float mass; // 質量（スカラー）
float friction; // 摩擦力（スカラー）

void setup() {
  size(800, 600, P2D); // キャンバスサイズとレンダラの設定
  frameRate(60); // フレームレートの設定
  noStroke(); // 枠線を描画しない設定
  location = new PVector(0.0, 0.0); // 位置の初期化
  velocity = new PVector(0.0, 0.0); // 速度の初期化
  acceleration = new PVector(0.0, 0.0); // 加速度の初期化
  force = new PVector(4.0, 3.0); // 力を(4, 3)に設定
  mass = 1.0; // 質量を1.0に設定
}
