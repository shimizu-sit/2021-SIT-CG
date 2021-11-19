void setup() {
  size(400, 400, P3D); // 3Dを描画するために"P3D"を設定
  frameRate(60); // フレームレートを60に設定
  noStroke(); // 枠線の描画をしない
  rectMode(CENTER); // 長方形の描画方法をCENTERに設定
}
void draw() {
  background(0); // 背景を黒に設定
  translate(width/2, height/2); // 原点をキャンバスの中心に移動
  rotateX(mouseX); // マウスのX座標の値で回転
  rotateY(mouseY); // マウスのY座標の値で回転
  rotateZ(mouseX + mouseY); // マウスのX座標＋Y座標の値で回転
  rect(0, 0, width/2, height/2); // 長方形を描画
}
